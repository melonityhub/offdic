package fast.dic.dict.activities;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.PersistableBundle;
import androidx.activity.EdgeToEdge;
import com.google.firebase.Firebase;
import com.google.firebase.crashlytics.FirebaseCrashlyticsKt;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.utils.LoggerKt;
import io.sentry.SentryBaseEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SplashActivity.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0014J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0005H\u0014J(\u0010\u0012\u001a\u00020\u000b2\b\u0010\u0013\u001a\u0004\u0018\u00010\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tÊ\u0001\u0010\b\u0019\u0012\f\b\u001a\u0012\b\b\fJ\u0004\b\b(\u001bÊ\u0001\u0002\b\u001c¨\u0006\u0018"}, d2 = {"Lfast/dic/dict/activities/SplashActivity;", "Lfast/dic/dict/bases/BaseActivity;", "<init>", "()V", "currentIntent", "Landroid/content/Intent;", "getCurrentIntent", "()Landroid/content/Intent;", "setCurrentIntent", "(Landroid/content/Intent;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "persistentState", "Landroid/os/PersistableBundle;", "onNewIntent", "intent", "startMainActivity", SentryBaseEvent.JsonKeys.EXTRA, "data", "Landroid/net/Uri;", "action", "", "app", "Landroid/annotation/SuppressLint;", "value", "CustomSplashScreen", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class SplashActivity extends Hilt_SplashActivity {
    private Intent currentIntent;

    public final Intent getCurrentIntent() {
        return this.currentIntent;
    }

    public final void setCurrentIntent(Intent intent) {
        this.currentIntent = intent;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle savedInstanceState, PersistableBundle persistentState) {
        EdgeToEdge.enable$default(this, null, null, 3, null);
        super.onCreate(savedInstanceState, persistentState);
        LoggerKt.getLogger().debug("-------------> SplashActivity created at " + System.currentTimeMillis(), new Object[0]);
    }

    @Override // fast.dic.dict.bases.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        EdgeToEdge.enable$default(this, null, null, 3, null);
        super.onCreate(savedInstanceState);
        this.currentIntent = getIntent();
        try {
            setContentView(R.layout.activity_splash);
        } catch (Resources.NotFoundException e) {
            LoggerKt.getLogger().error("SplashActivity", "Failed to load content view due to missing resource", e);
            FirebaseCrashlyticsKt.getCrashlytics(Firebase.INSTANCE).recordException(e);
        } catch (Exception e2) {
            LoggerKt.getLogger().error("SplashActivity", "Failed to load content view", e2);
            FirebaseCrashlyticsKt.getCrashlytics(Firebase.INSTANCE).recordException(e2);
        }
        checkAndStartActivityByIntent();
        Intent intent = this.currentIntent;
        Bundle extras = intent != null ? intent.getExtras() : null;
        Intent intent2 = this.currentIntent;
        Uri data = intent2 != null ? intent2.getData() : null;
        Intent intent3 = this.currentIntent;
        startMainActivity(extras, data, intent3 != null ? intent3.getAction() : null);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        this.currentIntent = intent;
    }

    static /* synthetic */ void startMainActivity$default(SplashActivity splashActivity, Bundle bundle, Uri uri, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = null;
        }
        splashActivity.startMainActivity(bundle, uri, str);
    }

    private final void startMainActivity(Bundle extra, Uri data, String action) {
        Intent intent = new Intent(this, (Class<?>) MainActivity.class);
        if (extra != null) {
            intent.putExtras(extra);
        }
        intent.setAction(action);
        intent.setData(data);
        startActivity(intent);
        finish();
    }
}
