package org.offdic

import android.content.Intent
import android.view.WindowManager
import android.widget.EditText
import androidx.test.core.app.ActivityScenario
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class AiSettingsTest {
    private val chat = AiSettings("https://api.example.com/v1/chat/completions", AiSettings.Protocol.OPENAI_CHAT, "test-model", "Translate accurately.", 30)

    @Test fun protocolPayloadAndResponseMatch() {
        val body = AiClient.requestBody(chat, "hello")
        assertEquals("test-model", body.getString("model"))
        assertFalse(body.getBoolean("stream"))
        assertEquals("system", body.getJSONArray("messages").getJSONObject(0).getString("role"))
        assertEquals("hello", body.getJSONArray("messages").getJSONObject(1).getString("content"))
        val response = JSONObject("""{"choices":[{"message":{"content":"سلام"}}]}""")
        assertEquals("سلام", AiClient.parseAnswer(chat.protocol, response))
        val gateway = AiSettings("https://api.example.com/ai")
        assertEquals("hello", AiClient.requestBody(gateway, "hello").getString("prompt"))
        assertEquals("answer", AiClient.parseAnswer(gateway.protocol, JSONObject("""{"answer":"answer"}""")))
        for (invalid in listOf("{}", "{\"answer\":3}", "{\"answer\":\"\"}")) {
            assertTrue(runCatching { AiClient.parseAnswer(gateway.protocol, JSONObject(invalid)) }.isFailure)
        }
    }
    @Test fun settingsValidationAndCredentialScope() {
        assertEquals(chat, chat.validated())
        assertTrue(chat.sameCredentialScope(chat.copy(endpoint = "https://api.example.com:443/other")))
        assertFalse(chat.sameCredentialScope(chat.copy(endpoint = "https://other.example.com/v1/chat/completions")))
        assertFalse(chat.sameCredentialScope(chat.copy(endpoint = "https://api.example.com:8443/other")))
        assertFalse(chat.sameCredentialScope(chat.copy(protocol = AiSettings.Protocol.GATEWAY)))
        for (invalid in listOf(chat.copy(model = ""), chat.copy(timeoutSeconds = 0), chat.copy(timeoutSeconds = 121), chat.copy(systemPrompt = "x".repeat(4001)))) {
            assertTrue(runCatching { invalid.validated() }.isFailure)
        }
    }
    @Test fun settingsRotationKeepsNonSecretDraftButNotApiKey() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        ActivityScenario.launch<AiSettingsActivity>(Intent(context, AiSettingsActivity::class.java)).use { scenario ->
            scenario.onActivity { activity ->
                assertTrue(activity.window.attributes.flags and WindowManager.LayoutParams.FLAG_SECURE != 0)
                activity.findViewById<EditText>(R.id.ai_model).setText("draft-model")
                activity.findViewById<EditText>(R.id.ai_key).setText("test-only-not-a-real-key")
            }
            scenario.recreate()
            scenario.onActivity { activity ->
                assertEquals("draft-model", activity.findViewById<EditText>(R.id.ai_model).text.toString())
                assertEquals("", activity.findViewById<EditText>(R.id.ai_key).text.toString())
            }
        }
    }
}
