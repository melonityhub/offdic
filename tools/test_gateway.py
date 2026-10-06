#!/usr/bin/env python3
"""Local HTTP contract tests; upstream inference is mocked, no provider key or internet required."""
import importlib.util
import json
import os
from pathlib import Path
import threading
import unittest
from unittest.mock import patch
from urllib.request import Request, urlopen
from urllib.error import HTTPError
from http.server import ThreadingHTTPServer

spec = importlib.util.spec_from_file_location('gateway', Path(__file__).resolve().parents[1] / 'gateway/server.py')
gateway = importlib.util.module_from_spec(spec)
spec.loader.exec_module(gateway)

class GatewayTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.env = patch.dict(os.environ, {'AI_GATEWAY_TOKEN': 'test-only-token'})
        cls.env.start()
        cls.server = ThreadingHTTPServer(('127.0.0.1', 0), gateway.Handler)
        cls.thread = threading.Thread(target=cls.server.serve_forever, daemon=True)
        cls.thread.start()
    @classmethod
    def tearDownClass(cls):
        cls.server.shutdown(); cls.server.server_close(); cls.thread.join(); cls.env.stop()
    def post(self, payload, token='test-only-token', path='/ai', content_type='application/json'):
        req = Request(f'http://127.0.0.1:{self.server.server_port}{path}', json.dumps(payload).encode(),
                      {'Authorization': 'Bearer '+token, 'Content-Type': content_type}, method='POST')
        try:
            response = urlopen(req, timeout=5)
        except HTTPError as error:
            response = error
        with response:
            return response.status, json.loads(response.read())
    @patch.object(gateway, 'answer', return_value='سلام')
    def test_success(self, upstream):
        self.assertEqual(self.post({'prompt': 'hello'}), (200, {'answer': 'سلام'}))
        upstream.assert_called_once_with('hello')
    @patch.object(gateway, 'answer')
    def test_authentication_before_provider_call(self, upstream):
        self.assertEqual(self.post({'prompt': 'hello'}, token='wrong')[0], 401)
        upstream.assert_not_called()
    def test_invalid_prompts(self):
        for payload in ({}, [], {'prompt': ''}, {'prompt': 3}, {'prompt': 'a'*6001}):
            self.assertEqual(self.post(payload)[0], 400)
    def test_limits_and_routes(self):
        self.assertEqual(self.post({'prompt': 'a'*40000})[0], 413)
        self.assertEqual(self.post({'prompt': 'hello'}, path='/other')[0], 404)
        self.assertEqual(self.post({'prompt': 'hello'}, content_type='text/plain')[0], 415)
    @patch.object(gateway, 'answer', side_effect=ValueError('secret provider error'))
    def test_provider_error_is_redacted(self, _):
        self.assertEqual(self.post({'prompt': 'hello'}), (502, {'error': 'upstream_unavailable'}))

if __name__ == '__main__': unittest.main(verbosity=2)
