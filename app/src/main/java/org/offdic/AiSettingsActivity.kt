package org.offdic

import android.app.Activity
import android.content.Context
import android.net.ConnectivityManager
import android.net.NetworkCapabilities
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.LinearLayout
import android.widget.ScrollView
import android.widget.TextView
import java.net.HttpURLConnection
import java.net.URL
import java.util.concurrent.Executors
import org.json.JSONArray
import org.json.JSONObject

/**
 * Settings screen for the optional AI / API backend. The app talks to any OpenAI-compatible
 * Chat Completions endpoint (a self-hosted gateway is the intended target). Everything is stored
 * in app-private SharedPreferences; the endpoint and key are the user's own and never leave the
 * device except in the request the user explicitly tests or sends.
 */
class AiSettingsActivity : Activity() {
    private val io = Executors.newSingleThreadExecutor()
    private val prefs by lazy { getSharedPreferences("ai_settings", Context.MODE_PRIVATE) }

    private lateinit var endpoint: EditText
    private lateinit var model: EditText
    private lateinit var apiKey: EditText
    private lateinit var system: EditText
    private lateinit var timeout: EditText
    private lateinit var status: TextView

    override fun onCreate(state: Bundle?) {
        super.onCreate(state)
        val column = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(20), dp(20), dp(20), dp(20))
        }
        endpoint = field("Endpoint (https://…/v1/chat/completions)", prefs.getString("endpoint", "").orEmpty())
        model = field("مدل", prefs.getString("model", "").orEmpty())
        apiKey = field("کلید API", prefs.getString("apiKey", "").orEmpty())
        system = field("دستور سیستم (اختیاری)", prefs.getString("system", "").orEmpty())
        timeout = field("Timeout (ثانیه)", prefs.getString("timeout", "20").orEmpty())
        listOf(endpoint, model, apiKey, system, timeout).forEach { column.addView(it) }

        val actions = LinearLayout(this)
        actions.addView(Button(this).apply { text = "ذخیره"; setOnClickListener { save(); status.text = "ذخیره شد" } },
            LinearLayout.LayoutParams(0, -2, 1f))
        actions.addView(Button(this).apply { text = "آزمایش اتصال"; setOnClickListener { test() } },
            LinearLayout.LayoutParams(0, -2, 1f))
        column.addView(actions)

        status = TextView(this).apply { setPadding(0, dp(16), 0, 0) }
        column.addView(status)
        setContentView(ScrollView(this).apply { addView(column) })
    }

    private fun field(label: String, value: String) = EditText(this).apply {
        hint = label
        setText(value)
        setSingleLine(false)
    }

    private fun readTimeoutSeconds(): Int =
        (timeout.text.toString().trim().toIntOrNull() ?: 20).coerceIn(3, 120)

    private fun save() {
        prefs.edit()
            .putString("endpoint", endpoint.text.toString().trim())
            .putString("model", model.text.toString().trim())
            .putString("apiKey", apiKey.text.toString().trim())
            .putString("system", system.text.toString().trim())
            .putString("timeout", readTimeoutSeconds().toString())
            .apply()
    }

    private fun online(): Boolean {
        val manager = getSystemService(ConnectivityManager::class.java) ?: return false
        val caps = manager.getNetworkCapabilities(manager.activeNetwork) ?: return false
        return caps.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
    }

    private fun test() {
        save()
        val url = endpoint.text.toString().trim()
        val key = apiKey.text.toString().trim()
        if (url.isEmpty()) { status.text = "Endpoint وارد نشده است."; return }
        if (!online()) { status.text = "اتصال شبکه برقرار نیست."; return }
        status.text = "در حال آزمایش…"
        io.execute {
            val result = runCatching { probe(url, key, model.text.toString().trim()) }
            runOnUiThread {
                result.fold(
                    { status.text = "پاسخ سرور: $it" },
                    { status.text = "خطا: ${it.localizedMessage.orEmpty().take(240)}" }
                )
            }
        }
    }

    private fun probe(url: String, key: String, model: String): String {
        val body = JSONObject()
            .put("model", model.ifEmpty { "gpt-4o-mini" })
            .put("messages", JSONArray().put(JSONObject().put("role", "user").put("content", "ping")))
            .put("max_tokens", 1)
        val seconds = readTimeoutSeconds()
        val connection = (URL(url).openConnection() as HttpURLConnection).apply {
            requestMethod = "POST"
            connectTimeout = seconds * 1000
            readTimeout = seconds * 1000
            doOutput = true
            setRequestProperty("Content-Type", "application/json")
            if (key.isNotEmpty()) setRequestProperty("Authorization", "Bearer $key")
        }
        try {
            connection.outputStream.use { it.write(body.toString().toByteArray(Charsets.UTF_8)) }
            return "HTTP ${connection.responseCode}"
        } finally {
            connection.disconnect()
        }
    }

    private fun dp(value: Int) = (value * resources.displayMetrics.density).toInt()

    override fun onDestroy() {
        io.shutdown()
        super.onDestroy()
    }
}
