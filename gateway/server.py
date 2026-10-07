#!/usr/bin/env python3
"""Minimal OpenAI-compatible gateway for the Offdic app's optional AI features.

The app posts Chat Completions to whatever endpoint the user configures. Deploying this small
proxy in front of a real model keeps the model's API key on the server instead of on the device:
the device only ever learns this gateway's address (and, at most, a shared secret you choose).

Standard library only. Configure through the environment:

    OFFDIC_UPSTREAM_URL   full Chat Completions URL of the real model (required to answer)
    OFFDIC_UPSTREAM_KEY   bearer token sent upstream (kept off the device)
    OFFDIC_MODEL          default model id injected when the client omits one
    OFFDIC_TIMEOUT        upstream timeout in seconds (default 60)
    OFFDIC_HOST / PORT    bind address (default 0.0.0.0:8000)

Endpoints:
    GET  /healthz                 liveness + whether an upstream is configured
    GET  /v1/models               the configured model id
    POST /v1/chat/completions     forwards the request upstream and relays the response

Run behind HTTPS (a reverse proxy or tunnel); the gateway itself speaks plain HTTP.
"""
import json
import os
import urllib.error
import urllib.request
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer

# Mutable so the host-side tests (tools/test_gateway.py) can point the handler at a fake upstream
# without spawning a second process.
CONFIG = {
    "upstream_url": os.environ.get("OFFDIC_UPSTREAM_URL", "").strip(),
    "upstream_key": os.environ.get("OFFDIC_UPSTREAM_KEY", "").strip(),
    "model": os.environ.get("OFFDIC_MODEL", "").strip(),
    "timeout": float(os.environ.get("OFFDIC_TIMEOUT", "60") or 60),
}


class GatewayHandler(BaseHTTPRequestHandler):
    server_version = "OffdicGateway/1.0"
    protocol_version = "HTTP/1.1"

    def _json(self, code, obj):
        body = json.dumps(obj).encode("utf-8")
        self.send_response(code)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def do_GET(self):
        if self.path == "/healthz":
            self._json(200, {"status": "ok", "upstream": bool(CONFIG["upstream_url"])})
        elif self.path == "/v1/models":
            model = CONFIG["model"] or "offdic"
            self._json(200, {"object": "list", "data": [{"id": model, "object": "model"}]})
        else:
            self._json(404, {"error": "not found"})

    def do_POST(self):
        length = int(self.headers.get("Content-Length", "0") or 0)
        raw = self.rfile.read(length) if length else b""
        if self.path != "/v1/chat/completions":
            self._json(404, {"error": "not found"})
            return
        upstream = CONFIG["upstream_url"]
        if not upstream:
            self._json(503, {"error": "upstream not configured"})
            return
        try:
            payload = json.loads(raw.decode("utf-8")) if raw else {}
            if not isinstance(payload, dict):
                raise ValueError("payload must be an object")
        except (ValueError, UnicodeDecodeError):
            self._json(400, {"error": "invalid json"})
            return
        if CONFIG["model"] and not payload.get("model"):
            payload["model"] = CONFIG["model"]
        request = urllib.request.Request(
            upstream, data=json.dumps(payload).encode("utf-8"), method="POST"
        )
        request.add_header("Content-Type", "application/json")
        if CONFIG["upstream_key"]:
            request.add_header("Authorization", "Bearer " + CONFIG["upstream_key"])
        try:
            with urllib.request.urlopen(request, timeout=CONFIG["timeout"]) as response:
                self._json(response.status, json.loads(response.read().decode("utf-8")))
        except urllib.error.HTTPError as error:
            detail = error.read().decode("utf-8", "replace")
            self._json(error.code, {"error": "upstream error", "detail": detail})
        except Exception as error:  # noqa: BLE001 - relay any transport failure as 502
            self._json(502, {"error": "upstream unreachable", "detail": str(error)})

    def log_message(self, *args):  # keep test output quiet
        pass


def build_server(host="127.0.0.1", port=8000):
    return ThreadingHTTPServer((host, port), GatewayHandler)


def main():
    host = os.environ.get("OFFDIC_HOST", "0.0.0.0")
    port = int(os.environ.get("OFFDIC_PORT", "8000"))
    build_server(host, port).serve_forever()


if __name__ == "__main__":
    main()
