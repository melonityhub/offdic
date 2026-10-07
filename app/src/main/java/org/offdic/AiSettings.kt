package org.offdic

import android.content.Context

/** No secret is kept here; credentials belong exclusively to AiCredentials/Keystore. */
data class AiSettings(
    val endpoint: String = "",
    val protocol: Protocol = Protocol.GATEWAY,
    val model: String = "",
    val systemPrompt: String = "You are a helpful Persian-English dictionary and translation assistant.",
    val timeoutSeconds: Int = 45
) {
    enum class Protocol { GATEWAY, OPENAI_CHAT }
    fun validated(): AiSettings {
        AiClient.validateEndpoint(endpoint)
        require(timeoutSeconds in 15..120) { "مهلت پاسخ باید بین ۱۵ تا ۱۲۰ ثانیه باشد" }
        require(systemPrompt.length <= 4000) { "دستور سیستم حداکثر ۴۰۰۰ نویسه است" }
        if (protocol == Protocol.OPENAI_CHAT) require(model.isNotBlank() && model.length <= 200) { "نام مدل را وارد کنید (حداکثر ۲۰۰ نویسه)" }
        return copy(endpoint = endpoint.trim(), model = model.trim())
    }
    fun sameCredentialScope(other: AiSettings): Boolean = runCatching {
        val first = AiClient.validateEndpoint(endpoint)
        val second = AiClient.validateEndpoint(other.endpoint)
        first.host.equals(second.host, true) && (if (first.port == -1) 443 else first.port) == (if (second.port == -1) 443 else second.port) && protocol == other.protocol
    }.getOrDefault(false)

    fun save(context: Context) {
        val checked = validated()
        context.getSharedPreferences("ai", 0).edit()
            .putString("endpoint", checked.endpoint).putString("protocol", checked.protocol.name)
            .putString("model", checked.model).putString("systemPrompt", checked.systemPrompt)
            .putInt("timeoutSeconds", checked.timeoutSeconds).apply()
    }
    companion object {
        fun load(context: Context): AiSettings {
            val prefs = context.getSharedPreferences("ai", 0)
            return AiSettings(
                endpoint = prefs.getString("endpoint", "").orEmpty(),
                protocol = runCatching { Protocol.valueOf(prefs.getString("protocol", "GATEWAY")!!) }.getOrDefault(Protocol.GATEWAY),
                model = prefs.getString("model", "").orEmpty(),
                systemPrompt = prefs.getString("systemPrompt", AiSettings().systemPrompt).orEmpty(),
                timeoutSeconds = prefs.getInt("timeoutSeconds", 45)
            )
        }
    }
}
