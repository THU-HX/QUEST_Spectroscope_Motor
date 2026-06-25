"""最简「让大模型执行一个操作」demo —— 配套《教程_大模型执行操作最简步骤.md》。

原理：function calling（工具调用）。你给模型一份「工具清单」，模型读懂你的话后
不是自己动手，而是输出「要调哪个工具、参数填什么」；真正动手的是你自己的代码。

用法：
    export MUSTXIN_API_KEY=sk-xxx              # 别把 key 写进代码
    python mini_agent.py "把3号电机移到5"       # 不带参数则运行后再输入
"""
import json
import os
import sys
import urllib.request

URL   = "https://api.must-xin.com"              # OpenAI 兼容端点
KEY   = os.environ.get("MUSTXIN_API_KEY", "")   # 从环境变量读，别硬编码
MODEL = "gpt-5.4"                               # ★必须是支持 function calling 的模型

# ① 工具清单：给模型看的「能力说明书」（名字 + 用途 + 参数 schema）
TOOLS = [{
    "type": "function",
    "function": {
        "name": "move_motor",
        "description": "把指定电机移动到目标位置（相对中心值）",
        "parameters": {
            "type": "object",
            "properties": {
                "motor":  {"type": "integer", "description": "电机号 1-8"},
                "target": {"type": "number",  "description": "目标位置"},
            },
            "required": ["motor", "target"],
        },
    },
}]


# ② 工具真正干活的函数（demo 里只打印；真项目里在这发电机命令）
def move_motor(motor, target):
    print(f"   >>> 【真正执行】电机 {motor} 移动到 {target}")
    return f"motor{motor} moved to {target}"


HANDLERS = {"move_motor": move_motor}           # 名字 → 真函数


def call_model(messages):
    body = json.dumps({"model": MODEL, "messages": messages,
                       "tools": TOOLS, "tool_choice": "auto"}).encode("utf-8")
    req = urllib.request.Request(
        URL.rstrip("/") + "/v1/chat/completions", data=body, method="POST",
        headers={"Authorization": f"Bearer {KEY}",
                 "Content-Type": "application/json",
                 "User-Agent": "Mozilla/5.0"})  # 有些代理会拦默认 python-urllib UA(返回 403)
    with urllib.request.urlopen(req, timeout=60) as r:
        return json.loads(r.read().decode("utf-8"))["choices"][0]["message"]


def main():
    if not KEY:
        print("请先设置环境变量 MUSTXIN_API_KEY")
        return
    user_say = sys.argv[1] if len(sys.argv) > 1 else input("你要做什么？例如「把3号电机移到5」: ")

    # ③ 把「用户的话 + 工具清单」发给模型，模型决定要不要调工具、调哪个
    msg = call_model([{"role": "user", "content": user_say}])

    # ④ 看模型返回的是「工具调用」还是「纯文字」
    calls = msg.get("tool_calls")
    if not calls:
        print("模型没调用工具，只回了文字：", msg.get("content"))
        print("→ 没有任何操作被执行。（你若下的是指令，多半是该模型不支持 function calling）")
        return

    # ⑤ 真正执行：把模型填好的参数交给我们自己的函数
    for c in calls:
        name = c["function"]["name"]
        args = json.loads(c["function"]["arguments"])
        print(f"模型决定调用：{name}({args})")
        result = HANDLERS[name](**args)
        print("   返回：", result)


if __name__ == "__main__":
    main()
