package fast.dic.dict.bases;

import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.play.core.splitcompat.SplitCompat;
import com.google.firebase.messaging.Constants;
import com.taurusx.tax.s.g;
import com.yandex.div.core.dagger.Names;
import com.yandex.div.core.timer.TimerController;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.utils.LocaleExtKt;
import fast.dic.dict.utils.LoggerKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: BaseActivity.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0014J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0000H\u0002J\u0006\u0010\n\u001a\u00020\u0005J\u0016\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007Ê\u0001\u0002\b\u0010¨\u0006\u000f"}, d2 = {"Lfast/dic/dict/bases/BaseActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "<init>", "()V", "attachBaseContext", "", "newBase", "Landroid/content/Context;", "updateConfig", "wrapper", "checkAndStartActivityByIntent", "launchUri", g.y, "", Names.CONTEXT, "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public class BaseActivity extends Hilt_BaseActivity {
    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context newBase) {
        Intrinsics.checkNotNullParameter(newBase, "newBase");
        super.attachBaseContext(newBase);
        updateConfig(this);
        SplitCompat.install(newBase);
    }

    private final void updateConfig(BaseActivity wrapper) {
        BaseActivity baseActivity = wrapper;
        LocaleExtKt.updateCurrentLanguage(new LocalStorage(baseActivity).getCurrentLanguage(), baseActivity);
    }

    public final void checkAndStartActivityByIntent() {
        LoggerKt.getLogger().debug("checkAndStartActivityByIntent called", new Object[0]);
        try {
            if (getIntent() != null && getIntent().getExtras() != null) {
                LoggerKt.getLogger().debug("checkAndStartActivityByIntent intent and intent.extras is not null", new Object[0]);
                Bundle extras = getIntent().getExtras();
                LoggerKt.getLogger().debug("Get extra from activity intent. Extra : %s", extras);
                String string = extras != null ? extras.getString(Constants.MessagePayloadKeys.MSGID, null) : null;
                if (string == null) {
                    LoggerKt.getLogger().warn("MessageId is null for unknown reason. The google.message_id key is important.", new Object[0]);
                    return;
                }
                Context applicationContext = getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                if (!new LocalStorage(applicationContext).isDuplicateMessageId(string)) {
                    if (extras.containsKey(TimerController.CANCEL_COMMAND)) {
                        LoggerKt.getLogger().debug("Notification cancel clicked ........", new Object[0]);
                    } else {
                        final String string2 = extras.getString("url", null);
                        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: fast.dic.dict.bases.BaseActivity$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                BaseActivity.checkAndStartActivityByIntent$lambda$0(string2, this);
                            }
                        }, 500L);
                        LoggerKt.getLogger().debug("Notification action clicked " + string2 + " ........", new Object[0]);
                    }
                } else {
                    LoggerKt.getLogger().info("Duplicate messageId. Ignore to opening url.", new Object[0]);
                }
                Object systemService = getApplicationContext().getSystemService("notification");
                NotificationManager notificationManager = systemService instanceof NotificationManager ? (NotificationManager) systemService : null;
                if (notificationManager != null) {
                    notificationManager.cancel(0);
                    return;
                }
                return;
            }
            LoggerKt.getLogger().debug("checkAndStartActivityByIntent intent and intent.extras is null", new Object[0]);
        } catch (Exception e) {
            LoggerKt.getLogger().error("===> checkAndStartActivityByIntent had exception : " + e.getMessage(), new Object[0]);
        }
    }

    static final void checkAndStartActivityByIntent$lambda$0(String str, BaseActivity baseActivity) {
        if (str != null) {
            Context applicationContext = baseActivity.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            baseActivity.launchUri(str, applicationContext);
            baseActivity.finish();
        }
    }

    public final void launchUri(String uri, Context context) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            if (!StringsKt.contains$default((CharSequence) uri, (CharSequence) "://", false, 2, (Object) null)) {
                uri = "http://" + uri;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268566528);
            intent.setData(Uri.parse(uri));
            LoggerKt.getLogger().info("Opening " + uri + " url.", new Object[0]);
            context.startActivity(intent);
            LoggerKt.getLogger().info("Opened " + uri + " url successfully.", new Object[0]);
        } catch (Exception e) {
            LoggerKt.getLogger().error("Fail to opening url.", new Object[0]);
            e.printStackTrace();
        }
    }
}
