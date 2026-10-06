.class final Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AsyncTaskCoroutine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/bases/AsyncTaskCoroutine;->execute([Ljava/lang/Object;)V
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
    c = "fast.dic.dict.bases.AsyncTaskCoroutine$execute$1"
    f = "AsyncTaskCoroutine.kt"
    i = {}
    l = {
        0x16
    }
    m = "invokeSuspend"
    n = {}
    nl = {
        0x17
    }
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $input:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TI;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lfast/dic/dict/bases/AsyncTaskCoroutine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfast/dic/dict/bases/AsyncTaskCoroutine<",
            "TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lfast/dic/dict/bases/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/bases/AsyncTaskCoroutine<",
            "TI;TO;>;[TI;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;->this$0:Lfast/dic/dict/bases/AsyncTaskCoroutine;

    iput-object p2, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;->$input:[Ljava/lang/Object;

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

    new-instance p1, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;

    iget-object v0, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;->this$0:Lfast/dic/dict/bases/AsyncTaskCoroutine;

    iget-object p0, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;->$input:[Ljava/lang/Object;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;-><init>(Lfast/dic/dict/bases/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 20
    iget v1, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;->this$0:Lfast/dic/dict/bases/AsyncTaskCoroutine;

    invoke-virtual {p1}, Lfast/dic/dict/bases/AsyncTaskCoroutine;->onPreExecute()V

    .line 22
    iget-object p1, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;->this$0:Lfast/dic/dict/bases/AsyncTaskCoroutine;

    iget-object v1, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;->$input:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;->label:I

    invoke-static {p1, v1, v3}, Lfast/dic/dict/bases/AsyncTaskCoroutine;->access$callAsync(Lfast/dic/dict/bases/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    .line 23
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
