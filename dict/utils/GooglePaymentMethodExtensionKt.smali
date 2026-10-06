.class public final Lfast/dic/dict/utils/GooglePaymentMethodExtensionKt;
.super Ljava/lang/Object;
.source "GooglePaymentMethodExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a \u0010\u0004\u001a\u00020\u0005*\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "purchaseFromGooglePlay",
        "",
        "Lfast/dic/dict/PaymentMethodFragment;",
        "restorePurchaseFromGooglePlay",
        "getGooglePlayPaymentMethod",
        "Lfast/dic/dict/adapters/PaymentMethod;",
        "products",
        "",
        "Lfast/dic/dict/domain/billing/PurchaseListingDetails;",
        "planType",
        "Lfast/dic/dict/models/PlanType;",
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
.method public static final getGooglePlayPaymentMethod(Lfast/dic/dict/PaymentMethodFragment;Ljava/util/List;Lfast/dic/dict/models/PlanType;)Lfast/dic/dict/adapters/PaymentMethod;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/PaymentMethodFragment;",
            "Ljava/util/List<",
            "Lfast/dic/dict/domain/billing/PurchaseListingDetails;",
            ">;",
            "Lfast/dic/dict/models/PlanType;",
            ")",
            "Lfast/dic/dict/adapters/PaymentMethod;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "products"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lfast/dic/dict/adapters/PaymentMethod;

    .line 67
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v2

    .line 68
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfast/dic/dict/domain/billing/PurchaseListingDetails;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "---"

    :cond_1
    move-object v3, p1

    .line 69
    sget-object p1, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    if-ne p2, p1, :cond_2

    .line 70
    sget p1, Lfast/dic/dict/R$string;->restore_from_google_play:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/PaymentMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_2
    sget p1, Lfast/dic/dict/R$string;->purchase_from_google_play:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/PaymentMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v4, p1

    .line 69
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    .line 75
    sget p2, Lfast/dic/dict/R$drawable;->ic_google_play:I

    .line 73
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    sget-object v6, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->GooglePlay:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    const/4 v7, 0x1

    .line 66
    invoke-direct/range {v1 .. v7}, Lfast/dic/dict/adapters/PaymentMethod;-><init>(Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Z)V

    .line 81
    sget-object p1, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->GooglePlay:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    invoke-virtual {p0, p1}, Lfast/dic/dict/PaymentMethodFragment;->setSelectedPaymentMethod$app(Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;)V

    return-object v1
.end method

.method public static final purchaseFromGooglePlay(Lfast/dic/dict/PaymentMethodFragment;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->isIabServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getPaymentConnectionFailedListener()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const-string v1, "Google play is unavailable"

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->dismiss()V

    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getProductId()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object v1

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->purchaseFromGooglePlay(Ljava/lang/String;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lfast/dic/dict/utils/FDAlertManger;->showCouldNotPurchaseAlert(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getPaymentFailedListener()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const-string v1, "Google play purchased failed"

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->dismiss()V

    :cond_1
    return-void
.end method

.method public static final restorePurchaseFromGooglePlay(Lfast/dic/dict/PaymentMethodFragment;)V
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string v1, "loadingSpinner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->isIabServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getPaymentConnectionFailedListener()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    const-string v1, "Google play is unavailable"

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->dismiss()V

    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getProductId()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object v1

    new-instance v2, Lfast/dic/dict/utils/GooglePaymentMethodExtensionKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lfast/dic/dict/utils/GooglePaymentMethodExtensionKt$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/PaymentMethodFragment;)V

    invoke-virtual {v1, v0, v2}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->restorePurchaseFromGooglePlay(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final restorePurchaseFromGooglePlay$lambda$0(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/domain/billing/PurchasedItem;)Lkotlin/Unit;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 40
    const-string v4, "loadingSpinner"

    if-nez p1, :cond_0

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v2, v3, v1, v0}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 43
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showNeverPurchasedAlert(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v5

    iget-object v5, v5, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    invoke-static {v5, v2, v3, v1, v0}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 53
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getSendPurchaseTokenToServerListener()Lkotlin/jvm/functions/Function4;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/PurchasedItem;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lfast/dic/dict/domain/billing/PurchasedItem;->getProductId()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object p0

    .line 57
    sget-object v2, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->GooglePlay:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    .line 53
    invoke-interface {v0, v1, p1, p0, v2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
