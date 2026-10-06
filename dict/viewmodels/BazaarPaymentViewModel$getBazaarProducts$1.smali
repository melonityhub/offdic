.class final Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BazaarPaymentViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->getBazaarProducts(Ljava/util/List;)Landroidx/lifecycle/LiveData;
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
    c = "fast.dic.dict.viewmodels.BazaarPaymentViewModel$getBazaarProducts$1"
    f = "BazaarPaymentViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $liveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/viewmodels/BazaarPaymentMethodState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $productIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;


# direct methods
.method public static synthetic $r8$lambda$7SOgYdXuqwMDZmSEuSOOyknRoLY(Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->invokeSuspend$lambda$0$0(Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tnlEW1FfB1_1w1UPDY1-D3wWohY(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->invokeSuspend$lambda$0$1(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;Ljava/util/List;Landroidx/lifecycle/MutableLiveData;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/viewmodels/BazaarPaymentMethodState;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->this$0:Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    iput-object p2, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->$productIds:Ljava/util/List;

    iput-object p3, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Landroidx/lifecycle/MutableLiveData;Lir/cafebazaar/poolakey/callback/GetSkuDetailsCallback;)Lkotlin/Unit;
    .locals 1

    .line 71
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p1, v0}, Lir/cafebazaar/poolakey/callback/GetSkuDetailsCallback;->getSkuDetailsSucceed(Lkotlin/jvm/functions/Function1;)V

    .line 77
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda2;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p1, v0}, Lir/cafebazaar/poolakey/callback/GetSkuDetailsCallback;->getSkuDetailsFailed(Lkotlin/jvm/functions/Function1;)V

    .line 82
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$0(Landroidx/lifecycle/MutableLiveData;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 73
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPaymentMethodState$Products;

    invoke-direct {v0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentMethodState$Products;-><init>(Ljava/util/List;)V

    .line 72
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 75
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0$1(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Throwable;)Lkotlin/Unit;
    .locals 1

    .line 79
    new-instance v0, Lfast/dic/dict/viewmodels/BazaarPaymentMethodState$Error;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "UnknownError"

    :cond_0
    invoke-direct {v0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentMethodState$Error;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 81
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance p1, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;

    iget-object v0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->this$0:Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    iget-object v1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->$productIds:Ljava/util/List;

    iget-object p0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1, v0, v1, p0, p2}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;-><init>(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;Ljava/util/List;Landroidx/lifecycle/MutableLiveData;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 69
    iget v0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->this$0:Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    invoke-static {p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->access$getCafeBazaarPayment$p(Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;)Lir/cafebazaar/poolakey/Payment;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->$productIds:Ljava/util/List;

    iget-object p0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->$liveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    invoke-virtual {p1, v0, v1}, Lir/cafebazaar/poolakey/Payment;->getInAppSkuDetails(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 83
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
