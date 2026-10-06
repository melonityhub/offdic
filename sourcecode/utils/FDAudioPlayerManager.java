package fast.dic.dict.utils;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Build;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.yandex.div.core.dagger.Names;
import io.sentry.SentryEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDAudioPlayerManager.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\b\u0010\u0014\u001a\u00020\rH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/utils/FDAudioPlayerManager;", "", "<init>", "()V", CampaignEx.JSON_KEY_AD_MP, "Landroid/media/MediaPlayer;", "audioManager", "Landroid/media/AudioManager;", "audioFocusRequest", "Landroid/media/AudioFocusRequest;", SentryEvent.JsonKeys.LOGGER, "Lfast/dic/dict/utils/Logger;", "audioPlayerAsync", "", "url", "", Names.CONTEXT, "Landroid/content/Context;", "completionListener", "Landroid/media/MediaPlayer$OnCompletionListener;", "releaseAudioFocus", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDAudioPlayerManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static FDAudioPlayerManager get = new FDAudioPlayerManager();
    private AudioFocusRequest audioFocusRequest;
    private AudioManager audioManager;
    private final Logger logger = Logger.INSTANCE.getLogger1();
    private MediaPlayer mp;

    public static /* synthetic */ void audioPlayerAsync$default(FDAudioPlayerManager fDAudioPlayerManager, String str, Context context, MediaPlayer.OnCompletionListener onCompletionListener, int i, Object obj) {
        if ((i & 2) != 0) {
            context = null;
        }
        fDAudioPlayerManager.audioPlayerAsync(str, context, onCompletionListener);
    }

    public final void audioPlayerAsync(final String url, Context context, final MediaPlayer.OnCompletionListener completionListener) {
        Intrinsics.checkNotNullParameter(completionListener, "completionListener");
        try {
            MediaPlayer mediaPlayer = this.mp;
            if (mediaPlayer == null) {
                mediaPlayer = new MediaPlayer();
                this.mp = mediaPlayer;
            }
            Intrinsics.checkNotNull(mediaPlayer);
            mediaPlayer.stop();
            MediaPlayer mediaPlayer2 = this.mp;
            Intrinsics.checkNotNull(mediaPlayer2);
            mediaPlayer2.reset();
            AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setContentType(2).setUsage(1).build();
            if (context != null) {
                Object systemService = context.getSystemService("audio");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.media.AudioManager");
                this.audioManager = (AudioManager) systemService;
                if (Build.VERSION.SDK_INT >= 26) {
                    AudioFocusRequest audioFocusRequestBuild = new AudioFocusRequest.Builder(3).setAudioAttributes(audioAttributesBuild).build();
                    this.audioFocusRequest = audioFocusRequestBuild;
                    AudioManager audioManager = this.audioManager;
                    if (audioManager != null) {
                        Intrinsics.checkNotNull(audioFocusRequestBuild);
                        audioManager.requestAudioFocus(audioFocusRequestBuild);
                    }
                } else {
                    AudioManager audioManager2 = this.audioManager;
                    if (audioManager2 != null) {
                        audioManager2.requestAudioFocus(null, 3, 3);
                    }
                }
            }
            MediaPlayer mediaPlayer3 = this.mp;
            Intrinsics.checkNotNull(mediaPlayer3);
            mediaPlayer3.setDataSource(url);
            MediaPlayer mediaPlayer4 = this.mp;
            Intrinsics.checkNotNull(mediaPlayer4);
            mediaPlayer4.setAudioAttributes(audioAttributesBuild);
            MediaPlayer mediaPlayer5 = this.mp;
            Intrinsics.checkNotNull(mediaPlayer5);
            mediaPlayer5.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: fast.dic.dict.utils.FDAudioPlayerManager$$ExternalSyntheticLambda0
                @Override // android.media.MediaPlayer.OnCompletionListener
                public final void onCompletion(MediaPlayer mediaPlayer6) {
                    FDAudioPlayerManager.audioPlayerAsync$lambda$0(completionListener, this, url, mediaPlayer6);
                }
            });
            MediaPlayer mediaPlayer6 = this.mp;
            Intrinsics.checkNotNull(mediaPlayer6);
            mediaPlayer6.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: fast.dic.dict.utils.FDAudioPlayerManager$$ExternalSyntheticLambda1
                @Override // android.media.MediaPlayer.OnPreparedListener
                public final void onPrepared(MediaPlayer mediaPlayer7) {
                    FDAudioPlayerManager.audioPlayerAsync$lambda$1(mediaPlayer7);
                }
            });
            MediaPlayer mediaPlayer7 = this.mp;
            Intrinsics.checkNotNull(mediaPlayer7);
            mediaPlayer7.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: fast.dic.dict.utils.FDAudioPlayerManager$$ExternalSyntheticLambda2
                @Override // android.media.MediaPlayer.OnErrorListener
                public final boolean onError(MediaPlayer mediaPlayer8, int i, int i2) {
                    return FDAudioPlayerManager.audioPlayerAsync$lambda$2(this.f$0, mediaPlayer8, i, i2);
                }
            });
            MediaPlayer mediaPlayer8 = this.mp;
            Intrinsics.checkNotNull(mediaPlayer8);
            mediaPlayer8.prepareAsync();
        } catch (Exception e) {
            e.printStackTrace();
            releaseAudioFocus();
            this.logger.error("Error happening audioPlayerAsync: %s", e.getMessage());
        }
    }

    static final void audioPlayerAsync$lambda$0(MediaPlayer.OnCompletionListener onCompletionListener, FDAudioPlayerManager fDAudioPlayerManager, String str, MediaPlayer mediaPlayer) {
        onCompletionListener.onCompletion(mediaPlayer);
        fDAudioPlayerManager.releaseAudioFocus();
        fDAudioPlayerManager.logger.debug("Playing %s audio is completed.", str);
    }

    static final void audioPlayerAsync$lambda$1(MediaPlayer obj) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        obj.start();
    }

    static final boolean audioPlayerAsync$lambda$2(FDAudioPlayerManager fDAudioPlayerManager, MediaPlayer mediaPlayer, int i, int i2) {
        if (i2 == -1010) {
            System.out.print((Object) "=========== MEDIA_ERROR_UNSUPPORTED");
        } else if (i2 == -1007) {
            System.out.print((Object) "=========== MEDIA_ERROR_MALFORMED");
        } else if (i2 == -1004) {
            System.out.print((Object) "=========== MEDIA_ERROR_IO");
        } else if (i2 == -110) {
            System.out.print((Object) "=========== MEDIA_ERROR_TIMED_OUT");
        }
        fDAudioPlayerManager.releaseAudioFocus();
        return false;
    }

    private final void releaseAudioFocus() {
        AudioManager audioManager;
        if (Build.VERSION.SDK_INT >= 26) {
            AudioFocusRequest audioFocusRequest = this.audioFocusRequest;
            if (audioFocusRequest == null || (audioManager = this.audioManager) == null) {
                return;
            }
            audioManager.abandonAudioFocusRequest(audioFocusRequest);
            return;
        }
        AudioManager audioManager2 = this.audioManager;
        if (audioManager2 != null) {
            audioManager2.abandonAudioFocus(null);
        }
    }

    /* JADX INFO: compiled from: FDAudioPlayerManager.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;", "", "<init>", "()V", "get", "Lfast/dic/dict/utils/FDAudioPlayerManager;", "getGet", "()Lfast/dic/dict/utils/FDAudioPlayerManager;", "setGet", "(Lfast/dic/dict/utils/FDAudioPlayerManager;)V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FDAudioPlayerManager getGet() {
            return FDAudioPlayerManager.get;
        }

        public final void setGet(FDAudioPlayerManager fDAudioPlayerManager) {
            Intrinsics.checkNotNullParameter(fDAudioPlayerManager, "<set-?>");
            FDAudioPlayerManager.get = fDAudioPlayerManager;
        }
    }
}
