"""新协议下的 PMAC SSH+gpascii 客户端（读 + 写）。

支持的命令族（参考 tests/控制协议.md）:
  - 状态读: Motor[n].ActPos / ActVel / AmpEna / AmpFault / PlusLimit / MinusLimit
  - EtherCAT 使能: ECAT[0].enable
  - 电机使能/去使能: #nj/ / #nk
  - 绝对/相对运动: #nj=xx / #nj:xx

只支持单机 192.168.0.200。要换地址临时改 HOST 即可。
"""

import asyncio
import re

import asyncssh


HOST, PORT, USER, PASSWORD = "192.168.0.200", 22, "root", "deltatau"

_SHELL_PROMPT = ":/opt/ppmac# "
_LOGIN_BANNER = "STDIN Open for ASCII Input\r\n"
_ACK = "\x06\r\n"
_ACK2 = _ACK * 2

_KV = re.compile(r"^\s*([A-Za-z][\w\[\]\.]*)\s*=\s*(.+?)\s*$")
_ERR = re.compile(r"error\s+#(\d+)\s*:\s*(.+)", re.IGNORECASE)

STATUS_FIELDS = ("ActPos", "ActVel", "AmpEna", "AmpFault", "SoftLimit")


def status_vars(motor: int) -> list[str]:
    return [f"Motor[{motor}].{f}" for f in STATUS_FIELDS]


class PmacError(RuntimeError):
    """gpascii 返回的 error #NN 被解析成该异常。"""


# 兼容老 SSH 服务端的主机密钥算法集合（CK3M 上 Debian 自带 OpenSSH 比较老）。
_HOST_KEY_ALGS = [
    "ssh-ed25519", "ssh-rsa",
    "rsa-sha2-256", "rsa-sha2-512",
    "ecdsa-sha2-nistp256", "ecdsa-sha2-nistp384", "ecdsa-sha2-nistp521",
]


class PMAC:
    def __init__(self, host=HOST, port=PORT, user=USER, password=PASSWORD,
                 connect_timeout=10.0, cmd_timeout=1.5):
        self._cfg = dict(host=host, port=port, username=user, password=password)
        self._connect_timeout = connect_timeout
        self._cmd_timeout = cmd_timeout
        self._conn = self._w = self._r = None
        self._lock = asyncio.Lock()

    @property
    def is_connected(self) -> bool:
        return (self._conn is not None and not self._conn.is_closed()
                and self._w is not None and not self._w.is_closing())

    async def __aenter__(self):
        await self.connect()
        return self

    async def __aexit__(self, *exc):
        await self.close()

    async def connect(self):
        # 1) SSH 握手 —— 让 asyncssh 自己管超时，并对老服务端宽松一些：
        #    client_keys=() 跳过本机公钥，免得卡在公钥协商
        #    server_host_key_algs / kex_algs / encryption_algs 加入旧算法
        self._conn = await asyncssh.connect(
            known_hosts=None,
            client_keys=(),
            preferred_auth=("password", "keyboard-interactive"),
            server_host_key_algs=_HOST_KEY_ALGS,
            connect_timeout=self._connect_timeout,
            login_timeout=self._connect_timeout,
            **self._cfg,
        )
        # 2) 进 vt100 shell
        self._w, self._r, _ = await self._conn.open_session(term_type="vt100")
        await asyncio.wait_for(self._r.readuntil(_SHELL_PROMPT), self._connect_timeout)
        # 3) 启 gpascii，等到登录 banner
        self._w.write("gpascii -2 -f\r\n")
        await self._w.drain()
        banner = await asyncio.wait_for(self._r.readuntil(_ACK), self._connect_timeout)
        if _LOGIN_BANNER not in banner:
            raise ConnectionError(f"gpascii banner mismatch: {banner!r}")

    async def close(self):
        if self._w and not self._w.is_closing():
            self._w.close()
        if self._conn and not self._conn.is_closed():
            self._conn.close()
            await self._conn.wait_closed()
        self._w = self._r = self._conn = None

    async def exec_cmd(self, cmd: str) -> list[str]:
        """发一条 gpascii 命令，返回去掉命令回显与 ACK 的响应行。

        遇到 `error #NN` 抛 PmacError。
        """
        if not self.is_connected:
            raise ConnectionError("PMAC not connected")
        async with self._lock:
            self._w.write(cmd + "\r\n")
            await self._w.drain()
            raw = await asyncio.wait_for(self._r.readuntil(_ACK2), self._cmd_timeout)
        lines = [ln for ln in raw.replace(_ACK2, "").split("\r\n")
                 if ln and ln.strip() and ln != cmd]
        for ln in lines:
            if m := _ERR.search(ln):
                raise PmacError(f"#{m.group(1)} {m.group(2).strip()} (cmd={cmd!r})")
        return lines

    async def read_vars(self, names: list[str]) -> dict[str, float | None]:
        """批量读取变量，返回 {name: value|None}。"""
        lines = await self.exec_cmd(" ".join(names))
        parsed: dict[str, float] = {}
        for ln in lines:
            if m := _KV.match(ln):
                try:
                    parsed[m.group(1)] = float(m.group(2))
                except ValueError:
                    pass
        return {n: parsed.get(n) for n in names}

    async def motor_status(self, motor: int) -> dict[str, float | None]:
        """返回 {ActPos, ActVel, AmpEna, AmpFault, PlusLimit, MinusLimit}。"""
        raw = await self.read_vars(status_vars(motor))
        return {f: raw[f"Motor[{motor}].{f}"] for f in STATUS_FIELDS}

    async def ecat_enable(self) -> list[str]:
        """ECAT[0].enable —— 启动 EtherCAT 总线。"""
        return await self.exec_cmd("ECAT[0].enable")

    async def motor_enable(self, motor: int) -> list[str]:
        return await self.exec_cmd(f"#{motor}j/")

    async def motor_disable(self, motor: int) -> list[str]:
        return await self.exec_cmd(f"#{motor}k")

    async def motor_move_abs(self, motor: int, pos: float) -> list[str]:
        # 注意：用 **大写 J**。
        # 这个固件里小写 #nj=value 是"以速度 value 朝正方向 jog"（持续运动到撞限位为止），
        # 不是"jog 到位置 value"。大写 #nJ=value 才是"jog 到绝对位置 value"。
        # 老代码 src/server/pmac_tcp_server.py:147 一直用大写 J，本驱动跟齐。
        return await self.exec_cmd(f"#{motor}J={pos}")

    async def motor_move_rel(self, motor: int, delta: float) -> list[str]:
        return await self.exec_cmd(f"#{motor}j:{delta}")
