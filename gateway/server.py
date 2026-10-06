#!/usr/bin/env python3
"""Authenticated AI gateway. Put behind a TLS reverse proxy; never ship provider keys in APK."""
import hmac
import json
import os
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from urllib.request import Request, build_opener, HTTPRedirectHandler
from urllib.error import HTTPError
from urllib.parse import urlparse

MAX_BODY = 32768
MAX_RESPONSE = 524288

class NoRedirect(HTTPRedirectHandler):
    def redirect_request(self, *args, **kwargs):
        return None


def answer(prompt):
    base = os.environ['AI_UPSTREAM_URL']  # Complete OpenAI-compatible chat/completions endpoint.
    uri = urlparse(base)
    if uri.scheme != 'https' and not (uri.scheme == 'http' and uri.hostname in ('127.0.0.1', 'localhost', '::1')):
        raise ValueError('Upstream must be HTTPS or loopback HTTP')
    payload = json.dumps({'model': os.environ['AI_MODEL'], 'messages': [
        {'role': 'system', 'content': 'You are a bilingual Persian-English dictionary and translation assistant. Be accurate and concise.'},
        {'role': 'user', 'content': prompt}], 'stream': False, 'max_tokens': 2048}).encode()
    headers = {'Content-Type': 'application/json', 'Accept': 'application/json'}
    if os.environ.get('AI_UPSTREAM_KEY'):
        headers['Authorization'] = 'Bearer ' + os.environ['AI_UPSTREAM_KEY']
    request = Request(base, payload, headers, method='POST')
    with build_opener(NoRedirect()).open(request, timeout=35) as response:
        raw = response.read(MAX_RESPONSE + 1)
    if len(raw) > MAX_RESPONSE:
        raise ValueError('Upstream response too large')
    result = json.loads(raw)['choices'][0]['message']['content']
    if not isinstance(result, str) or not result.strip():
        raise ValueError('Empty upstream response')
    # Keep escaped JSON below the app response ceiling, even for non-ASCII text.
    return result[:20000]


class Handler(BaseHTTPRequestHandler):
    def setup(self):
        super().setup()
        self.connection.settimeout(15)

    def log_message(self, *_):
        pass  # Never log prompts, credentials, provider errors or request headers.

    def reply(self, status, payload):
        data = json.dumps(payload, ensure_ascii=False).encode('utf-8')
        self.send_response(status)
        self.send_header('Content-Type', 'application/json; charset=utf-8')
        self.send_header('Content-Length', str(len(data)))
        self.send_header('Cache-Control', 'no-store')
        self.end_headers()
        self.wfile.write(data)

    def do_POST(self):
        if self.path != '/ai':
            return self.reply(404, {'error': 'not_found'})
        expected = os.environ.get('AI_GATEWAY_TOKEN', '')
        supplied = self.headers.get('Authorization', '')
        if not expected or not hmac.compare_digest(supplied.encode(), ('Bearer ' + expected).encode()):
            return self.reply(401, {'error': 'unauthorized'})
        try:
            length = int(self.headers.get('Content-Length', '0'))
            if not 0 < length <= MAX_BODY:
                return self.reply(413, {'error': 'request_size'})
            if self.headers.get_content_type() != 'application/json' or self.headers.get('Transfer-Encoding'):
                return self.reply(415, {'error': 'content_type'})
            raw = self.rfile.read(length)
            if len(raw) != length:
                return self.reply(400, {'error': 'incomplete_body'})
            payload = json.loads(raw)
            prompt = payload.get('prompt') if isinstance(payload, dict) else None
            if not isinstance(prompt, str) or not 0 < len(prompt.strip()) <= 6000:
                return self.reply(400, {'error': 'prompt'})
        except (ValueError, UnicodeError, TimeoutError):
            return self.reply(400, {'error': 'invalid_request'})
        try:
            result = answer(prompt.strip())
        except Exception:
            return self.reply(502, {'error': 'upstream_unavailable'})
        return self.reply(200, {'answer': result})


if __name__ == '__main__':
    for name in ('AI_GATEWAY_TOKEN', 'AI_UPSTREAM_URL', 'AI_MODEL'):
        if not os.environ.get(name):
            raise SystemExit(f'Set {name} in the server environment')
    # Deployment service, not a browser preview. TLS/rate limiting belongs at the reverse proxy.
    ThreadingHTTPServer(('127.0.0.1', int(os.environ.get('PORT', '8080'))), Handler).serve_forever()
