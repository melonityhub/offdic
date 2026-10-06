.class public final Lfast/dic/dict/voice/VoiceRecognitionManager;
.super Ljava/lang/Object;
.source "VoiceRecognitionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u0013B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u0012\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lfast/dic/dict/voice/VoiceRecognitionManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;",
        "<init>",
        "(Landroid/content/Context;Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;)V",
        "speechRecognizer",
        "Landroid/speech/SpeechRecognizer;",
        "mainHandler",
        "Landroid/os/Handler;",
        "initialize",
        "",
        "startListening",
        "lang",
        "",
        "stopListening",
        "destroy",
        "Listener",
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
.field private final context:Landroid/content/Context;

.field private final listener:Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;

.field private final mainHandler:Landroid/os/Handler;

.field private speechRecognizer:Landroid/speech/SpeechRecognizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->listener:Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$getListener$p(Lfast/dic/dict/voice/VoiceRecognitionManager;)Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;
    .locals 0

    .line 13
    iget-object p0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->listener:Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;

    return-object p0
.end method

.method static final startListening$lambda$1(Lfast/dic/dict/voice/VoiceRecognitionManager;)V
    .locals 1

    .line 88
    iget-object p0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->listener:Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;->onError(I)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 104
    :try_start_0
    iget-object v0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final initialize()V
    .locals 2

    .line 27
    iget-object v0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_1

    .line 29
    new-instance v1, Lfast/dic/dict/voice/VoiceRecognitionManager$initialize$1;

    invoke-direct {v1, p0}, Lfast/dic/dict/voice/VoiceRecognitionManager$initialize$1;-><init>(Lfast/dic/dict/voice/VoiceRecognitionManager;)V

    check-cast v1, Landroid/speech/RecognitionListener;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final startListening(Ljava/lang/String;)V
    .locals 3

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/voice/VoiceRecognitionManager;->initialize()V

    .line 67
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "calling_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    .line 71
    const-string v2, "free_form"

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 74
    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fa-IR"

    aput-object v2, p1, v1

    const-string v1, "en-US"

    const/4 v2, 0x1

    aput-object v1, p1, v2

    const-string v1, "android.speech.extra.EXTRA_ADDITIONAL_LANGUAGES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :try_start_0
    iget-object p1, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :try_start_1
    const-string p1, "android.speech.extra.PREFER_OFFLINE"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    iget-object p1, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    iget-object p1, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lfast/dic/dict/voice/VoiceRecognitionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/voice/VoiceRecognitionManager$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/voice/VoiceRecognitionManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :cond_1
    :goto_0
    return-void
.end method

.method public final stopListening()V
    .locals 1

    .line 95
    :try_start_0
    iget-object v0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 96
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/speech/SpeechRecognizer;->stopListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
