"""界面底部共用的「调试助手」对话框。

- 接 OpenAI 兼容端点（new-api 代理），流式回答；模型下拉可选（默认 gpt-5.4）。
- 回答时优先读本地《使用文档.md》《人为规则.md》，并把当前 8 电机实时状态 + 最近日志
  作为上下文；文档里找不到依据时用模型自身知识回答，并强制前缀「模型推测：」。
- 无新增第三方依赖：用标准库 urllib 在线程池里读 SSE，再经 call_soon_threadsafe 回主循环。
"""
import asyncio
import json
import os
import ssl
import urllib.request
from pathlib import Path

from PySide6.QtCore import Qt, QTimer
from PySide6.QtGui import QTextCursor
from PySide6.QtWidgets import (
    QWidget, QLabel, QPushButton, QComboBox, QLineEdit, QTextEdit,
    QVBoxLayout, QHBoxLayout, QFrame,
)
from qasync import asyncSlot

import motors as M

_HERE = Path(__file__).resolve().parent
_CFG_PATH = _HERE / "chat_config.json"
_SSL = ssl.create_default_context()
# 有些代理前面挂了 WAF/Cloudflare，会拦默认的 python-urllib UA（返回 403）；用普通 UA。
_UA = "Mozilla/5.0 (X11; Linux x86_64) PMAC-DebugAssistant/1.0"

# 默认连接信息。注意：【不在源码里写 API key】（避免泄漏进版本库）。
# key 从本机的 chat_config.json（已 gitignore）或环境变量 MUSTXIN_API_KEY 读取。
CHAT_DEFAULTS = {
    "url": "https://api.must-xin.com",
    "key": "",
    "model": "gpt-5.4",
}
# 拉不到 /v1/models 时下拉用的兜底列表
FALLBACK_MODELS = ["gpt-5.4", "gpt-5.4-mini", "gpt-5.5",
                   "xin.deepseek-v4-pro", "xin.glm-5.1", "xin.kimi-k2.5"]

# 语义操作 → 电机『绝对移动(相对中心)』目标值。可在 assistant_ops.json 覆盖（实机调试时改真实值）。
_OPS_PATH = _HERE / "assistant_ops.json"
DEFAULT_OPS = {
    "shutter":        {"motor": 6, "open": 8.0,  "closed": 0.0},
    "hartmann_left":  {"motor": 7, "open": 90.0, "closed": 0.0},
    "hartmann_right": {"motor": 8, "open": 90.0, "closed": 0.0},
    "cameras":        {"motor": 5, "red": 0.0,   "red_blue": 8.0},
}


def _load_ops() -> dict:
    ops = {k: dict(v) for k, v in DEFAULT_OPS.items()}
    try:
        disk = json.loads(_OPS_PATH.read_text(encoding="utf-8"))
        if isinstance(disk, dict):
            for k in ops:
                if isinstance(disk.get(k), dict):
                    ops[k].update(disk[k])
    except (OSError, json.JSONDecodeError):
        pass
    return ops


# 给模型的工具（function-calling）。模型只表达语义意图，具体移动量由软件按 ops 配置决定。
TOOLS = [
    {"type": "function", "function": {
        "name": "set_shutter",
        "description": "开关机械快门（电机6）。open=让光通过；closed=挡住主光路。",
        "parameters": {"type": "object", "required": ["state"], "properties": {
            "state": {"type": "string", "enum": ["open", "closed"]}}}}},
    {"type": "function", "function": {
        "name": "set_hartmann_door",
        "description": "开关哈特曼门。电机7=左门、电机8=右门；可单开一扇或两扇都开。",
        "parameters": {"type": "object", "required": ["side", "state"], "properties": {
            "side": {"type": "string", "enum": ["left", "right", "both"]},
            "state": {"type": "string", "enum": ["open", "closed"]}}}}},
    {"type": "function", "function": {
        "name": "set_cameras",
        "description": "切换拍摄通道（靠光栅切换装置电机5）。red=只拍红色相机；red_blue=红蓝相机都拍。",
        "parameters": {"type": "object", "required": ["mode"], "properties": {
            "mode": {"type": "string", "enum": ["red", "red_blue"]}}}}},
    {"type": "function", "function": {
        "name": "focus",
        "description": "调焦移动。电机1=调焦结构1 x轴、2=结构1 y轴、3=结构2 x轴、4=结构2 y轴。",
        "parameters": {"type": "object", "required": ["motor", "target"], "properties": {
            "motor": {"type": "integer", "enum": [1, 2, 3, 4]},
            "target": {"type": "number", "description": "相对中心目标值（同绝对移动框里填的值）"}}}}},
    {"type": "function", "function": {
        "name": "move_motor",
        "description": "通用：把某电机绝对移动到指定相对中心目标值。仅当上面专用工具都不合适时才用。",
        "parameters": {"type": "object", "required": ["motor", "target"], "properties": {
            "motor": {"type": "integer", "minimum": 1, "maximum": 8},
            "target": {"type": "number"}}}}},
]

_SYS_TMPL = """\
你是「光谱仪运动机构控制软件」的调试助手，帮助操作人员使用和排查这个 PMAC/CK3M 八电机控制软件。

【回答规则，务必遵守】
1. 优先依据下面《使用文档》和《人为规则》的内容回答。凡是能在其中找到依据的，直接据此回答，不要加「模型推测」。
2. 如果《使用文档》和《人为规则》里都没有相关依据，你可以用自己的知识回答，但【必须】在回答最前面加上前缀「模型推测：」，明确提示用户这不是来自官方文档、可能不准确。
3. 遇到「为什么电机不动 / 某个状态值或报错是什么意思」这类问题，结合下面的【当前电机状态】和【最近日志】具体分析。
4. 用中文，简洁、面向操作人员；需要动手时给出明确步骤。

【你可以执行设备操作】
- 用户明确要求执行动作时（如"快门打开/关上""哈特曼左门打开""只拍红色相机/拍红蓝相机""调焦电机1到3""电机5移到2"），调用对应工具执行；具体移动量由软件按现场配置决定，你不必关心数值。
- 软件自带安全闸：范围内直接下发（含自动使能），超范围会弹窗拒绝——你无需自己判断范围，也【不要】在工具之外用文字编造"已移动/已打开"。
- 纯咨询、问问题时正常用文字回答，不要调用工具。

==== 使用文档.md ====
{usage}

==== 人为规则.md ====
{rules}

==== 当前电机状态（采自最近一次轮询；连接后每 0.5s 刷新）====
{status}

==== 最近日志（旧→新）====
{logs}
"""


def _load_cfg() -> dict:
    cfg = dict(CHAT_DEFAULTS)
    try:
        disk = json.loads(_CFG_PATH.read_text(encoding="utf-8"))
        if isinstance(disk, dict):
            for k in ("url", "key", "model"):
                if disk.get(k):
                    cfg[k] = str(disk[k])
    except (OSError, json.JSONDecodeError):
        pass
    if not cfg.get("key"):                       # 源码不带 key，退回环境变量
        cfg["key"] = os.environ.get("MUSTXIN_API_KEY", "")
    return cfg


def _save_cfg(cfg: dict) -> None:
    try:
        _CFG_PATH.write_text(
            json.dumps({k: cfg.get(k, "") for k in ("url", "key", "model")},
                       ensure_ascii=False, indent=2),
            encoding="utf-8")
    except OSError:
        pass


def _list_models_blocking(url: str, key: str, timeout: float = 15.0):
    req = urllib.request.Request(
        url.rstrip("/") + "/v1/models",
        headers={"Authorization": f"Bearer {key}", "User-Agent": _UA})
    with urllib.request.urlopen(req, timeout=timeout, context=_SSL) as resp:
        obj = json.loads(resp.read().decode("utf-8", "replace"))
    return [m["id"] for m in obj.get("data", []) if isinstance(m, dict) and m.get("id")]


def _stream_blocking(url, key, payload, q, loop, timeout):
    """线程里阻塞读 SSE，逐条 call_soon_threadsafe 丢回主循环的队列。"""
    try:
        data = json.dumps(payload).encode("utf-8")
        req = urllib.request.Request(
            url.rstrip("/") + "/v1/chat/completions", data=data, method="POST",
            headers={"Authorization": f"Bearer {key}",
                     "Content-Type": "application/json",
                     "Accept": "text/event-stream",
                     "User-Agent": _UA})
        with urllib.request.urlopen(req, timeout=timeout, context=_SSL) as resp:
            for raw in resp:
                line = raw.decode("utf-8", "replace").strip()
                if not line or not line.startswith("data:"):
                    continue
                body = line[5:].strip()
                if body == "[DONE]":
                    break
                loop.call_soon_threadsafe(q.put_nowait, ("data", body))
        loop.call_soon_threadsafe(q.put_nowait, ("done", None))
    except Exception as e:                       # 网络/HTTP/SSL/解析错误
        loop.call_soon_threadsafe(q.put_nowait, ("error", e))


async def stream_chat(url, key, model, messages, on_delta, tools=None, timeout: float = 120.0):
    """流式聊天。on_delta(piece) 在主循环里被调用以增量更新界面。
    返回 (完整文本, tool_calls)；tool_calls=[{"name":..,"args":{..}}]。"""
    loop = asyncio.get_running_loop()
    q: asyncio.Queue = asyncio.Queue()
    payload = {"model": model, "stream": True, "messages": messages, "max_tokens": 4000}
    if tools:
        payload["tools"] = tools
        payload["tool_choice"] = "auto"
    fut = loop.run_in_executor(None, _stream_blocking, url, key, payload, q, loop, timeout)
    full = []
    tacc: dict = {}                                  # index -> {"name","args"}（工具调用分片累积）
    try:
        while True:
            kind, val = await q.get()
            if kind == "done":
                break
            if kind == "error":
                raise val
            try:
                delta = json.loads(val)["choices"][0].get("delta", {})
            except (json.JSONDecodeError, KeyError, IndexError, TypeError):
                continue
            piece = delta.get("content")
            if piece:
                full.append(piece)
                on_delta(piece)
            for t in (delta.get("tool_calls") or []):
                slot = tacc.setdefault(t.get("index", 0), {"name": "", "args": ""})
                fn = t.get("function") or {}
                if fn.get("name"):
                    slot["name"] = fn["name"]
                if fn.get("arguments"):
                    slot["args"] += fn["arguments"]
    finally:
        try:
            await fut
        except Exception:
            pass
    tool_calls = []
    for i in sorted(tacc):
        s = tacc[i]
        if not s["name"]:
            continue
        try:
            a = json.loads(s["args"]) if s["args"].strip() else {}
        except json.JSONDecodeError:
            a = {}
        tool_calls.append({"name": s["name"], "args": a})
    return "".join(full), tool_calls


class ChatAssistant(QWidget):
    """界面最下方的共用调试助手（可折叠）。"""
    def __init__(self, ctrl):
        super().__init__()
        self.ctrl = ctrl
        self.cfg = _load_cfg()
        self._task: "asyncio.Task | None" = None
        self._models_task: "asyncio.Task | None" = None
        self._history: list[dict] = []          # 仅存用户/助手轮，不含 system
        self._build()
        # 异步拉模型列表（无网络/失败则用兜底列表）。必须存引用，否则 fire-and-forget
        # 的 task 会在 await 期间被 GC 掉，列表永远停在兜底值。
        QTimer.singleShot(400, self._kick_load_models)

    def _kick_load_models(self):
        self._models_task = asyncio.ensure_future(self._load_models())

    # ---------------- UI ----------------
    def _build(self):
        outer = QVBoxLayout(self)
        outer.setContentsMargins(0, 0, 0, 0)
        outer.setSpacing(0)

        # 顶栏（始终可见）：折叠开关 + 模型下拉
        bar = QHBoxLayout()
        bar.setContentsMargins(2, 2, 2, 2)
        bar.setSpacing(8)
        self.btn_toggle = QPushButton("🤖 调试助手  ▸")
        self.btn_toggle.setCheckable(True)
        self.btn_toggle.setProperty("kind", "primary")
        self.btn_toggle.setMinimumHeight(30)
        self.btn_toggle.toggled.connect(self._on_toggle)
        self.model_combo = QComboBox()
        self.model_combo.setMinimumWidth(180)
        self.model_combo.addItems(FALLBACK_MODELS)
        self._select_model(self.cfg["model"])
        self.model_combo.currentTextChanged.connect(self._on_model_changed)
        self.hint = QLabel("优先读使用文档/人为规则，文档外回答会标注「模型推测」")
        self.hint.setStyleSheet("color:#8a93a3;")
        bar.addWidget(self.btn_toggle)
        bar.addWidget(QLabel("模型"))
        bar.addWidget(self.model_combo)
        bar.addWidget(self.hint, 1)
        outer.addLayout(bar)

        # 折叠体
        self.body = QFrame()
        self.body.setObjectName("chatBody")
        self.body.setStyleSheet("#chatBody{background:#f7f8fa;border:1px solid #e3e6ec;border-radius:8px;}")
        bl = QVBoxLayout(self.body)
        bl.setContentsMargins(8, 8, 8, 8)
        bl.setSpacing(6)
        self.view = QTextEdit()
        self.view.setReadOnly(True)
        self.view.setFixedHeight(190)
        self.view.setStyleSheet("QTextEdit{background:#ffffff;border:1px solid #e3e6ec;border-radius:6px;}")
        self.view.setPlaceholderText("问点什么吧——例如「电机5为什么不动」「绝对移动框填的是什么值」")
        row = QHBoxLayout()
        row.setSpacing(8)
        self.input = QLineEdit()
        self.input.setMinimumHeight(32)
        self.input.setPlaceholderText("输入问题，回车或点发送…")
        self.input.returnPressed.connect(self._send)
        self.btn_send = QPushButton("发送")
        self.btn_send.setProperty("kind", "primary")
        self.btn_send.setMinimumHeight(32)
        self.btn_send.clicked.connect(self._send)
        self.btn_clear = QPushButton("清空")
        self.btn_clear.setMinimumHeight(32)
        self.btn_clear.clicked.connect(self._clear)
        row.addWidget(self.input, 1)
        row.addWidget(self.btn_send)
        row.addWidget(self.btn_clear)
        bl.addWidget(self.view)
        bl.addLayout(row)
        self.body.setVisible(False)              # 默认折叠，省纵向空间
        outer.addWidget(self.body)

    def _on_toggle(self, on: bool):
        self.body.setVisible(on)
        self.btn_toggle.setText("🤖 调试助手  ▾" if on else "🤖 调试助手  ▸")
        if on:
            self.input.setFocus()

    def _select_model(self, name: str):
        i = self.model_combo.findText(name)
        if i < 0:
            self.model_combo.addItem(name)
            i = self.model_combo.findText(name)
        self.model_combo.setCurrentIndex(max(0, i))

    def _on_model_changed(self, name: str):
        if name:
            self.cfg["model"] = name
            _save_cfg(self.cfg)

    async def _load_models(self):
        loop = asyncio.get_running_loop()
        try:
            ids = await loop.run_in_executor(
                None, _list_models_blocking, self.cfg["url"], self.cfg["key"])
        except Exception:
            return                                # 拉不到就保留兜底列表
        if not ids:
            return
        cur = self.model_combo.currentText()
        self.model_combo.blockSignals(True)
        self.model_combo.clear()
        self.model_combo.addItems(ids)
        self.model_combo.blockSignals(False)
        self._select_model(cur if cur in ids else self.cfg["model"])

    # ---------------- 上下文 ----------------
    def _read_doc(self, name: str) -> str:
        try:
            return (_HERE / name).read_text(encoding="utf-8")
        except OSError:
            return f"（{name} 暂不存在或读不到）"

    def _status_text(self) -> str:
        st = getattr(self.ctrl, "_last_status_all", None) or {}
        if not st:
            return "（当前未连接或尚无轮询数据）"
        out = []
        for m in M.ALL_MOTORS:
            d = st.get(m) or {}
            g = lambda k: ("—" if d.get(k) is None else d.get(k))
            out.append(f"电机{m}({M.MOTOR_DEFS[m]['name']}): ActPos={g('ActPos')} "
                       f"ActVel={g('ActVel')} AmpEna={g('AmpEna')} "
                       f"AmpFault={g('AmpFault')} SoftLimit={g('SoftLimit')}")
        return "\n".join(out)

    def _logs_text(self, n: int = 30) -> str:
        buf = getattr(self.ctrl, "_log_buffer", None) or []
        return "\n".join(buf[-n:]) if buf else "（暂无日志）"

    def _system_prompt(self) -> str:
        return _SYS_TMPL.format(
            usage=self._read_doc("使用文档.md"),
            rules=self._read_doc("人为规则.md"),
            status=self._status_text(),
            logs=self._logs_text())

    # ---------------- 会话视图 ----------------
    def _append_html(self, html: str):
        self.view.moveCursor(QTextCursor.End)
        self.view.insertHtml(html)
        self.view.moveCursor(QTextCursor.End)

    def _append_text(self, text: str):
        self.view.moveCursor(QTextCursor.End)
        self.view.insertPlainText(text)
        self.view.moveCursor(QTextCursor.End)
        self.view.ensureCursorVisible()

    def _render_transcript(self):
        """把已完成的历史用 markdown 渲染（替换流式时的纯文本，去掉 **/### 等标记）。"""
        parts = []
        for msg in self._history:
            who = "你" if msg["role"] == "user" else "助手"
            parts.append(f"**{who}：** {msg['content']}")
        self.view.setMarkdown("\n\n".join(parts))
        self.view.moveCursor(QTextCursor.End)
        self.view.ensureCursorVisible()

    def _clear(self):
        self._history.clear()
        self.view.clear()

    # ---------------- 发送 ----------------
    @asyncSlot()
    async def _send(self):
        q = self.input.text().strip()
        if not q or (self._task and not self._task.done()):
            return
        if not self.cfg.get("key"):
            self._append_html("<span style='color:#c0392b;'>未配置 API key：在本机 "
                              "<code>chat_config.json</code> 的 \"key\" 字段填入，"
                              "或设环境变量 <code>MUSTXIN_API_KEY</code> 后重启。</span><br>")
            return
        self.input.clear()
        self._render_transcript()                # 先渲染好已有历史
        self.view.moveCursor(QTextCursor.End)
        self._append_html(f"<p style='margin:8px 0 2px 0;color:#1f6feb;'><b>你：</b>"
                          f"{_esc(q)}</p><p style='margin:0;color:#202635;'><b>助手：</b></p>")
        self._set_busy(True)
        messages = [{"role": "system", "content": self._system_prompt()}]
        messages += self._history[-6:]
        messages.append({"role": "user", "content": q})
        self._task = asyncio.ensure_future(self._run(q, messages))

    async def _run(self, q: str, messages: list):
        content, tool_calls, err = "", [], None
        try:
            content, tool_calls = await stream_chat(
                self.cfg["url"], self.cfg["key"], self.cfg["model"],
                messages, self._append_text, tools=TOOLS)
        except Exception as e:
            err = e
        # 执行模型请求的设备操作（走与手动按钮同一套安全闸）
        actions = []
        for tc in tool_calls:
            try:
                actions += await self._exec_tool(tc["name"], tc["args"])
            except Exception as e:
                actions.append(f"执行 {tc.get('name')} 出错：{e}")
        if err is not None:
            self._append_html(f"<span style='color:#c0392b;'>[请求失败] {_esc(str(err))}</span>")
        elif actions:
            self._append_html("<br>" + "<br>".join("• " + _esc(x) for x in actions))
        elif not content.strip():
            self._append_text("（无内容返回）")
        self._set_busy(False)
        summary = content.strip()
        if actions:
            summary = (summary + "\n" if summary else "") + "\n".join("• " + x for x in actions)
        if summary:
            self._history.append({"role": "user", "content": q})
            self._history.append({"role": "assistant", "content": summary})
            self._render_transcript()            # 用 markdown 重渲染整段（替换流式纯文本）

    async def _exec_tool(self, name: str, args: dict) -> list:
        """把工具调用映射成『电机 + 绝对移动目标值』，再走 MotorControl.request_abs_move
        （同手动按钮的安全闸：范围内执行、超范围弹窗、未连接提示）。返回每步结果文案。"""
        ops = _load_ops()                        # 每次读盘，改了 assistant_ops.json 即时生效
        args = args or {}
        moves = []                               # (motor, target, label)
        try:
            if name == "set_shutter":
                o = ops["shutter"]; opn = args.get("state") == "open"
                moves.append((o["motor"], o["open"] if opn else o["closed"],
                              f"快门→{'开' if opn else '关'}"))
            elif name == "set_hartmann_door":
                opn = args.get("state") == "open"
                side = args.get("side", "both")
                for s in (["left", "right"] if side == "both" else [side]):
                    o = ops["hartmann_" + s]
                    moves.append((o["motor"], o["open"] if opn else o["closed"],
                                  f"哈特曼{'左' if s == 'left' else '右'}门→{'开' if opn else '关'}"))
            elif name == "set_cameras":
                o = ops["cameras"]; rb = args.get("mode") == "red_blue"
                moves.append((o["motor"], o["red_blue"] if rb else o["red"],
                              f"拍摄{'红+蓝' if rb else '只红'}(光栅电机{o['motor']})"))
            elif name == "focus":
                m = int(args["motor"]); t = float(args["target"])
                moves.append((m, t, f"调焦 电机{m}→{t}"))
            elif name == "move_motor":
                m = int(args["motor"]); t = float(args["target"])
                moves.append((m, t, f"电机{m}→{t}"))
            else:
                return [f"未知操作：{name}"]
        except (KeyError, ValueError, TypeError) as e:
            return [f"操作参数有误（{name}）：{e}"]

        res_map = {"ok": "已执行", "out_of_range": "超出安全范围·已弹窗拒绝",
                   "not_connected": "未连接·请先点「连接」"}
        out = []
        for motor, target, label in moves:
            mc = self.ctrl.controls.get(motor)
            if mc is None:
                out.append(f"{label}：无电机{motor}")
                continue
            r = await mc.request_abs_move(float(target))
            out.append(f"{label}（电机{motor} 移到 {target}）：{res_map.get(r, r)}")
        return out

    def _set_busy(self, busy: bool):
        self.btn_send.setEnabled(not busy)
        self.btn_send.setText("思考中…" if busy else "发送")
        self.input.setEnabled(not busy)


def _esc(s: str) -> str:
    return (s.replace("&", "&amp;").replace("<", "&lt;")
             .replace(">", "&gt;").replace("\n", "<br>"))
