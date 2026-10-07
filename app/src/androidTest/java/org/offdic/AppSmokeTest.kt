package org.offdic

import android.content.Intent
import android.widget.EditText
import androidx.test.core.app.ActivityScenario
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class AppSmokeTest {
    @Test fun mainActivityStartsAndRecreates() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        ActivityScenario.launch<MainActivity>(Intent(context, MainActivity::class.java)).use { scenario ->
            scenario.onActivity { assertFalse(it.isFinishing) }
            scenario.recreate()
            scenario.onActivity { assertFalse(it.isFinishing) }
        }
    }
    @Test fun translationAndAiScreensStartAndRecreateWithoutNetworkRequests() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        for (mode in listOf("translate", "ai")) {
            ActivityScenario.launch<LanguageToolsActivity>(Intent(context, LanguageToolsActivity::class.java).putExtra("mode", mode).putExtra("text", "hello")).use { scenario ->
                scenario.onActivity { assertFalse(it.isFinishing) }
                scenario.recreate()
                scenario.onActivity { assertFalse(it.isFinishing) }
            }
        }
    }
}
