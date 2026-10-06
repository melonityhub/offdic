.class final Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FDOfflinePlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "fast.dic.dict.helpers.FDOfflinePlayer$speak$1$1"
    f = "FDOfflinePlayer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $content:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;


# direct methods
.method constructor <init>(Lfast/dic/dict/helpers/FDOfflinePlayer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/helpers/FDOfflinePlayer;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    iput-object p2, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;->$content:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;

    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;->$content:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;-><init>(Lfast/dic/dict/helpers/FDOfflinePlayer;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 105
    iget v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    invoke-static {p1}, Lfast/dic/dict/helpers/FDOfflinePlayer;->access$getSentenceQueue$p(Lfast/dic/dict/helpers/FDOfflinePlayer;)Lkotlin/collections/ArrayDeque;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;->$content:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflinePlayer$speak$1$1;->this$0:Lfast/dic/dict/helpers/FDOfflinePlayer;

    invoke-static {p0}, Lfast/dic/dict/helpers/FDOfflinePlayer;->access$getLIMIT_CHAR$p(Lfast/dic/dict/helpers/FDOfflinePlayer;)I

    move-result p0

    invoke-static {v0, p0}, Lfast/dic/dict/utils/StringExtKt;->splitTextIntoChunks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 106
    invoke-virtual {p1, p0}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    move-result p0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
