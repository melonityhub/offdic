#!/usr/bin/env python3
"""Host-side tests for the AI gateway (gateway/server.py) against a fake upstream.

Spins the gateway and a stub upstream in-process on ephemeral ports, then checks that the
gateway relays requests, injects the default model, forwards the bearer token, and degrades
cleanly on bad input or a missing upstream. Standard library only; no network access.
"""
import importlib.util
import json
import threading
import unittest
import urllib.error
import urllib.request
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location("offdic_gateway", ROOT / "gateway" / "server.py")
server = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(server)

RECEIVED = []


class FakeUpstream(BaseHTTPRequestHandler):
    def do_POST(self):  # noqa: N802 - http.server naming
        length = int(self.headers.get("Content-Length", "0") or 0)
        body = self.rfile.read(length) if length else b""
        RECEIVED.append({"path": self.path, "headers": dict(self.headers), "body": json.loads(body or b"{}")})
        payload = {
            "id": "cmpl-test",
            "object": "chat.completion",
            "model": "fake-upstream-model",
            "choices": [{"index": 0, "message": {"role": "assistant", "content": "pong"}, "finish_reason": "stop"}],
        }
        raw = json.dumps(payload).encode("utf-8")
        self.send_response(200)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(raw)))
        self.end_headers()
        self.wfile.write(raw)

    def log_message(self, *args):
        pass


class GatewayTest(unittest.TestCase):
    upstream = None
    gateway = None

    @classmethod
    def setUpClass(cls):
        cls.upstream = ThreadingHTTPServer(("127.0.0.1", 0), FakeUpstream)
        threading.Thread(target=cls.upstream.serve_forever, daemon=True).start()
        cls.gateway = server.build_server("127.0.0.1", 0)
        threading.Thread(target=cls.gateway.serve_forever, daemon=True).start()
        cls.upstream_url = f"http://127.0.0.1:{cls.upstream.server_address[1]}/v1/chat/completions"
        cls.gateway_url = f"http://127.0.0.1:{cls.gateway.server_address[1]}"

    @classmethod
    def tearDownClass(cls):
        cls.gateway.shutdown()
        cls.upstream.shutdown()

    def setUp(self):
        RECEIVED.clear()
        server.CONFIG.update(
            upstream_url=self.upstream_url,
            upstream_key="secret-token",
            model="offdic-default",
            timeout=10,
        )

    def _post(self, path, payload):
        data = payload if isinstance(payload, (bytes, bytearray)) else json.dumps(payload).encode("utf-8")
        request = urllib.request.Request(self.gateway_url + path, data=data, method="POST")
        request.add_header("Content-Type", "application/json")
        try:
            with urllib.request.urlopen(request, timeout=10) as response:
                return response.status, json.loads(response.read().decode("utf-8"))
        except urllib.error.HTTPError as error:
            return error.code, json.loads(error.read().decode("utf-8") or b"{}")

    def _get(self, path):
        try:
            with urllib.request.urlopen(self.gateway_url + path, timeout=10) as response:
                return response.status, json.loads(response.read().decode("utf-8"))
        except urllib.error.HTTPError as error:
            return error.code, json.loads(error.read().decode("utf-8") or b"{}")

    def test_healthz_reports_upstream(self):
        status, body = self._get("/healthz")
        self.assertEqual(status, 200)
        self.assertEqual(body["status"], "ok")
        self.assertTrue(body["upstream"])

    def test_forwards_request_and_relays_response(self):
        status, body = self._post(
            "/v1/chat/completions",
            {"model": "caller-model", "messages": [{"role": "user", "content": "hi"}]},
        )
        self.assertEqual(status, 200)
        self.assertEqual(body["choices"][0]["message"]["content"], "pong")
        self.assertEqual(len(RECEIVED), 1)
        self.assertEqual(RECEIVED[0]["body"]["messages"][0]["content"], "hi")
        self.assertEqual(RECEIVED[0]["body"]["model"], "caller-model")
        self.assertEqual(RECEIVED[0]["headers"].get("Authorization"), "Bearer secret-token")

    def test_injects_default_model_when_missing(self):
        status, body = self._post("/v1/chat/completions", {"messages": [{"role": "user", "content": "hi"}]})
        self.assertEqual(status, 200)
        self.assertEqual(RECEIVED[0]["body"]["model"], "offdic-default")

    def test_invalid_json_returns_400(self):
        status, body = self._post("/v1/chat/completions", b"not json at all")
        self.assertEqual(status, 400)
        self.assertIn("error", body)
        self.assertEqual(RECEIVED, [])

    def test_missing_upstream_returns_503(self):
        server.CONFIG["upstream_url"] = ""
        status, body = self._post("/v1/chat/completions", {"messages": []})
        self.assertEqual(status, 503)
        self.assertIn("error", body)


if __name__ == "__main__":
    unittest.main(verbosity=2)
