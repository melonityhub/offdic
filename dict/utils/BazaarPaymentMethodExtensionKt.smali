.class public final Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt;
.super Ljava/lang/Object;
.source "BazaarPaymentMethodExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u001a\n\u0010\t\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\n"
    }
    d2 = {
        "getProductFromBazaar",
        "",
        "Lfast/dic/dict/PaymentMethodFragment;",
        "getBazaarPaymentMethod",
        "Lfast/dic/dict/adapters/PaymentMethod;",
        "it",
        "Lfast/dic/dict/viewmodels/BazaarPaymentMethodState$Products;",
        "planType",
        "Lfast/dic/dict/models/PlanType;",
        "purchaseFromBazaar",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$6Fa_8Q8Z9eypbOYZjI67Pdv7BEw(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/viewmodels/BazaarPurchaseState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt;->purchaseFromBazaar$lambda$0$0(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/viewmodels/BazaarPurchaseState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zGbkzw7VuHIxsdF-X2kt70jvbNs(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/viewmodels/BazaarPaymentMethodState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt;->getProductFromBazaar$lambda$0$0(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/viewmodels/BazaarPaymentMethodState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final getBazaarPaymentMethod(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/viewmodels/BazaarPaymentMethodState$Products;Lfast/dic/dict/models/PlanType;)Lfast/dic/dict/adapters/PaymentMethod;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lfast/dic/dict/adapters/PaymentMethod;

    .line 51
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v2

    .line 52
    invoke-virtual {p1}, Lfast/dic/dict/viewmodels/BazaarPaymentMethodState$Products;->getProducts()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lir/cafebazaar/poolakey/entity/SkuDetails;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lir/cafebazaar/poolakey/entity/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "---"

    :cond_1
    move-object v3, p1

    .line 53
    sget-object p1, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    if-ne p2, p1, :cond_2

    .line 54
    sget p1, Lfast/dic/dict/R$string;->restore_from_bazaar:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/PaymentMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 56
    :cond_2
    sget p1, Lfast/dic/dict/R$string;->purchase_from_bazaar:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/PaymentMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v4, p1

    .line 53
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    .line 59
    sget p2, Lfast/dic/dict/R$drawable;->ic_cafe_bazaar:I

    .line 57
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    sget-object v6, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->CafeBazaar:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    const/4 v7, 0x1

    .line 50
    invoke-direct/range {v1 .. v7}, Lfast/dic/dict/adapters/PaymentMethod;-><init>(Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Z)V

    .line 65
    sget-object p1, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->CafeBazaar:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    invoke-virtual {p0, p1}, Lfast/dic/dict/PaymentMethodFragment;->setSelectedPaymentMethod$app(Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;)V

    return-object v1
.end method

.method public static final getProductFromBazaar(Lfast/dic/dict/PaymentMethodFragment;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isBazaar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBazaarViewModel$app()Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->initializeCafeBazaarBillingService(Landroid/content/Context;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/PaymentMethodFragment;)V

    new-instance p0, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v2}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static final getProductFromBazaar$lambda$0(Lfast/dic/dict/PaymentMethodFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getProductId()Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBazaarViewModel$app()Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->getBazaarProducts(Ljava/util/List;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/PaymentMethodFragment;)V

    new-instance p0, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v1}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 43
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final getProductFromBazaar$lambda$0$0(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/viewmodels/BazaarPaymentMethodState;)Lkotlin/Unit;
    .locals 6

    .line 28
    instance-of v0, p1, Lfast/dic/dict/viewmodels/BazaarPaymentMethodState$Products;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-string v5, "loadingSpinner"

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v2, v1}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->getDataAdapter()Lfast/dic/dict/adapters/PaymentMethodAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 33
    check-cast p1, Lfast/dic/dict/viewmodels/BazaarPaymentMethodState$Products;

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt;->getBazaarPaymentMethod(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/viewmodels/BazaarPaymentMethodState$Products;Lfast/dic/dict/models/PlanType;)Lfast/dic/dict/adapters/PaymentMethod;

    move-result-object p0

    .line 32
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Lfast/dic/dict/adapters/PaymentMethodAdapter;->submitList(Ljava/util/List;)V

    goto :goto_0

    .line 38
    :cond_0
    instance-of p1, p1, Lfast/dic/dict/viewmodels/BazaarPaymentMethodState$Error;

    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v3, v4, v2, v1}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 42
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 27
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final purchaseFromBazaar(Lfast/dic/dict/PaymentMethodFragment;)V
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isBazaar()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->toolbarTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "toolbarTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBazaarViewModel$app()Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    move-result-object v0

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->initializeCafeBazaarBillingService(Landroid/content/Context;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/PaymentMethodFragment;)V

    new-instance p0, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v2}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static final purchaseFromBazaar$lambda$0(Lfast/dic/dict/PaymentMethodFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 3

    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 81
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->dismiss()V

    .line 82
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getProductId()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBazaarViewModel$app()Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getActivityResultRegistry()Landroidx/activity/result/ActivityResultRegistry;

    move-result-object v1

    const-string v2, "<get-activityResultRegistry>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, p1, v1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->purchasePackageFromCafeBazaar(Ljava/lang/String;Landroidx/activity/result/ActivityResultRegistry;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/PaymentMethodFragment;)V

    new-instance p0, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v1}, Lfast/dic/dict/utils/BazaarPaymentMethodExtensionKt$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v0, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 127
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final purchaseFromBazaar$lambda$0$0(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/viewmodels/BazaarPurchaseState;)Lkotlin/Unit;
    .locals 6

    .line 93
    instance-of v0, p1, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Purchased;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-string v5, "loadingSpinner"

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v2, v1}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getSendPurchaseTokenToServerListener()Lkotlin/jvm/functions/Function4;

    move-result-object v0

    .line 97
    check-cast p1, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Purchased;

    invoke-virtual {p1}, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Purchased;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Purchased;->getProductId()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object p0

    .line 100
    sget-object v2, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->CafeBazaar:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    .line 96
    invoke-interface {v0, v1, p1, p0, v2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_0
    instance-of v0, p1, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Error;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v2, v1}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getPaymentFailedListener()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    check-cast p1, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Error;

    invoke-virtual {p1}, Lfast/dic/dict/viewmodels/BazaarPurchaseState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->dismiss()V

    .line 126
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 92
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
