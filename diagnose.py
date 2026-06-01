"""分步诊断 PMAC SSH+gpascii 链路。

针对 cli_motor1.py / gui_motor1.py 启动报 SSH 超时类问题。
逐步打印每一阶段成功 / 失败，输出排查建议。

用法:
    python diagnose.py
    python diagnose.py --host 192.168.0.200
    python diagnose.py --verbose          # 开 asyncssh debug 日志
"""

import argparse
import asyncio
import logging
import sys
import time

import asyncssh

from pmac import HOST, PORT, USER, PASSWORD, _HOST_KEY_ALGS, _SHELL_PROMPT, _LOGIN_BANNER, _ACK


def _ok(msg):  print(f"  \033[32m[ OK ]\033[0m {msg}")
def _bad(msg): print(f"  \033[31m[FAIL]\033[0m {msg}")
def _info(msg): print(f"        {msg}")


async def step_tcp(host, port, timeout=3.0):
    print(f"[1/4] TCP {host}:{port} ...")
    try:
        t0 = time.time()
        reader, writer = await asyncio.wait_for(
            asyncio.open_connection(host, port), timeout)
        writer.close()
        try:
            await writer.wait_closed()
        except Exception:
            pass
        _ok(f"TCP 通  ({(time.time()-t0)*1000:.0f} ms)")
        return True
    except asyncio.TimeoutError:
        _bad(f"TCP 连接 {host}:{port} 超时（>{timeout}s）")
        _info("→ ping 一下、确认 IP / 网线 / 子网掩码")
        return False
    except OSError as err:
        _bad(f"TCP 错: {err!r}")
        _info("→ 主机有路由但端口未开，确认 SSHd 在跑")
        return False


async def step_ssh(host, port, user, password, timeout=10.0):
    print(f"[2/4] SSH 握手 + 登录 ({user}@{host}:{port}) ...")
    t0 = time.time()
    try:
        conn = await asyncssh.connect(
            host=host, port=port, username=user, password=password,
            known_hosts=None,
            client_keys=(),
            preferred_auth=("password", "keyboard-interactive"),
            server_host_key_algs=_HOST_KEY_ALGS,
            connect_timeout=timeout,
            login_timeout=timeout,
        )
    except asyncio.TimeoutError:
        _bad(f"SSH 超时 (>{timeout}s)")
        _info("→ 用 `ssh -vvv root@<host>` 看真实 ssh 客户端协商了什么算法")
        _info("→ 如交互式 ssh 也卡：服务端问题")
        _info("→ 如交互式 ssh 正常：算法 / 公钥 / 密码差异，开 --verbose 看日志")
        return None
    except asyncssh.PermissionDenied as err:
        _bad(f"鉴权失败: {err}")
        _info(f"→ 用户/口令检查：当前 {user!r} / {password!r}")
        return None
    except Exception as err:
        _bad(f"SSH 失败: {type(err).__name__}: {err}")
        return None
    _ok(f"SSH 登录成功  ({(time.time()-t0)*1000:.0f} ms)")
    return conn


async def step_shell(conn, timeout=5.0):
    print("[3/4] 打开 vt100 shell，等 :/opt/ppmac# 提示符 ...")
    try:
        w, r, _ = await conn.open_session(term_type="vt100")
        out = await asyncio.wait_for(r.readuntil(_SHELL_PROMPT), timeout)
    except asyncio.TimeoutError:
        _bad(f"shell 提示符超时 (>{timeout}s)")
        _info("→ 服务端登录 banner 跟预期不一致，可能不是 CK3M 的 ppmac 系统")
        return None, None
    except Exception as err:
        _bad(f"shell 开通失败: {type(err).__name__}: {err}")
        return None, None
    _ok(f"看到 ppmac shell，banner 末尾: {out[-80:]!r}")
    return w, r


async def step_gpascii(w, r, timeout=5.0):
    print("[4/4] 启动 gpascii -2 -f，等 STDIN Open 横幅 + ACK ...")
    w.write("gpascii -2 -f\r\n")
    await w.drain()
    try:
        banner = await asyncio.wait_for(r.readuntil(_ACK), timeout)
    except asyncio.TimeoutError:
        _bad(f"gpascii banner 超时 (>{timeout}s)")
        _info("→ 手动 `ssh root@host` 再 `gpascii -2 -f` 看是否能起来")
        return False
    if _LOGIN_BANNER not in banner:
        _bad(f"banner 不匹配: {banner!r}")
        return False
    _ok(f"gpascii 起来了  banner={banner!r}")
    return True


async def run(args):
    ok = await step_tcp(args.host, args.port)
    if not ok:
        return 1

    conn = await step_ssh(args.host, args.port, args.user, args.password)
    if conn is None:
        return 2

    try:
        w, r = await step_shell(conn)
        if w is None:
            return 3
        ok = await step_gpascii(w, r)
        if not ok:
            return 4
        print("\n\033[32m全部步骤通过 —— cli_motor1.py / gui_motor1.py 应该能连上。\033[0m")
        return 0
    finally:
        conn.close()
        await conn.wait_closed()


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--host", default=HOST)
    ap.add_argument("--port", type=int, default=PORT)
    ap.add_argument("--user", default=USER)
    ap.add_argument("--password", default=PASSWORD)
    ap.add_argument("--verbose", action="store_true",
                    help="开 asyncssh debug 日志，看协商细节")
    args = ap.parse_args()

    if args.verbose:
        logging.basicConfig(level=logging.DEBUG,
                            format="%(asctime)s %(name)s %(levelname)s %(message)s")
        asyncssh.set_log_level("DEBUG")
        asyncssh.set_debug_level(2)

    sys.exit(asyncio.run(run(args)))


if __name__ == "__main__":
    main()
