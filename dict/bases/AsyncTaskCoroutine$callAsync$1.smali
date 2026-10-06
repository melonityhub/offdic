.class final Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AsyncTaskCoroutine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/bases/AsyncTaskCoroutine;->callAsync([Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "fast.dic.dict.bases.AsyncTaskCoroutine"
    f = "AsyncTaskCoroutine.kt"
    i = {
        0x0
    }
    l = {
        0x1c
    }
    m = "callAsync"
    n = {
        "input"
    }
    nl = {
        0x23
    }
    s = {
        "L$0"
    }
    v = 0x2
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lfast/dic/dict/bases/AsyncTaskCoroutine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfast/dic/dict/bases/AsyncTaskCoroutine<",
            "TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lfast/dic/dict/bases/AsyncTaskCoroutine;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/bases/AsyncTaskCoroutine<",
            "TI;TO;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->this$0:Lfast/dic/dict/bases/AsyncTaskCoroutine;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->result:Ljava/lang/Object;

    iget p1, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->label:I

    iget-object p1, p0, Lfast/dic/dict/bases/AsyncTaskCoroutine$callAsync$1;->this$0:Lfast/dic/dict/bases/AsyncTaskCoroutine;

    const/4 v0, 0x0

    check-cast p0, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0, p0}, Lfast/dic/dict/bases/AsyncTaskCoroutine;->access$callAsync(Lfast/dic/dict/bases/AsyncTaskCoroutine;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
