package fast.dic.dict.helpers;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaActionSound;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.os.VibratorManager;
import com.yandex.div.core.dagger.Names;
import dagger.hilt.android.qualifiers.ApplicationContext;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDSoundEffect.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\f\b\u0001\u0010\u0002\u001a\u00020\u0003:\u0002\b\u0004\u001a\u0002\b\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u001a\u0010\n\u001a\u00020\u000bH\u0007b\u0010\b\f\u0012\f\b\r\u0012\b\b\fJ\u0004\b\b(\u000eJ\u0006\u0010\u000f\u001a\u00020\u000bR\u001b\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u0092\u0002\u0002\b\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0010"}, d2 = {"Lfast/dic/dict/helpers/FDSoundEffect;", "", Names.CONTEXT, "Landroid/content/Context;", "Ldagger/hilt/android/qualifiers/ApplicationContext;", "<init>", "(Landroid/content/Context;)V", "Ljavax/inject/Inject;", "getContext", "()Landroid/content/Context;", "playShutterSound", "", "Landroid/annotation/SuppressLint;", "value", "ServiceCast", "tapVibration", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDSoundEffect {

    @ApplicationContext
    private final Context context;

    @Inject
    public FDSoundEffect(@ApplicationContext Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public final Context getContext() {
        return this.context;
    }

    public final void playShutterSound() {
        AudioManager audioManager = (AudioManager) this.context.getSystemService("audio");
        Integer numValueOf = audioManager != null ? Integer.valueOf(audioManager.getRingerMode()) : null;
        if (numValueOf != null && numValueOf.intValue() == 2) {
            new MediaActionSound().play(0);
        } else {
            if ((numValueOf != null && numValueOf.intValue() == 0) || numValueOf == null) {
                return;
            }
            numValueOf.intValue();
        }
    }

    public final void tapVibration() {
        Vibrator defaultVibrator;
        int i = Build.VERSION.SDK_INT;
        Context context = this.context;
        if (i >= 31) {
            Object systemService = context.getSystemService("vibrator_manager");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.VibratorManager");
            defaultVibrator = ((VibratorManager) systemService).getDefaultVibrator();
        } else {
            Object systemService2 = context.getSystemService("vibrator");
            Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.os.Vibrator");
            defaultVibrator = (Vibrator) systemService2;
        }
        Intrinsics.checkNotNull(defaultVibrator);
        if (Build.VERSION.SDK_INT >= 26) {
            defaultVibrator.vibrate(VibrationEffect.createOneShot(100L, -1));
        } else {
            defaultVibrator.vibrate(100L);
        }
    }
}
