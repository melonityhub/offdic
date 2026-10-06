.class final Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GooglePaymentViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->restorePurchaseFromGooglePlay(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    c = "fast.dic.dict.viewmodels.fragments.GooglePaymentViewModel$restorePurchaseFromGooglePlay$1"
    f = "GooglePaymentViewModel.kt"
    i = {}
    l = {
        0xa6
    }
    m = "invokeSuspend"
    n = {}
    nl = {
        0xa7
    }
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $onSuccess:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lfast/dic/dict/domain/billing/PurchasedItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $productId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/domain/billing/PurchasedItem;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    iput-object p2, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->$productId:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;

    iget-object v0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    iget-object v1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->$productId:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, p0, p2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;-><init>(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 165
    iget v1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->label:I

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

    .line 166
    iget-object p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->this$0:Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    invoke-static {p1}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->access$getBillingRepository$p(Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;)Lfast/dic/dict/data/billing/PlayBillingRepository;

    move-result-object p1

    iget-object v1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->$productId:Ljava/lang/String;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->label:I

    invoke-virtual {p1, v1, v3}, Lfast/dic/dict/data/billing/PlayBillingRepository;->getPurchaseInfo(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 165
    :cond_2
    :goto_0
    check-cast p1, Lfast/dic/dict/domain/billing/PurchasedItem;

    .line 172
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel$restorePurchaseFromGooglePlay$1;->$onSuccess:Lkotlin/jvm/functions/Function1;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 168
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 172
    :cond_3
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
