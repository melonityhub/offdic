package org.offdic

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.widget.RemoteViews

/**
 * Word-of-the-day home-screen widget. The word is chosen deterministically from the local
 * database (see [Dictionary.dailyWord]); there is no server feed. Tapping the widget opens the
 * app on the search screen.
 */
class DailyWordWidget : AppWidgetProvider() {
    override fun onUpdate(context: Context, manager: AppWidgetManager, ids: IntArray) {
        if (ids.isEmpty()) return
        val entry = readDailyWord(context)
        val views = RemoteViews(context.packageName, R.layout.daily_word_widget).apply {
            val openApp = PendingIntent.getActivity(
                context,
                0,
                Intent(context, MainActivity::class.java),
                PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
            )
            setOnClickPendingIntent(R.id.widget_root, openApp)
            if (entry == null) {
                setTextViewText(R.id.widget_word, context.getString(R.string.widget_empty))
                setTextViewText(R.id.widget_meaning, "")
            } else {
                setTextViewText(R.id.widget_word, entry.word.text)
                setTextViewText(R.id.widget_meaning, entry.meanings.firstOrNull()?.text.orEmpty())
            }
        }
        manager.updateAppWidget(ids, views)
    }

    private fun readDailyWord(context: Context): Entry? {
        val dictionary = Dictionary(context.applicationContext)
        return try {
            dictionary.open()
            dictionary.dailyWord()
        } catch (_: Exception) {
            null
        } finally {
            dictionary.close()
        }
    }

    companion object {
        /** Ask every placed widget instance to re-read the database (e.g. after an import). */
        fun refresh(context: Context) {
            val manager = AppWidgetManager.getInstance(context)
            val component = ComponentName(context, DailyWordWidget::class.java)
            val ids = manager.getAppWidgetIds(component)
            if (ids.isEmpty()) return
            val update = Intent(AppWidgetManager.ACTION_APPWIDGET_UPDATE)
                .setComponent(component)
                .putExtra(AppWidgetManager.EXTRA_APPWIDGET_IDS, ids)
            context.sendBroadcast(update)
        }
    }
}
