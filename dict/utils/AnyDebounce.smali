.class public final Lfast/dic/dict/utils/AnyDebounce;
.super Ljava/lang/Object;
.source "AnyDebounce.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JA\u0010\u0006\u001a\u00020\u0007\"\u0004\u0008\u0000\u0010\u00082\u0006\u0010\t\u001a\u0002H\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u001c\u0010\u000c\u001a\u0018\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u00020\u00070\rj\u0008\u0012\u0004\u0012\u0002H\u0008`\u000e\u00a2\u0006\u0002\u0010\u000fR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lfast/dic/dict/utils/AnyDebounce;",
        "",
        "<init>",
        "()V",
        "job",
        "Lkotlinx/coroutines/Job;",
        "debounce",
        "",
        "T",
        "value",
        "delay",
        "",
        "debounced",
        "Lkotlin/Function1;",
        "Lfast/dic/dict/utils/SubscribeOnDebounced;",
        "(Ljava/lang/Object;JLkotlin/jvm/functions/Function1;)V",
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


# static fields
.field public static final INSTANCE:Lfast/dic/dict/utils/AnyDebounce;

.field private static job:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfast/dic/dict/utils/AnyDebounce;

    invoke-direct {v0}, Lfast/dic/dict/utils/AnyDebounce;-><init>()V

    sput-object v0, Lfast/dic/dict/utils/AnyDebounce;->INSTANCE:Lfast/dic/dict/utils/AnyDebounce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic debounce$default(Lfast/dic/dict/utils/AnyDebounce;Ljava/lang/Object;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p2, 0x64

    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lfast/dic/dict/utils/AnyDebounce;->debounce(Ljava/lang/Object;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final debounce(Ljava/lang/Object;JLkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "debounced"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object p0, Lfast/dic/dict/utils/AnyDebounce;->job:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lkotlinx/coroutines/Job;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 12
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p0

    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/utils/AnyDebounce$debounce$1;

    const/4 v6, 0x0

    move-object v5, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/utils/AnyDebounce$debounce$1;-><init>(JLkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    sput-object p0, Lfast/dic/dict/utils/AnyDebounce;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
