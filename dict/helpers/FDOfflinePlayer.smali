.class public final Lfast/dic/dict/helpers/FDOfflinePlayer;
.super Ljava/lang/Object;
.source "FDOfflinePlayer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/helpers/FDOfflinePlayer$OnInitListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDOfflinePlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDOfflinePlayer.kt\nfast/dic/dict/helpers/FDOfflinePlayer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n2068#2,2:188\n*S KotlinDebug\n*F\n+ 1 FDOfflinePlayer.kt\nfast/dic/dict/helpers/FDOfflinePlayer\n*L\n155#1:188,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u00014B#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0008\u0001\u0010\u0004\u001a\u00020\u0005:\u0002\u0008\u0006\u001a\u0002\u0008\t\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010*\u001a\u00020\u000c2\u0006\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020\u001bJ\u0006\u0010-\u001a\u00020\u000cJ\u0008\u0010.\u001a\u00020\u000cH\u0002J\u0010\u0010/\u001a\u00020(2\u0006\u00100\u001a\u000201H\u0002J\u0008\u00102\u001a\u000203H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0004\u001a\u00020\u00058\u0002X\u0083\u0004\u0092\u0002\u0002\u0008\u0006\u00a2\u0006\u0002\n\u0000R \u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R \u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R \u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082D\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\'\u001a\u00020(\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010)\u00a8\u00065"
    }
    d2 = {
        "Lfast/dic/dict/helpers/FDOfflinePlayer;",
        "",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "context",
        "Landroid/content/Context;",
        "Ldagger/hilt/android/qualifiers/ApplicationContext;",
        "<init>",
        "(Lfast/dic/dict/database/LocalStorage;Landroid/content/Context;)V",
        "Ljavax/inject/Inject;",
        "onStartPlayer",
        "Lkotlin/Function0;",
        "",
        "getOnStartPlayer",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnStartPlayer",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onErrorPlayer",
        "getOnErrorPlayer",
        "setOnErrorPlayer",
        "onFinishPlayer",
        "getOnFinishPlayer",
        "setOnFinishPlayer",
        "LIMIT_CHAR",
        "",
        "sentenceQueue",
        "Lkotlin/collections/ArrayDeque;",
        "",
        "value",
        "Landroidx/lifecycle/LifecycleOwner;",
        "lifecycle",
        "getLifecycle",
        "()Landroidx/lifecycle/LifecycleOwner;",
        "setLifecycle",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "lifecycleEventObserver",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "player",
        "Landroid/speech/tts/TextToSpeech;",
        "isSpeaking",
        "",
        "()Z",
        "speak",
        "content",
        "language",
        "stop",
        "play",
        "setSpeechToTextLanguage",
        "locale",
        "Ljava/util/Locale;",
        "getOfflineSpeed",
        "",
        "OnInitListener",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final LIMIT_CHAR:I

.field private final context:Landroid/content/Context;
    .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
    .end annotation
.end field

.field private final isSpeaking:Z

.field private lifecycle:Landroidx/lifecycle/LifecycleOwner;

.field private final lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

.field private final localStorage:Lfast/dic/dict/database/LocalStorage;

.field private onErrorPlayer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onFinishPlayer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onStartPlayer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private player:Landroid/speech/tts/TextToSpeech;

.field private final sentenceQueue:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfast/dic/dict/database/LocalStorage;Landroid/content/Context;)V
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "localStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->localStorage:Lfast/dic/dict/database/LocalStorage;

    .line 29
    iput-object p2, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->context:Landroid/content/Context;

    .line 31
    new-instance p1, Lfast/dic/dict/helpers/FDOfflinePlayer$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lfast/dic/dict/helpers/FDOfflinePlayer$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->onStartPlayer:Lkotlin/jvm/functions/Function0;

    .line 32
    new-instance p1, Lfast/dic/dict/helpers/FDOfflinePlayer$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lfast/dic/dict/helpers/FDOfflinePlayer$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->onErrorPlayer:Lkotlin/jvm/functions/Function0;

    .line 33
    new-instance p1, Lfast/dic/dict/helpers/FDOfflinePlayer$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lfast/dic/dict/helpers/FDOfflinePlayer$$ExternalSyntheticLambda2;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->onFinishPlayer:Lkotlin/jvm/functions/Function0;

    const/16 p1, 0x3e8

    .line 35
    iput p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->LIMIT_CHAR:I

    .line 36
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->sentenceQueue:Lkotlin/collections/ArrayDeque;

    .line 46
    new-instance p1, Lfast/dic/dict/helpers/FDOfflinePlayer$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lfast/dic/dict/helpers/FDOfflinePlayer$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/helpers/FDOfflinePlayer;)V

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 54
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    sget-object v0, Lfast/dic/dict/helpers/FDOfflinePlayer$OnInitListener;->INSTANCE:Lfast/dic/dict/helpers/FDOfflinePlayer$OnInitListener;

    check-cast v0, Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {p1, p2, v0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->player:Landroid/speech/tts/TextToSpeech;

    .line 70
    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result p1

    iput-boolean p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->isSpeaking:Z

    .line 73
    iget-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->player:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Lfast/dic/dict/helpers/FDOfflinePlayer;->getOfflineSpeed()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 74
    iget-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->player:Landroid/speech/tts/TextToSpeech;

    new-instance p2, Lfast/dic/dict/helpers/FDOfflinePlayer$1;

    invoke-direct {p2, p0}, Lfast/dic/dict/helpers/FDOfflinePlayer$1;-><init>(Lfast/dic/dict/helpers/FDOfflinePlayer;)V

    check-cast p2, Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {p1, p2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    return-void
.end method

.method public static final synthetic access$getLIMIT_CHAR$p(Lfast/dic/dict/helpers/FDOfflinePlayer;)I
    .locals 0

    .line 27
    iget p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->LIMIT_CHAR:I

    return p0
.end method

.method public static final synthetic access$getPlayer$p(Lfast/dic/dict/helpers/FDOfflinePlayer;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 27
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->player:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method public static final synthetic access$getSentenceQueue$p(Lfast/dic/dict/helpers/FDOfflinePlayer;)Lkotlin/collections/ArrayDeque;
    .locals 0

    .line 27
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->sentenceQueue:Lkotlin/collections/ArrayDeque;

    return-object p0
.end method

.method public static final synthetic access$play(Lfast/dic/dict/helpers/FDOfflinePlayer;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lfast/dic/dict/helpers/FDOfflinePlayer;->play()V

    return-void
.end method

.method public static final synthetic access$setSpeechToTextLanguage(Lfast/dic/dict/helpers/FDOfflinePlayer;Ljava/util/Locale;)Z
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lfast/dic/dict/helpers/FDOfflinePlayer;->setSpeechToTextLanguage(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method private final getOfflineSpeed()F
    .locals 1

    .line 185
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->getOfflineSpeechSpeed()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    return p0
.end method

.method static final lifecycleEventObserver$lambda$0(Lfast/dic/dict/helpers/FDOfflinePlayer;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    .line 49
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->player:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->stop()I

    return-void

    .line 50
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_1

    .line 51
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->player:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_1
    return-void
.end method

.method static final onErrorPlayer$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 32
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onFinishPlayer$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 33
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onStartPlayer$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 31
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final play()V
    .locals 7

    const-string v0, "=======>>>>>>>>>>>>> player queue size = "

    const/4 v1, 0x0

    .line 151
    :try_start_0
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v2

    iget-object v3, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->sentenceQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->sentenceQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 154
    iget-object v2, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->player:Landroid/speech/tts/TextToSpeech;

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->sentenceQueue:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/lang/Iterable;

    .line 188
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    iget-object v3, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->player:Landroid/speech/tts/TextToSpeech;

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6, v4, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->sentenceQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error play sound: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error play sound "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->onErrorPlayer:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final setSpeechToTextLanguage(Ljava/util/Locale;)Z
    .locals 6

    .line 168
    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->player:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Switched to `"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "` for speech to text engine with result "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 170
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Speech to Text: Fail to switch new locale to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Fail to switch new locale to "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "English (United Kingdom)"

    goto :goto_1

    :cond_2
    const-string p1, "English (United States)"

    .line 175
    :goto_1
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->context:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lfast/dic/dict/utils/FDAlertManger;->showErrorForSpeechToTextAlert(Landroid/content/Context;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    .line 38
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->lifecycle:Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method

.method public final getOnErrorPlayer()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->onErrorPlayer:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnFinishPlayer()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->onFinishPlayer:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getOnStartPlayer()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->onStartPlayer:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final isSpeaking()Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->isSpeaking:Z

    return p0
.end method

.method public final setLifecycle(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    .line 40
    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->lifecycle:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_0

    .line 42
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 43
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->lifecycleEventObserver:Landroidx/lifecycle/LifecycleEventObserver;

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method public final setOnErrorPlayer(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->onErrorPlayer:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnFinishPlayer(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->onFinishPlayer:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnStartPlayer(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->onStartPlayer:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final speak(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->player:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->player:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 97
    iget-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->sentenceQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 98
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->onErrorPlayer:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->lifecycle:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, p2, v2}, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;-><init>(Lfast/dic/dict/helpers/FDOfflinePlayer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method public final stop()V
    .locals 0

    .line 146
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer;->player:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->stop()I

    return-void
.end method
