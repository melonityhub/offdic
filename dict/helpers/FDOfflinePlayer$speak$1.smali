.class final Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FDOfflinePlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/helpers/FDOfflinePlayer;->speak(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "fast.dic.dict.helpers.FDOfflinePlayer$speak$1"
    f = "FDOfflinePlayer.kt"
    i = {}
    l = {
        0x69
    }
    m = "invokeSuspend"
    n = {}
    nl = {
        0x6e
    }
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $content:Ljava/lang/String;

.field final synthetic $language:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;


# direct methods
.method constructor <init>(Lfast/dic/dict/helpers/FDOfflinePlayer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/helpers/FDOfflinePlayer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    iput-object p2, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->$content:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->$language:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;

    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    iget-object v1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->$content:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->$language:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;-><init>(Lfast/dic/dict/helpers/FDOfflinePlayer;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 103
    iget v1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 105
    :try_start_1
    new-instance p1, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;

    iget-object v1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    iget-object v3, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->$content:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p1, v1, v3, v4}, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;-><init>(Lfast/dic/dict/helpers/FDOfflinePlayer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->label:I

    const-wide/16 v2, 0x258

    invoke-static {v2, v3, p1, v1}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 111
    :catch_0
    iget-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    invoke-static {p1}, Lfast/dic/dict/helpers/FDOfflinePlayer;->access$getSentenceQueue$p(Lfast/dic/dict/helpers/FDOfflinePlayer;)Lkotlin/collections/ArrayDeque;

    move-result-object p1

    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->$content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 114
    :goto_1
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    invoke-static {v0}, Lfast/dic/dict/helpers/FDOfflinePlayer;->access$getSentenceQueue$p(Lfast/dic/dict/helpers/FDOfflinePlayer;)Lkotlin/collections/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start speaking sentence with queue size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :try_start_2
    iget-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->$language:Ljava/lang/String;

    const-string v0, "br"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v0, "en"

    if-eqz p1, :cond_3

    .line 118
    :try_start_3
    new-instance p1, Ljava/util/Locale;

    const-string v2, "GB"

    invoke-direct {p1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 120
    :cond_3
    new-instance p1, Ljava/util/Locale;

    const-string v2, "US"

    invoke-direct {p1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_2
    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    invoke-static {v0, p1}, Lfast/dic/dict/helpers/FDOfflinePlayer;->access$setSpeechToTextLanguage(Lfast/dic/dict/helpers/FDOfflinePlayer;Ljava/util/Locale;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 125
    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDOfflinePlayer;->getOnErrorPlayer()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 128
    :cond_4
    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    invoke-static {v0}, Lfast/dic/dict/helpers/FDOfflinePlayer;->access$getPlayer$p(Lfast/dic/dict/helpers/FDOfflinePlayer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    invoke-static {v0}, Lfast/dic/dict/helpers/FDOfflinePlayer;->access$getPlayer$p(Lfast/dic/dict/helpers/FDOfflinePlayer;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_5
    if-eqz p1, :cond_6

    .line 133
    iget-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    invoke-static {p1}, Lfast/dic/dict/helpers/FDOfflinePlayer;->access$play(Lfast/dic/dict/helpers/FDOfflinePlayer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error play sound "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->$content:Ljava/lang/String;

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->take(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->$language:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error play sound ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "), ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") -> error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 140
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/FDOfflinePlayer;->getOnErrorPlayer()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 142
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
