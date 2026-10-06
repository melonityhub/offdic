package fast.dic.dict.fragments;

import android.app.Application;
import android.content.Context;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.ironsource.L6;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.yandex.div.core.timer.TimerController;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.voice.VoiceRecognitionManager;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: VoiceRecognitionViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0002\b\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\nJ\u0006\u0010\u001b\u001a\u00020\u0019J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0013H\u0016J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\nH\u0016J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\nH\u0016J\u0010\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020#H\u0016J\b\u0010$\u001a\u00020\u0019H\u0016J\b\u0010%\u001a\u00020\u0019H\u0014R\u0016\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\f¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\f¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000eR\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000Ê\u0001\u0002\b'¨\u0006&"}, d2 = {"Lfast/dic/dict/fragments/VoiceRecognitionViewModel;", "Landroidx/lifecycle/AndroidViewModel;", "Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;", "application", "Landroid/app/Application;", "<init>", "(Landroid/app/Application;)V", "Ljavax/inject/Inject;", "_detectedSentence", "Landroidx/lifecycle/MutableLiveData;", "", "detectedSentence", "Landroidx/lifecycle/LiveData;", "getDetectedSentence", "()Landroidx/lifecycle/LiveData;", "_isListening", "", "isListening", "_rms", "", "rms", "getRms", "manager", "Lfast/dic/dict/voice/VoiceRecognitionManager;", "start", "", L6.q, TimerController.STOP_COMMAND, "onRmsChanged", "value", "onPartialResult", "text", "onResult", "onError", IronSourceConstants.EVENTS_ERROR_CODE, "", "onReadyForSpeech", "onCleared", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class VoiceRecognitionViewModel extends AndroidViewModel implements VoiceRecognitionManager.Listener {
    private final MutableLiveData<String> _detectedSentence;
    private final MutableLiveData<Boolean> _isListening;
    private final MutableLiveData<Float> _rms;
    private final LiveData<String> detectedSentence;
    private final LiveData<Boolean> isListening;
    private final VoiceRecognitionManager manager;
    private final LiveData<Float> rms;

    @Override // fast.dic.dict.voice.VoiceRecognitionManager.Listener
    public void onReadyForSpeech() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public VoiceRecognitionViewModel(Application application) {
        super(application);
        Intrinsics.checkNotNullParameter(application, "application");
        MutableLiveData<String> mutableLiveData = new MutableLiveData<>(null);
        this._detectedSentence = mutableLiveData;
        this.detectedSentence = mutableLiveData;
        MutableLiveData<Boolean> mutableLiveData2 = new MutableLiveData<>(false);
        this._isListening = mutableLiveData2;
        this.isListening = mutableLiveData2;
        MutableLiveData<Float> mutableLiveData3 = new MutableLiveData<>(Float.valueOf(0.0f));
        this._rms = mutableLiveData3;
        this.rms = mutableLiveData3;
        Context applicationContext = application.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        VoiceRecognitionManager voiceRecognitionManager = new VoiceRecognitionManager(applicationContext, this);
        this.manager = voiceRecognitionManager;
        voiceRecognitionManager.initialize();
    }

    public final LiveData<String> getDetectedSentence() {
        return this.detectedSentence;
    }

    public final LiveData<Boolean> isListening() {
        return this.isListening;
    }

    public final LiveData<Float> getRms() {
        return this.rms;
    }

    public final void start(String lang) {
        Intrinsics.checkNotNullParameter(lang, "lang");
        LoggerKt.getLogger().debug("ViewModel start listening lang=" + lang, new Object[0]);
        this._isListening.setValue(true);
        this.manager.startListening(lang);
    }

    public final void stop() {
        LoggerKt.getLogger().debug("ViewModel stop listening", new Object[0]);
        this._isListening.setValue(false);
        this.manager.stopListening();
    }

    @Override // fast.dic.dict.voice.VoiceRecognitionManager.Listener
    public void onRmsChanged(float value) {
        this._rms.postValue(Float.valueOf(value));
    }

    @Override // fast.dic.dict.voice.VoiceRecognitionManager.Listener
    public void onPartialResult(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        LoggerKt.getLogger().debug("onPartialResult: " + text, new Object[0]);
    }

    @Override // fast.dic.dict.voice.VoiceRecognitionManager.Listener
    public void onResult(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this._detectedSentence.postValue(text);
        this._isListening.postValue(false);
    }

    @Override // fast.dic.dict.voice.VoiceRecognitionManager.Listener
    public void onError(int errorCode) {
        LoggerKt.getLogger().warn("VoiceRecognition error: " + errorCode, new Object[0]);
        this._isListening.postValue(false);
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        this.manager.destroy();
        super.onCleared();
    }
}
