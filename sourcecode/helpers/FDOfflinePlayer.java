package fast.dic.dict.helpers;

import android.content.Context;
import android.speech.tts.TextToSpeech;
import android.speech.tts.UtteranceProgressListener;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleCoroutineScope;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.mlkit.nl.translate.TranslateLanguage;
import com.yandex.div.core.dagger.Names;
import com.yandex.div.core.timer.TimerController;
import dagger.hilt.android.qualifiers.ApplicationContext;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.StringExtKt;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: FDOfflinePlayer.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u00014B#\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\b\u0001\u0010\u0004\u001a\u00020\u0005:\u0002\b\u0006\u001a\u0002\b\t¢\u0006\u0004\b\u0007\u0010\bJ\u0016\u0010*\u001a\u00020\f2\u0006\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020\u001bJ\u0006\u0010-\u001a\u00020\fJ\b\u0010.\u001a\u00020\fH\u0002J\u0010\u0010/\u001a\u00020(2\u0006\u00100\u001a\u000201H\u0002J\b\u00102\u001a\u000203H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0015\u0010\u0004\u001a\u00020\u00058\u0002X\u0083\u0004\u0092\u0002\u0002\b\u0006¢\u0006\u0002\n\u0000R \u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R \u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R \u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u000e\"\u0004\b\u0016\u0010\u0010R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010'\u001a\u00020(¢\u0006\b\n\u0000\u001a\u0004\b'\u0010)¨\u00065"}, d2 = {"Lfast/dic/dict/helpers/FDOfflinePlayer;", "", "localStorage", "Lfast/dic/dict/database/LocalStorage;", Names.CONTEXT, "Landroid/content/Context;", "Ldagger/hilt/android/qualifiers/ApplicationContext;", "<init>", "(Lfast/dic/dict/database/LocalStorage;Landroid/content/Context;)V", "Ljavax/inject/Inject;", "onStartPlayer", "Lkotlin/Function0;", "", "getOnStartPlayer", "()Lkotlin/jvm/functions/Function0;", "setOnStartPlayer", "(Lkotlin/jvm/functions/Function0;)V", "onErrorPlayer", "getOnErrorPlayer", "setOnErrorPlayer", "onFinishPlayer", "getOnFinishPlayer", "setOnFinishPlayer", "LIMIT_CHAR", "", "sentenceQueue", "Lkotlin/collections/ArrayDeque;", "", "value", "Landroidx/lifecycle/LifecycleOwner;", "lifecycle", "getLifecycle", "()Landroidx/lifecycle/LifecycleOwner;", "setLifecycle", "(Landroidx/lifecycle/LifecycleOwner;)V", "lifecycleEventObserver", "Landroidx/lifecycle/LifecycleEventObserver;", "player", "Landroid/speech/tts/TextToSpeech;", "isSpeaking", "", "()Z", "speak", "content", "language", TimerController.STOP_COMMAND, "play", "setSpeechToTextLanguage", "locale", "Ljava/util/Locale;", "getOfflineSpeed", "", "OnInitListener", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDOfflinePlayer {
    private final int LIMIT_CHAR;

    @ApplicationContext
    private final Context context;
    private final boolean isSpeaking;
    private LifecycleOwner lifecycle;
    private final LifecycleEventObserver lifecycleEventObserver;
    private final LocalStorage localStorage;
    private Function0<Unit> onErrorPlayer;
    private Function0<Unit> onFinishPlayer;
    private Function0<Unit> onStartPlayer;
    private TextToSpeech player;
    private final ArrayDeque<String> sentenceQueue;

    @Inject
    public FDOfflinePlayer(LocalStorage localStorage, @ApplicationContext Context context) {
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        Intrinsics.checkNotNullParameter(context, "context");
        this.localStorage = localStorage;
        this.context = context;
        this.onStartPlayer = new Function0() { // from class: fast.dic.dict.helpers.FDOfflinePlayer$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.onErrorPlayer = new Function0() { // from class: fast.dic.dict.helpers.FDOfflinePlayer$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.onFinishPlayer = new Function0() { // from class: fast.dic.dict.helpers.FDOfflinePlayer$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.LIMIT_CHAR = 1000;
        this.sentenceQueue = new ArrayDeque<>();
        this.lifecycleEventObserver = new LifecycleEventObserver() { // from class: fast.dic.dict.helpers.FDOfflinePlayer$$ExternalSyntheticLambda3
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                FDOfflinePlayer.lifecycleEventObserver$lambda$0(this.f$0, lifecycleOwner, event);
            }
        };
        TextToSpeech textToSpeech = new TextToSpeech(context, OnInitListener.INSTANCE);
        this.player = textToSpeech;
        this.isSpeaking = textToSpeech.isSpeaking();
        this.player.setSpeechRate(getOfflineSpeed());
        this.player.setOnUtteranceProgressListener(new UtteranceProgressListener() { // from class: fast.dic.dict.helpers.FDOfflinePlayer.1
            @Override // android.speech.tts.UtteranceProgressListener
            public void onDone(String utteranceId) {
                Intrinsics.checkNotNullParameter(utteranceId, "utteranceId");
                LoggerKt.getLogger().debug("=======>>>>>>>>>>>>> Offline player is done = " + utteranceId, new Object[0]);
                FDOfflinePlayer.this.getOnFinishPlayer().invoke();
            }

            @Override // android.speech.tts.UtteranceProgressListener
            @Deprecated(message = "Deprecated in Java")
            public void onError(String utteranceId) {
                Intrinsics.checkNotNullParameter(utteranceId, "utteranceId");
                LoggerKt.getLogger().error("=======>>>>>>>>>>>>> Offline player has error = " + utteranceId, new Object[0]);
                FDOfflinePlayer.this.getOnErrorPlayer().invoke();
            }

            @Override // android.speech.tts.UtteranceProgressListener
            public void onStart(String utteranceId) {
                Intrinsics.checkNotNullParameter(utteranceId, "utteranceId");
                LoggerKt.getLogger().debug("=======>>>>>>>>>>>>> Offline player started = " + utteranceId, new Object[0]);
                FDOfflinePlayer.this.getOnStartPlayer().invoke();
            }
        });
    }

    public final Function0<Unit> getOnStartPlayer() {
        return this.onStartPlayer;
    }

    public final void setOnStartPlayer(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onStartPlayer = function0;
    }

    public final Function0<Unit> getOnErrorPlayer() {
        return this.onErrorPlayer;
    }

    public final void setOnErrorPlayer(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onErrorPlayer = function0;
    }

    public final Function0<Unit> getOnFinishPlayer() {
        return this.onFinishPlayer;
    }

    public final void setOnFinishPlayer(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onFinishPlayer = function0;
    }

    public final LifecycleOwner getLifecycle() {
        return this.lifecycle;
    }

    public final void setLifecycle(LifecycleOwner lifecycleOwner) {
        Lifecycle lifecycle;
        Lifecycle lifecycle2;
        this.lifecycle = lifecycleOwner;
        if (lifecycleOwner != null && (lifecycle2 = lifecycleOwner.get$lifecycle()) != null) {
            lifecycle2.removeObserver(this.lifecycleEventObserver);
        }
        if (lifecycleOwner == null || (lifecycle = lifecycleOwner.get$lifecycle()) == null) {
            return;
        }
        lifecycle.addObserver(this.lifecycleEventObserver);
    }

    static final void lifecycleEventObserver$lambda$0(FDOfflinePlayer fDOfflinePlayer, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<unused var>");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.ON_STOP) {
            fDOfflinePlayer.player.stop();
        } else if (event == Lifecycle.Event.ON_PAUSE) {
            fDOfflinePlayer.player.stop();
        }
    }

    /* JADX INFO: compiled from: FDOfflinePlayer.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"Lfast/dic/dict/helpers/FDOfflinePlayer$OnInitListener;", "Landroid/speech/tts/TextToSpeech$OnInitListener;", "<init>", "()V", "onInit", "", "status", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    private static final class OnInitListener implements TextToSpeech.OnInitListener {
        public static final OnInitListener INSTANCE = new OnInitListener();

        private OnInitListener() {
        }

        @Override // android.speech.tts.TextToSpeech.OnInitListener
        public void onInit(int status) {
            try {
                if (status == 0) {
                    LoggerKt.getLogger().debug("Text to speech configured successfully.", new Object[0]);
                } else {
                    FirebaseCrashlytics.getInstance().log("Fail to configure text to speech! status -> " + status);
                    LoggerKt.getLogger().debug("Fail to configure text to speech! status -> " + status, new Object[0]);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: renamed from: isSpeaking, reason: from getter */
    public final boolean getIsSpeaking() {
        return this.isSpeaking;
    }

    public final void speak(String content, String language) {
        LifecycleCoroutineScope lifecycleScope;
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(language, "language");
        if (this.player.isSpeaking()) {
            this.player.stop();
            this.sentenceQueue.clear();
            this.onErrorPlayer.invoke();
        } else {
            LifecycleOwner lifecycleOwner = this.lifecycle;
            if (lifecycleOwner == null || (lifecycleScope = LifecycleOwnerKt.getLifecycleScope(lifecycleOwner)) == null) {
                return;
            }
            BuildersKt__Builders_commonKt.launch$default(lifecycleScope, null, null, new C45141(content, language, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.helpers.FDOfflinePlayer$speak$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FDOfflinePlayer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.helpers.FDOfflinePlayer$speak$1", f = "FDOfflinePlayer.kt", i = {}, l = {105}, m = "invokeSuspend", n = {}, nl = {110}, s = {}, v = 2)
    static final class C45141 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $content;
        final /* synthetic */ String $language;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C45141(String str, String str2, Continuation<? super C45141> continuation) {
            super(2, continuation);
            this.$content = str;
            this.$language = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FDOfflinePlayer.this.new C45141(this.$content, this.$language, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45141) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Locale locale;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    obj = TimeoutKt.withTimeout(600L, new C14111(FDOfflinePlayer.this, this.$content, null), this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                ((Boolean) obj).booleanValue();
            } catch (Exception unused) {
                FDOfflinePlayer.this.sentenceQueue.add(this.$content);
            }
            LoggerKt.getLogger().debug("start speaking sentence with queue size " + FDOfflinePlayer.this.sentenceQueue.size(), new Object[0]);
            try {
                if (Intrinsics.areEqual(this.$language, "br")) {
                    locale = new Locale(TranslateLanguage.ENGLISH, "GB");
                } else {
                    locale = new Locale(TranslateLanguage.ENGLISH, "US");
                }
                boolean speechToTextLanguage = FDOfflinePlayer.this.setSpeechToTextLanguage(locale);
                if (!speechToTextLanguage) {
                    FDOfflinePlayer.this.getOnErrorPlayer().invoke();
                }
                if (FDOfflinePlayer.this.player.isSpeaking()) {
                    FDOfflinePlayer.this.player.stop();
                }
                if (speechToTextLanguage) {
                    FDOfflinePlayer.this.play();
                }
            } catch (Exception e) {
                e.printStackTrace();
                LoggerKt.getLogger().error("Error play sound " + e.getMessage(), new Object[0]);
                FirebaseCrashlytics.getInstance().log("Error play sound (" + StringsKt.take(this.$content, 40) + "), (" + this.$language + ") -> error: " + e.getMessage());
                FDOfflinePlayer.this.getOnErrorPlayer().invoke();
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: fast.dic.dict.helpers.FDOfflinePlayer$speak$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: FDOfflinePlayer.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.helpers.FDOfflinePlayer$speak$1$1", f = "FDOfflinePlayer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
        static final class C14111 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
            final /* synthetic */ String $content;
            int label;
            final /* synthetic */ FDOfflinePlayer this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14111(FDOfflinePlayer fDOfflinePlayer, String str, Continuation<? super C14111> continuation) {
                super(2, continuation);
                this.this$0 = fDOfflinePlayer;
                this.$content = str;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C14111(this.this$0, this.$content, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
                return ((C14111) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(this.this$0.sentenceQueue.addAll(StringExtKt.splitTextIntoChunks(this.$content, this.this$0.LIMIT_CHAR)));
            }
        }
    }

    public final void stop() {
        this.player.stop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void play() {
        try {
            LoggerKt.getLogger().debug("=======>>>>>>>>>>>>> player queue size = " + this.sentenceQueue.size(), new Object[0]);
            String strRemoveFirst = this.sentenceQueue.removeFirst();
            this.player.speak(strRemoveFirst, 0, null, strRemoveFirst);
            for (String str : this.sentenceQueue) {
                this.player.speak(str, 1, null, str);
            }
            this.sentenceQueue.clear();
        } catch (Exception e) {
            e.printStackTrace();
            LoggerKt.getLogger().error("Error play sound: " + e.getMessage(), new Object[0]);
            FirebaseCrashlytics.getInstance().log("Error play sound " + e.getMessage());
            this.onErrorPlayer.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean setSpeechToTextLanguage(Locale locale) {
        int language = this.player.setLanguage(locale);
        if (language == -1 || language == -2 || language != 1) {
            FirebaseCrashlytics.getInstance().log("Speech to Text: Fail to switch new locale to " + locale + " with result " + language);
            LoggerKt.getLogger().error("Fail to switch new locale to " + locale + " with result " + language, new Object[0]);
            FDAlertManger.INSTANCE.showErrorForSpeechToTextAlert(this.context, Intrinsics.areEqual(locale, Locale.UK) ? "English (United Kingdom)" : "English (United States)");
            return false;
        }
        LoggerKt.getLogger().debug("Switched to `" + locale + "` for speech to text engine with result " + language, new Object[0]);
        return true;
    }

    private final float getOfflineSpeed() {
        return this.localStorage.getOfflineSpeechSpeed() * 0.5f;
    }
}
