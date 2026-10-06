.class public abstract Lfast/dic/dict/bases/AsyncTaskCoroutine;
.super Ljava/lang/Object;
.source "AsyncTaskCoroutine.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008&\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0013\u001a\u00020\u000eH\u0016J\u0017\u0010\u0014\u001a\u00020\u000e2\u0008\u0010\u0006\u001a\u0004\u0018\u00018\u0001H\u0016\u00a2\u0006\u0002\u0010\nJ!\u0010\u0015\u001a\u00028\u00012\u0012\u0010\u0016\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0017\"\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0018J%\u0010\u0019\u001a\u00020\u000e\"\u0004\u0008\u0002\u0010\u001a2\u0012\u0010\u001b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0017\"\u00028\u0000\u00a2\u0006\u0002\u0010\u001cJ&\u0010\u001d\u001a\u00020\u000e2\u0012\u0010\u001b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00028\u00000\u0017\"\u00028\u0000H\u0083@b\u0002\u0008\u001f\u00a2\u0006\u0002\u0010\u001eJ%\u0010 \u001a\u00020\u000e2\u0016\u0010!\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\"0\u0017\"\u0004\u0018\u00010\"H\u0016\u00a2\u0006\u0002\u0010#J#\u0010$\u001a\u00020\u000e2\u0016\u0010!\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\"0\u0017\"\u0004\u0018\u00010\"\u00a2\u0006\u0002\u0010#R\u001e\u0010\u0006\u001a\u0004\u0018\u00018\u0001X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000b\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR*\u0010\u000c\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u0004\u0012\u00020\u000e\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006%"
    }
    d2 = {
        "Lfast/dic/dict/bases/AsyncTaskCoroutine;",
        "I",
        "O",
        "",
        "<init>",
        "()V",
        "result",
        "getResult",
        "()Ljava/lang/Object;",
        "setResult",
        "(Ljava/lang/Object;)V",
        "Ljava/lang/Object;",
        "onCompleted",
        "Lkotlin/Function1;",
        "",
        "getOnCompleted",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnCompleted",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onPreExecute",
        "onPostExecute",
        "doInBackground",
        "params",
        "",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "execute",
        "T",
        "input",
        "([Ljava/lang/Object;)V",
        "callAsync",
        "([Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lkotlinx/coroutines/DelicateCoroutinesApi;",
        "onProgressUpdate",
        "progressValues",
        "",
        "([Ljava/lang/Integer;)V",
        "publishProgress",
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
.field private onCompleted:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TO;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$callAsync(Lfast/dic/dict/bases/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/bases/AsyncTaskCoroutine;->callAsync([Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final callAsync([Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;

    iget v1, v0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;

    invoke-direct {v0, p0, p2}, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;-><init>(Lfast/dic/dict/bases/AsyncTaskCoroutine;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 27
    iget v2, v0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->L$0:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$2;-><init>(Lfast/dic/dict/bases/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->label:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    .line 35
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TI;)TO;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TI;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lfast/dic/dict/bases/AsyncTaskCoroutine$execute$1;-><init>(Lfast/dic/dict/bases/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getOnCompleted()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TO;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine;->onCompleted:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine;->result:Ljava/lang/Object;

    return-object p0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 14
    iget-object p0, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine;->onCompleted:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onPreExecute()V
    .locals 0

    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    const-string p0, "progressValues"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final varargs publishProgress([Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "progressValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lfast/dic/dict/bases/AsyncTaskCoroutine;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public final setOnCompleted(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TO;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine;->onCompleted:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine;->result:Ljava/lang/Object;

    return-void
.end method
