.class final Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;
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
        "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;"
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
    c = "fast.dic.dict.PaymentMethodFragment$observePlayStoreEvents$1"
    f = "PaymentMethodFragment.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

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
            "Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lfast/dic/dict/PaymentMethodFragment;Ljava/util/List;)Lkotlin/Unit;
    .locals 14

    .line 282
    invoke-static {p0}, Lfast/dic/dict/PaymentMethodFragment;->access$getGooglePlayTimedOut$p(Lfast/dic/dict/PaymentMethodFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 286
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/PaymentMethodFragment;->access$getGooglePlayTimeoutJob$p(Lfast/dic/dict/PaymentMethodFragment;)Lkotlinx/coroutines/Job;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 288
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const-wide/16 v3, 0x0

    const-string v5, "loadingSpinner"

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v1, v2}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 311
    new-array v0, v1, [Lfast/dic/dict/adapters/PaymentMethod;

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lfast/dic/dict/utils/GooglePaymentMethodExtensionKt;->getGooglePlayPaymentMethod(Lfast/dic/dict/PaymentMethodFragment;Ljava/util/List;Lfast/dic/dict/models/PlanType;)Lfast/dic/dict/adapters/PaymentMethod;

    move-result-object p1

    .line 312
    invoke-virtual {p1, v1}, Lfast/dic/dict/adapters/PaymentMethod;->setSelected(Z)V

    .line 313
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, 0x0

    .line 311
    aput-object p1, v0, v1

    .line 310
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 315
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getViewModel()Lfast/dic/dict/viewmodels/PaymentMethodViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/PaymentMethodViewModel;->isCurrentLanguagePersian()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->directPaymentMethod()Lfast/dic/dict/adapters/PaymentMethod;

    move-result-object v0

    .line 316
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_3
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->getDataAdapter()Lfast/dic/dict/adapters/PaymentMethodAdapter;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Lfast/dic/dict/adapters/PaymentMethodAdapter;->submitList(Ljava/util/List;)V

    .line 322
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 290
    :cond_5
    :goto_0
    invoke-static {p0}, Lfast/dic/dict/PaymentMethodFragment;->access$getPriceAndCurrency(Lfast/dic/dict/PaymentMethodFragment;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    .line 291
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v6

    .line 292
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/models/PlanType;->name()Ljava/lang/String;

    move-result-object v7

    .line 295
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    move-object v10, p1

    goto :goto_1

    :cond_6
    move-object v10, v2

    .line 297
    :goto_1
    const-string v12, "no_products_found"

    .line 298
    invoke-static {p0}, Lfast/dic/dict/PaymentMethodFragment;->access$getBuildFlavor(Lfast/dic/dict/PaymentMethodFragment;)Ljava/lang/String;

    move-result-object v13

    .line 291
    const-string v11, "GooglePlay"

    invoke-virtual/range {v6 .. v13}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logPurchaseFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3, v4, v1, v2}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 303
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getPaymentFailedListener()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    const-string v0, "No products found"

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-static {p0}, Lfast/dic/dict/PaymentMethodFragment;->access$showDirectPaymentFallback(Lfast/dic/dict/PaymentMethodFragment;)V

    .line 306
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
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

    new-instance v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;

    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-direct {v0, p0, p2}, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;-><init>(Lfast/dic/dict/PaymentMethodFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->invoke(Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 226
    iget v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->label:I

    if-nez v2, :cond_c

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 227
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v2}, Lfast/dic/dict/PaymentMethodFragment;->access$getGooglePlayTimedOut$p(Lfast/dic/dict/PaymentMethodFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 232
    :cond_0
    instance-of v2, v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;

    const-string v3, "): "

    const-wide/16 v4, 0x0

    const-string v6, "loadingSpinner"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    .line 233
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v2

    check-cast v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;

    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;->getErrorCode()I

    move-result v10

    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;->getMessage()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Google IAP: Error. ("

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v9}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v2}, Lfast/dic/dict/PaymentMethodFragment;->access$getPriceAndCurrency(Lfast/dic/dict/PaymentMethodFragment;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    .line 237
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v9

    .line 238
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/models/PlanType;->name()Ljava/lang/String;

    move-result-object v10

    .line 241
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_0

    :cond_1
    move-object v13, v8

    .line 243
    :goto_0
    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v14, "google_play_error: "

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 244
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v2}, Lfast/dic/dict/PaymentMethodFragment;->access$getBuildFlavor(Lfast/dic/dict/PaymentMethodFragment;)Ljava/lang/String;

    move-result-object v16

    .line 237
    const-string v14, "GooglePlay"

    invoke-virtual/range {v9 .. v16}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logPurchaseFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v2

    iget-object v2, v2, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v4, v5, v7, v8}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 248
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getPaymentFailedListener()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v0}, Lfast/dic/dict/PaymentMethodFragment;->access$showDirectPaymentFallback(Lfast/dic/dict/PaymentMethodFragment;)V

    goto/16 :goto_2

    .line 252
    :cond_2
    instance-of v2, v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;

    if-eqz v2, :cond_4

    .line 253
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v2

    check-cast v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;

    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;->getErrorCode()I

    move-result v4

    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Google IAP: InitialError. ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v2}, Lfast/dic/dict/PaymentMethodFragment;->access$getPriceAndCurrency(Lfast/dic/dict/PaymentMethodFragment;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    .line 257
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v9

    .line 258
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/models/PlanType;->name()Ljava/lang/String;

    move-result-object v10

    .line 261
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :cond_3
    move-object v13, v8

    .line 263
    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "google_play_connection_error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 264
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v2}, Lfast/dic/dict/PaymentMethodFragment;->access$getBuildFlavor(Lfast/dic/dict/PaymentMethodFragment;)Ljava/lang/String;

    move-result-object v16

    .line 257
    const-string v14, "GooglePlay"

    invoke-virtual/range {v9 .. v16}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logPurchaseFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getPaymentConnectionFailedListener()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iget-object v0, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v0}, Lfast/dic/dict/PaymentMethodFragment;->access$showDirectPaymentFallback(Lfast/dic/dict/PaymentMethodFragment;)V

    goto/16 :goto_2

    .line 271
    :cond_4
    instance-of v2, v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;

    if-eqz v2, :cond_6

    .line 272
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v2

    check-cast v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;

    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->getState()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Google IAP: Initialized. ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lfast/dic/dict/utils/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->getState()Z

    move-result v1

    .line 279
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    if-nez v1, :cond_5

    .line 275
    invoke-static {v2}, Lfast/dic/dict/PaymentMethodFragment;->access$showDirectPaymentFallback(Lfast/dic/dict/PaymentMethodFragment;)V

    .line 276
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 279
    :cond_5
    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getProductId()Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object v2

    iget-object v0, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    new-instance v3, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/PaymentMethodFragment;)V

    invoke-virtual {v2, v1, v3}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->getGoogleProducts(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    .line 325
    :cond_6
    sget-object v2, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initializing;->INSTANCE:Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initializing;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 326
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const-string v1, "Google IAP: Initializing"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 329
    :cond_7
    instance-of v2, v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Products;

    if-eqz v2, :cond_8

    .line 330
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v2

    check-cast v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Products;

    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Products;->getProducts()Ljava/util/List;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "Google IAP: Products "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v0, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v4, v5, v7, v8}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    goto/16 :goto_2

    .line 335
    :cond_8
    instance-of v2, v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$PurchaseConsumed;

    if-eqz v2, :cond_a

    .line 336
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v2

    check-cast v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$PurchaseConsumed;

    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$PurchaseConsumed;->getProductId()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Google IAP: PurchaseConsumed "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v9}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 339
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v2}, Lfast/dic/dict/PaymentMethodFragment;->access$getPriceAndCurrency(Lfast/dic/dict/PaymentMethodFragment;)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    .line 340
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v9

    .line 341
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/models/PlanType;->name()Ljava/lang/String;

    move-result-object v10

    .line 344
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_1

    :cond_9
    move-object v13, v8

    .line 346
    :goto_1
    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$PurchaseConsumed;->getProductId()Ljava/lang/String;

    move-result-object v15

    .line 347
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v1}, Lfast/dic/dict/PaymentMethodFragment;->access$getBuildFlavor(Lfast/dic/dict/PaymentMethodFragment;)Ljava/lang/String;

    move-result-object v16

    .line 340
    const-string v14, "GooglePlay"

    invoke-virtual/range {v9 .. v16}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logPurchaseSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragment;->getOnPaidSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :try_start_0
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-static {v1, v4, v5, v7, v8}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 353
    iget-object v0, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 359
    :cond_a
    instance-of v2, v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Purchased;

    if-eqz v2, :cond_b

    .line 360
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v2

    check-cast v1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Purchased;

    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Purchased;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Google IAP: Purchased "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v9}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v2

    iget-object v2, v2, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v4, v5, v7, v8}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 363
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getSendPurchaseTokenToServerListener()Lkotlin/jvm/functions/Function4;

    move-result-object v2

    .line 364
    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Purchased;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    .line 365
    invoke-virtual {v1}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Purchased;->getProductId()Ljava/lang/String;

    move-result-object v1

    .line 366
    iget-object v0, v0, Lfast/dic/dict/PaymentMethodFragment$observePlayStoreEvents$1;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v0

    .line 367
    sget-object v4, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->GooglePlay:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    .line 363
    invoke-interface {v2, v3, v1, v0, v4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 231
    :cond_b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 226
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
