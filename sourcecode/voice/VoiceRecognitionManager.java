package fast.dic.dict.voice;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.speech.RecognitionListener;
import android.speech.SpeechRecognizer;
import com.couchbase.lite.internal.core.C4Constants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.L6;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.utils.LoggerKt;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VoiceRecognitionManager.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0013B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/voice/VoiceRecognitionManager;", "", Names.CONTEXT, "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;", "<init>", "(Landroid/content/Context;Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;)V", "speechRecognizer", "Landroid/speech/SpeechRecognizer;", "mainHandler", "Landroid/os/Handler;", MobileAdsBridgeBase.initializeMethodName, "", "startListening", L6.q, "", "stopListening", "destroy", C4Constants.LogDomain.LISTENER, "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class VoiceRecognitionManager {
    private final Context context;
    private final Listener listener;
    private final Handler mainHandler;
    private SpeechRecognizer speechRecognizer;

    /* JADX INFO: compiled from: VoiceRecognitionManager.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\u0003H&¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;", "", "onRmsChanged", "", "value", "", "onPartialResult", "text", "", "onResult", "onError", IronSourceConstants.EVENTS_ERROR_CODE, "", "onReadyForSpeech", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public interface Listener {
        void onError(int errorCode);

        void onPartialResult(String text);

        void onReadyForSpeech();

        void onResult(String text);

        void onRmsChanged(float value);
    }

    public VoiceRecognitionManager(Context context, Listener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.context = context;
        this.listener = listener;
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    public final void initialize() {
        if (this.speechRecognizer != null) {
            return;
        }
        SpeechRecognizer speechRecognizerCreateSpeechRecognizer = SpeechRecognizer.createSpeechRecognizer(this.context);
        this.speechRecognizer = speechRecognizerCreateSpeechRecognizer;
        if (speechRecognizerCreateSpeechRecognizer != null) {
            speechRecognizerCreateSpeechRecognizer.setRecognitionListener(new RecognitionListener() { // from class: fast.dic.dict.voice.VoiceRecognitionManager.initialize.1
                @Override // android.speech.RecognitionListener
                public void onBeginningOfSpeech() {
                }

                @Override // android.speech.RecognitionListener
                public void onBufferReceived(byte[] bytes) {
                    Intrinsics.checkNotNullParameter(bytes, "bytes");
                }

                @Override // android.speech.RecognitionListener
                public void onEndOfSpeech() {
                }

                @Override // android.speech.RecognitionListener
                public void onEvent(int i, Bundle bundle) {
                    Intrinsics.checkNotNullParameter(bundle, "bundle");
                }

                @Override // android.speech.RecognitionListener
                public void onReadyForSpeech(Bundle bundle) {
                    Intrinsics.checkNotNullParameter(bundle, "bundle");
                    VoiceRecognitionManager.this.listener.onReadyForSpeech();
                }

                @Override // android.speech.RecognitionListener
                public void onRmsChanged(float v) {
                    VoiceRecognitionManager.this.listener.onRmsChanged(v);
                }

                @Override // android.speech.RecognitionListener
                public void onError(int i) {
                    LoggerKt.getLogger().warn("Speech onError : " + i, new Object[0]);
                    VoiceRecognitionManager.this.listener.onError(i);
                }

                @Override // android.speech.RecognitionListener
                public void onResults(Bundle bundle) {
                    String str;
                    Intrinsics.checkNotNullParameter(bundle, "bundle");
                    ArrayList<String> stringArrayList = bundle.getStringArrayList("results_recognition");
                    if (stringArrayList == null || (str = stringArrayList.get(0)) == null) {
                        str = "";
                    }
                    VoiceRecognitionManager.this.listener.onResult(str);
                }

                @Override // android.speech.RecognitionListener
                public void onPartialResults(Bundle bundle) {
                    String str;
                    Intrinsics.checkNotNullParameter(bundle, "bundle");
                    ArrayList<String> stringArrayList = bundle.getStringArrayList("results_recognition");
                    if (stringArrayList == null || (str = stringArrayList.get(0)) == null) {
                        str = "";
                    }
                    VoiceRecognitionManager.this.listener.onPartialResult(str);
                }
            });
        }
    }

    public final void startListening(String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        if (this.speechRecognizer == null) {
            initialize();
        }
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("calling_package", this.context.getPackageName());
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        intent.putExtra("android.speech.extra.LANGUAGE", lang);
        intent.putExtra("android.speech.extra.EXTRA_ADDITIONAL_LANGUAGES", new String[]{"fa-IR", "en-US"});
        try {
            SpeechRecognizer speechRecognizer = this.speechRecognizer;
            if (speechRecognizer != null) {
                speechRecognizer.startListening(intent);
            }
        } catch (Exception e) {
            e.printStackTrace();
            try {
                intent.putExtra("android.speech.extra.PREFER_OFFLINE", true);
                SpeechRecognizer speechRecognizer2 = this.speechRecognizer;
                if (speechRecognizer2 != null) {
                    speechRecognizer2.startListening(intent);
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                Boolean.valueOf(this.mainHandler.post(new Runnable() { // from class: fast.dic.dict.voice.VoiceRecognitionManager$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.listener.onError(5);
                    }
                }));
            }
        }
    }

    public final void stopListening() {
        try {
            SpeechRecognizer speechRecognizer = this.speechRecognizer;
            if (speechRecognizer != null) {
                speechRecognizer.cancel();
            }
            SpeechRecognizer speechRecognizer2 = this.speechRecognizer;
            if (speechRecognizer2 != null) {
                speechRecognizer2.stopListening();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void destroy() {
        try {
            SpeechRecognizer speechRecognizer = this.speechRecognizer;
            if (speechRecognizer != null) {
                speechRecognizer.destroy();
            }
            this.speechRecognizer = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
