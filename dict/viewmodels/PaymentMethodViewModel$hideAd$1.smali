.class final Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaymentMethodViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/viewmodels/PaymentMethodViewModel;->hideAd(Ljava/lang/String;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;)V
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
    c = "fast.dic.dict.viewmodels.PaymentMethodViewModel$hideAd$1"
    f = "PaymentMethodViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $orderId:Ljava/lang/String;

.field final synthetic $platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

.field final synthetic $validationPurchaseResponseCallback:Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/viewmodels/PaymentMethodViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Lfast/dic/dict/viewmodels/PaymentMethodViewModel;Ljava/lang/String;Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;",
            "Lfast/dic/dict/viewmodels/PaymentMethodViewModel;",
            "Ljava/lang/String;",
            "Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->$platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    iput-object p2, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->this$0:Lfast/dic/dict/viewmodels/PaymentMethodViewModel;

    iput-object p3, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->$orderId:Ljava/lang/String;

    iput-object p4, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->$validationPurchaseResponseCallback:Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;

    iget-object v1, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->$platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    iget-object v2, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->this$0:Lfast/dic/dict/viewmodels/PaymentMethodViewModel;

    iget-object v3, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->$orderId:Ljava/lang/String;

    iget-object v4, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->$validationPurchaseResponseCallback:Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;-><init>(Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Lfast/dic/dict/viewmodels/PaymentMethodViewModel;Ljava/lang/String;Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 34
    iget v0, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type fast.dic.dict.services.parse.FDParseUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lfast/dic/dict/services/parse/FDParseUser;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 38
    const-string v1, "sessionToken"

    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "email"

    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->$platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    sget-object v1, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->CafeBazaar:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    const-string v2, "getSessionToken(...)"

    const-string v3, "getEmail(...)"

    if-ne v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->this$0:Lfast/dic/dict/viewmodels/PaymentMethodViewModel;

    invoke-static {v0}, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;->access$getWebService$p(Lfast/dic/dict/viewmodels/PaymentMethodViewModel;)Lfast/dic/dict/services/WebService;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->$orderId:Ljava/lang/String;

    .line 46
    iget-object p0, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->$validationPurchaseResponseCallback:Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;

    check-cast p0, Lretrofit2/Callback;

    .line 42
    invoke-virtual {v0, v1, p1, v2, p0}, Lfast/dic/dict/services/WebService;->validateBazaar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->$platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    sget-object v1, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->GooglePlay:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    if-ne v0, v1, :cond_1

    .line 50
    iget-object v0, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->this$0:Lfast/dic/dict/viewmodels/PaymentMethodViewModel;

    invoke-static {v0}, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;->access$getWebService$p(Lfast/dic/dict/viewmodels/PaymentMethodViewModel;)Lfast/dic/dict/services/WebService;

    move-result-object v0

    .line 51
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v2, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->$orderId:Ljava/lang/String;

    .line 54
    iget-object p0, p0, Lfast/dic/dict/viewmodels/PaymentMethodViewModel$hideAd$1;->$validationPurchaseResponseCallback:Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;

    check-cast p0, Lretrofit2/Callback;

    .line 50
    invoke-virtual {v0, v1, p1, v2, p0}, Lfast/dic/dict/services/WebService;->validateGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)V

    .line 57
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 34
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
