package fast.dic.dict.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.WordOfTheDayWidget;
import fast.dic.dict.services.UpdateWidgetService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppWidgetHelper.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\t"}, d2 = {"Lfast/dic/dict/utils/AppWidgetHelper;", "", "<init>", "()V", "updateWodWidget", "", Names.CONTEXT, "Landroid/content/Context;", "setAlarmManagerForUpdateWidget", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class AppWidgetHelper {
    public static final AppWidgetHelper INSTANCE = new AppWidgetHelper();

    private AppWidgetHelper() {
    }

    public final void updateWodWidget(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        LoggerKt.getLogger().debug("----------------> updateWodWidget called.", new Object[0]);
        int[] appWidgetIds = AppWidgetManager.getInstance(context).getAppWidgetIds(new ComponentName(context, (Class<?>) WordOfTheDayWidget.class));
        Intent intent = new Intent("android.appwidget.action.APPWIDGET_UPDATE");
        intent.setComponent(intent.getComponent());
        intent.putExtra("appWidgetIds", appWidgetIds);
        Intrinsics.checkNotNull(appWidgetIds);
        if (appWidgetIds.length == 0) {
            return;
        }
        intent.putExtra("appWidgetId", appWidgetIds[0]);
        context.sendBroadcast(intent);
    }

    public final void setAlarmManagerForUpdateWidget(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        LoggerKt.getLogger().debug("setAlarmManagerForUpdateWidget called.", new Object[0]);
        try {
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, new Intent(context, (Class<?>) UpdateWidgetService.class), Build.VERSION.SDK_INT >= 31 ? 33554432 : 0);
            Object systemService = context.getSystemService(NotificationCompat.CATEGORY_ALARM);
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
            AlarmManager alarmManager = (AlarmManager) systemService;
            alarmManager.cancel(broadcast);
            alarmManager.setRepeating(3, SystemClock.elapsedRealtime(), 1800000L, broadcast);
        } catch (Exception e) {
            e.printStackTrace();
            LoggerKt.getLogger().error("setAlarmManagerForUpdateWidget failed. " + e.getMessage(), new Object[0]);
        }
    }
}
