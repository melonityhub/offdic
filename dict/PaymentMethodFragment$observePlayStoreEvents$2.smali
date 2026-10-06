.class final Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaymentMethodFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/PaymentMethodFragment;->observePlayStoreEvents()V
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
    c = "fast.dic.dict.PaymentMethodFragment$observePlayStoreEvents$2"
    f = "PaymentMethodFragment.kt"
    i = {}
    l = {
        0x176
    }
    m = "invokeSuspend"
    n = {}
    nl = {
        0x177
    }
    s = {}
    v = 0x2
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lfast/dic/dict/PaymentMethodFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/PaymentMethodFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/PaymentMethodFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0
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

    new-instance p1, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;

    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-direct {p1, p0, p2}, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;-><init>(Lfast/dic/dict/PaymentMethodFragment;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 373
    iget v1, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->label:I

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

    .line 374
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->label:I

    const-wide/16 v3, 0x2710

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 375
    :cond_2
    :goto_0
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {p1, v2}, Lfast/dic/dict/PaymentMethodFragment;->access$setGooglePlayTimedOut$p(Lfast/dic/dict/PaymentMethodFragment;Z)V

    .line 377
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {p1}, Lfast/dic/dict/PaymentMethodFragment;->access$getPriceAndCurrency(Lfast/dic/dict/PaymentMethodFragment;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    .line 378
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragment;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v1

    .line 379
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/models/PlanType;->name()Ljava/lang/String;

    move-result-object v2

    .line 382
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    move-object v5, p1

    .line 385
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {p1}, Lfast/dic/dict/PaymentMethodFragment;->access$getBuildFlavor(Lfast/dic/dict/PaymentMethodFragment;)Ljava/lang/String;

    move-result-object v8

    .line 378
    const-string v6, "GooglePlay"

    const-string v7, "google_play_timeout"

    invoke-virtual/range {v1 .. v8}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logPurchaseFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$2;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {p0}, Lfast/dic/dict/PaymentMethodFragment;->access$showDirectPaymentFallback(Lfast/dic/dict/PaymentMethodFragment;)V

    .line 389
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
