.class public final Lfast/dic/dict/voice/VoiceRecognitionManager$initialize$1;
.super Ljava/lang/Object;
.source "VoiceRecognitionManager.kt"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/voice/VoiceRecognitionManager;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "fast/dic/dict/voice/VoiceRecognitionManager$initialize$1",
        "Landroid/speech/RecognitionListener;",
        "onReadyForSpeech",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "onBeginningOfSpeech",
        "onRmsChanged",
        "v",
        "",
        "onBufferReceived",
        "bytes",
        "",
        "onEndOfSpeech",
        "onError",
        "i",
        "",
        "onResults",
        "onPartialResults",
        "onEvent",
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
.field final synthetic this$0:Lfast/dic/dict/voice/VoiceRecognitionManager;


# direct methods
.method constructor <init>(Lfast/dic/dict/voice/VoiceRecognitionManager;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/voice/VoiceRecognitionManager$initialize$1;->this$0:Lfast/dic/dict/voice/VoiceRecognitionManager;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    const-string p0, "bytes"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    return-void
.end method

.method public onError(I)V
    .locals 3

    .line 45
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Speech onError : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object p0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager$initialize$1;->this$0:Lfast/dic/dict/voice/VoiceRecognitionManager;

    invoke-static {p0}, Lfast/dic/dict/voice/VoiceRecognitionManager;->access$getListener$p(Lfast/dic/dict/voice/VoiceRecognitionManager;)Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;->onError(I)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    const-string p0, "bundle"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 58
    :cond_1
    iget-object p0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager$initialize$1;->this$0:Lfast/dic/dict/voice/VoiceRecognitionManager;

    invoke-static {p0}, Lfast/dic/dict/voice/VoiceRecognitionManager;->access$getListener$p(Lfast/dic/dict/voice/VoiceRecognitionManager;)Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;->onPartialResult(Ljava/lang/String;)V

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager$initialize$1;->this$0:Lfast/dic/dict/voice/VoiceRecognitionManager;

    invoke-static {p0}, Lfast/dic/dict/voice/VoiceRecognitionManager;->access$getListener$p(Lfast/dic/dict/voice/VoiceRecognitionManager;)Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;

    move-result-object p0

    invoke-interface {p0}, Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;->onReadyForSpeech()V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 52
    :cond_1
    iget-object p0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager$initialize$1;->this$0:Lfast/dic/dict/voice/VoiceRecognitionManager;

    invoke-static {p0}, Lfast/dic/dict/voice/VoiceRecognitionManager;->access$getListener$p(Lfast/dic/dict/voice/VoiceRecognitionManager;)Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    .line 37
    iget-object p0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager$initialize$1;->this$0:Lfast/dic/dict/voice/VoiceRecognitionManager;

    invoke-static {p0}, Lfast/dic/dict/voice/VoiceRecognitionManager;->access$getListener$p(Lfast/dic/dict/voice/VoiceRecognitionManager;)Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;->onRmsChanged(F)V

    return-void
.end method
