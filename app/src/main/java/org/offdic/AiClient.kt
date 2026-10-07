package org.offdic

import org.json.JSONObject
import org.json.JSONArray
import java.net.URI
import javax.net.ssl.HttpsURLConnection

/** Calls a user-controlled gateway, never the original app's authenticated service. */
class AiClient {
    @Volatile private var active: HttpsURLConnection? = null
    @Volatile private var cancelled = false
    fun cancel() { cancelled = true; active?.disconnect() }
    fun ask(endpoint: String, prompt: String, token: String = ""): String = ask(AiSettings(endpoint = endpoint), prompt, token)

    fun ask(settings: AiSettings, prompt: String, token: String = ""): String {
        val config = settings.validated()
        require(prompt.isNotBlank() && prompt.length <= 6000) { "متن باید بین ۱ تا ۶۰۰۰ نویسه باشد" }
        val uri = validateEndpoint(config.endpoint)
        check(!cancelled) { "درخواست لغو شد" }
        val connection = uri.toURL().openConnection() as HttpsURLConnection
        active = connection
        try {
            check(!cancelled) { "درخواست لغو شد" }
            connection.apply {
                requestMethod = "POST"; connectTimeout = 15000; readTimeout = config.timeoutSeconds * 1000
                instanceFollowRedirects = false; doOutput = true
                setRequestProperty("Content-Type", "application/json; charset=utf-8")
                setRequestProperty("Accept", "application/json")
            }
            require(token.none { it == '\r' || it == '\n' } && token.length <= 4096) { "توکن نامعتبر" }
            if (token.isNotBlank()) connection.setRequestProperty("Authorization", "Bearer $token")
            val payload = requestBody(config, prompt).toString().toByteArray(Charsets.UTF_8)
            connection.setFixedLengthStreamingMode(payload.size)
            connection.outputStream.use { it.write(payload) }
            val status = connection.responseCode
            require(status in 200..299) {
                when (status) {
                    401, 403 -> "HTTP $status: کلید API یا مجوز دسترسی معتبر نیست"
                    404 -> "HTTP 404: آدرس کامل endpoint و نام مدل را بررسی کنید"
                    429 -> "HTTP 429: محدودیت نرخ یا اعتبار سرویس؛ بعداً تلاش کنید"
                    in 500..599 -> "HTTP $status: خطای سرویس ارائه‌دهنده"
                    else -> "HTTP $status: سرویس درخواست را نپذیرفت"
                }
            }
            val text = connection.inputStream.bufferedReader(Charsets.UTF_8).use { reader ->
                val result = StringBuilder()
                val buffer = CharArray(4096)
                while (true) {
                    check(!cancelled) { "درخواست لغو شد" }
                    val n = reader.read(buffer)
                    if (n < 0) break
                    require(result.length + n <= 131072) { "پاسخ سرویس بیش از حد بزرگ است" }
                    result.append(buffer, 0, n)
                }
                result.toString()
            }
            return parseAnswer(config.protocol, JSONObject(text))
        } finally { connection.disconnect(); active = null }
    }
    companion object {
        fun requestBody(settings: AiSettings, prompt: String): JSONObject {
            if (settings.protocol == AiSettings.Protocol.GATEWAY) return JSONObject().put("prompt", prompt)
            val messages = JSONArray()
            if (settings.systemPrompt.isNotBlank()) messages.put(JSONObject().put("role", "system").put("content", settings.systemPrompt))
            messages.put(JSONObject().put("role", "user").put("content", prompt))
            return JSONObject().put("model", settings.model).put("messages", messages).put("stream", false)
        }

        fun parseAnswer(protocol: AiSettings.Protocol, response: JSONObject): String {
            val value = if (protocol == AiSettings.Protocol.GATEWAY) response.opt("answer")
                else response.optJSONArray("choices")?.optJSONObject(0)?.optJSONObject("message")?.opt("content")
            require(value is String && value.isNotBlank()) { "پاسخ متنی معتبر نیست؛ نوع API را بررسی کنید (gateway یا Chat Completions)" }
            return value
        }

        fun validateEndpoint(value: String): URI {
            val uri = URI(value.trim())
            require(uri.scheme == "https" && !uri.host.isNullOrBlank() && uri.userInfo == null && uri.fragment == null && uri.query == null && (uri.port == -1 || uri.port in 1..65535)) {
                "نشانی HTTPS بدون رمز، query یا fragment وارد کنید"
            }
            return uri
        }
    }
}
