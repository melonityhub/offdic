package org.offdic

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.widget.RemoteViews
import androidx.work.*
import java.time.LocalDate
import java.util.concurrent.TimeUnit

class DailyWordWidget : AppWidgetProvider() {
    override fun onUpdate(context: Context, manager: AppWidgetManager, ids: IntArray) { refresh(context) }
    override fun onEnabled(context: Context) {
        WorkManager.getInstance(context).enqueueUniquePeriodicWork("daily-word-periodic", ExistingPeriodicWorkPolicy.KEEP,
            PeriodicWorkRequestBuilder<DailyWordWorker>(6, TimeUnit.HOURS).build())
        refresh(context)
    }
    override fun onDisabled(context: Context) {
        WorkManager.getInstance(context).cancelUniqueWork("daily-word-periodic")
        WorkManager.getInstance(context).cancelUniqueWork("daily-word-now")
    }
    companion object {
        fun refresh(context: Context) {
            val manager = AppWidgetManager.getInstance(context)
            if (manager.getAppWidgetIds(ComponentName(context, DailyWordWidget::class.java)).isNotEmpty()) {
                WorkManager.getInstance(context).enqueueUniqueWork("daily-word-now", ExistingWorkPolicy.KEEP,
                    OneTimeWorkRequestBuilder<DailyWordWorker>().build())
            }
        }
    }
}

class DailyWordWorker(context: Context, params: WorkerParameters) : Worker(context, params) {
    override fun doWork(): Result {
        val context = applicationContext
        val manager = AppWidgetManager.getInstance(context)
        val ids = manager.getAppWidgetIds(ComponentName(context, DailyWordWidget::class.java))
        if (ids.isEmpty()) return Result.success()
        val result = runCatching { Dictionary(context).use { it.open(); it.dailyWord() } }
        val entry = result.getOrNull()
        val view = RemoteViews(context.packageName, R.layout.daily_word_widget)
        view.setTextViewText(R.id.widget_date, "واژهٔ روز · ${LocalDate.now()}")
        view.setTextViewText(R.id.widget_word, entry?.word?.text ?: "Offdic")
        view.setTextViewText(R.id.widget_meaning, entry?.meanings?.firstOrNull()?.text?.take(240) ?: "برای بررسی دیتابیس برنامه را باز کنید")
        val intent = Intent(context, MainActivity::class.java).apply {
            putExtra(Intent.EXTRA_TEXT, entry?.word?.text.orEmpty())
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP)
        }
        val pending = PendingIntent.getActivity(context, 100, intent, PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE)
        view.setOnClickPendingIntent(R.id.widget_root, pending)
        manager.updateAppWidget(ids, view)
        return if (result.isFailure && runAttemptCount < 2) Result.retry() else Result.success()
    }
}
