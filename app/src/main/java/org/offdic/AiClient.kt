package org.offdic

import org.json.JSONObject
import java.net.URI
import javax.net.ssl.HttpsURLConnection

/** Calls a user-controlled gateway, never the original app's authenticated service. */
class AiClient {
    @Volatile private var active: HttpsURLConnection? = null
    @Volatile private var cancelled = false
    fun cancel() { cancelled = true; active?.disconnect() }
    fun ask(endpoint: String, prompt: String, token: String = ""): String {
        require(prompt.isNotBlank() && prompt.length <= 6000) { "متن باید بین ۱ تا ۶۰۰۰ نویسه باشد" }
        val uri = validateEndpoint(endpoint)
        check(!cancelled) { "درخواست لغو شد" }
        val connection = uri.toURL().openConnection() as HttpsURLConnection
        active = connection
        try {
            check(!cancelled) { "درخواست لغو شد" }
            connection.apply {
                requestMethod = "POST"; connectTimeout = 15000; readTimeout = 45000
                instanceFollowRedirects = false; doOutput = true
                setRequestProperty("Content-Type", "application/json; charset=utf-8")
                setRequestProperty("Accept", "application/json")
            }
            require(token.none { it == '\r' || it == '\n' } && token.length <= 4096) { "توکن نامعتبر" }
            if (token.isNotBlank()) connection.setRequestProperty("Authorization", "Bearer $token")
            val payload = JSONObject().put("prompt", prompt).toString().toByteArray(Charsets.UTF_8)
            connection.setFixedLengthStreamingMode(payload.size)
            connection.outputStream.use { it.write(payload) }
            val status = connection.responseCode
            require(status in 200..299) { "سرویس AI پاسخ HTTP $status داد؛ تنظیمات سرویس را بررسی کنید" }
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
            val response = JSONObject(text)
            require(response.opt("answer") is String) { "پاسخ سرویس باید دارای رشتهٔ answer باشد" }
            return response.getString("answer").also { require(it.isNotBlank()) { "پاسخ سرویس خالی است" } }
        } finally { connection.disconnect(); active = null }
    }
    companion object {
        fun validateEndpoint(value: String): URI {
            val uri = URI(value.trim())
            require(uri.scheme == "https" && !uri.host.isNullOrBlank() && uri.userInfo == null && uri.fragment == null && uri.query == null) {
                "نشانی HTTPS بدون رمز، query یا fragment وارد کنید"
            }
            return uri
        }
    }
}
