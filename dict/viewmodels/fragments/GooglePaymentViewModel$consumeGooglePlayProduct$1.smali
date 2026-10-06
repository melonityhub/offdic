.class final Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GooglePaymentViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->consumeGooglePlayProduct(Ljava/lang/String;)V
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
    c = "fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$consumeGooglePlayProduct$1"
    f = "GooglePaymentViewModel.kt"
    i = {
        0x1
    }
    l = {
        0xb2,
        0xb6
    }
    m = "invokeSuspend"
    n = {
        "product"
    }
    nl = {
        0xb3,
        0xb7
    }
    s = {
        "L$0"
    }
    v = 0x2
.end annotation


# instance fields
.field final synthetic $productId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    iput-object p2, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->$productId:Ljava/lang/String;

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

    new-instance p1, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;

    iget-object v0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->$productId:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;-><init>(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 177
    iget v1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lfast/dic/dict/domain/billing/PurchasedItem;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 178
    iget-object p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    invoke-static {p1}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->access$getBillingRepository$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lfast/dic/dict/data/billing/PlayBillingRepository;

    move-result-object p1

    iget-object v1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->$productId:Ljava/lang/String;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->label:I

    invoke-virtual {p1, v1, v4}, Lfast/dic/dict/data/billing/PlayBillingRepository;->getPurchaseInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 177
    :cond_3
    :goto_0
    check-cast p1, Lfast/dic/dict/domain/billing/PurchasedItem;

    if-nez p1, :cond_4

    .line 180
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 182
    :cond_4
    iget-object v1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    invoke-static {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->access$getBillingRepository$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lfast/dic/dict/data/billing/PlayBillingRepository;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/PurchasedItem;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$consumeGooglePlayProduct$1;->label:I

    invoke-virtual {v1, v3, v4}, Lfast/dic/dict/data/billing/PlayBillingRepository;->consume(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_1
    return-object v0

    .line 183
    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
