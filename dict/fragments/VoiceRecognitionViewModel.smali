.class public final Lfast/dic/dict/fragments/VoiceRecognitionViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "VoiceRecognitionViewModel.kt"

# interfaces
.implements Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0002\u0008\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\nJ\u0006\u0010\u001b\u001a\u00020\u0019J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0013H\u0016J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\nH\u0016J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\nH\u0016J\u0010\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020\u0019H\u0016J\u0008\u0010%\u001a\u00020\u0019H\u0014R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000eR\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\'\u00a8\u0006&"
    }
    d2 = {
        "Lfast/dic/dict/fragments/VoiceRecognitionViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;",
        "application",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "Ljavax/inject/Inject;",
        "_detectedSentence",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "detectedSentence",
        "Landroidx/lifecycle/LiveData;",
        "getDetectedSentence",
        "()Landroidx/lifecycle/LiveData;",
        "_isListening",
        "",
        "isListening",
        "_rms",
        "",
        "rms",
        "getRms",
        "manager",
        "Lfast/dic/dict/voice/VoiceRecognitionManager;",
        "start",
        "",
        "lang",
        "stop",
        "onRmsChanged",
        "value",
        "onPartialResult",
        "text",
        "onResult",
        "onError",
        "errorCode",
        "",
        "onReadyForSpeech",
        "onCleared",
        "app",
        "Ldagger/hilt/android/lifecycle/HiltViewModel;"
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
.field private final _detectedSentence:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _isListening:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _rms:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final detectedSentence:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isListening:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final manager:Lfast/dic/dict/voice/VoiceRecognitionManager;

.field private final rms:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 17
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->_detectedSentence:Landroidx/lifecycle/MutableLiveData;

    .line 18
    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->detectedSentence:Landroidx/lifecycle/LiveData;

    .line 20
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->_isListening:Landroidx/lifecycle/MutableLiveData;

    .line 21
    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->isListening:Landroidx/lifecycle/LiveData;

    .line 23
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->_rms:Landroidx/lifecycle/MutableLiveData;

    .line 24
    check-cast v0, Landroidx/lifecycle/LiveData;

    iput-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->rms:Landroidx/lifecycle/LiveData;

    .line 27
    new-instance v0, Lfast/dic/dict/voice/VoiceRecognitionManager;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getApplicationContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;

    invoke-direct {v0, p1, v1}, Lfast/dic/dict/voice/VoiceRecognitionManager;-><init>(Landroid/content/Context;Lfast/dic/dict/voice/VoiceRecognitionManager$Listener;)V

    iput-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->manager:Lfast/dic/dict/voice/VoiceRecognitionManager;

    .line 30
    invoke-virtual {v0}, Lfast/dic/dict/voice/VoiceRecognitionManager;->initialize()V

    return-void
.end method


# virtual methods
.method public final getDetectedSentence()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->detectedSentence:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getRms()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->rms:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final isListening()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->isListening:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method protected onCleared()V
    .locals 1

    .line 69
    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->manager:Lfast/dic/dict/voice/VoiceRecognitionManager;

    invoke-virtual {v0}, Lfast/dic/dict/voice/VoiceRecognitionManager;->destroy()V

    .line 70
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    return-void
.end method

.method public onError(I)V
    .locals 3

    .line 60
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VoiceRecognition error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lfast/dic/dict/utils/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->_isListening:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPartialResult(Ljava/lang/String;)V
    .locals 2

    const-string p0, "text"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPartialResult: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onReadyForSpeech()V
    .locals 0

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->_detectedSentence:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 56
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->_isListening:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    .line 46
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->_rms:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final start(Ljava/lang/String;)V
    .locals 3

    const-string v0, "lang"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ViewModel start listening lang="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->_isListening:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 36
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->manager:Lfast/dic/dict/voice/VoiceRecognitionManager;

    invoke-virtual {p0, p1}, Lfast/dic/dict/voice/VoiceRecognitionManager;->startListening(Ljava/lang/String;)V

    return-void
.end method

.method public final stop()V
    .locals 4

    .line 40
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ViewModel stop listening"

    invoke-virtual {v0, v3, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->_isListening:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 42
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;->manager:Lfast/dic/dict/voice/VoiceRecognitionManager;

    invoke-virtual {p0}, Lfast/dic/dict/voice/VoiceRecognitionManager;->stopListening()V

    return-void
.end method
