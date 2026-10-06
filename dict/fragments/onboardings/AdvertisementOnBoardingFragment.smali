.class public final Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;
.super Lfast/dic/dict/fragments/onboardings/Hilt_AdvertisementOnBoardingFragment;
.source "AdvertisementOnBoardingFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J$\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u0015\u00a8\u0006\u0014"
    }
    d2 = {
        "Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "binding",
        "Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onBackPressed",
        "",
        "onClick",
        "",
        "button",
        "app",
        "Ldagger/hilt/android/AndroidEntryPoint;"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private binding:Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/Hilt_AdvertisementOnBoardingFragment;-><init>()V

    return-void
.end method

.method static final onCreateView$lambda$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .line 53
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v0, Lfast/dic/dict/R$id;->languageOnBoardingFragment:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 58
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lfast/dic/dict/database/LocalStorage;->setSeenOnBoarding(Z)V

    .line 59
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v2

    sget v3, Lfast/dic/dict/R$id;->homeFragment:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    .line 61
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    instance-of v3, v2, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v2}, Lfast/dic/dict/services/parse/FDParseUser;->isFree()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v2, Lfast/dic/dict/R$id;->continue_button:I

    if-eq p1, v2, :cond_4

    .line 68
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lfast/dic/dict/activities/MainActivity;

    if-eqz p1, :cond_2

    move-object v4, p0

    check-cast v4, Lfast/dic/dict/activities/MainActivity;

    :cond_2
    if-eqz v4, :cond_3

    .line 69
    invoke-virtual {v4}, Lfast/dic/dict/activities/MainActivity;->selectMoreTab()V

    .line 71
    :cond_3
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string p1, "fromOnBoarding"

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    sget v0, Lfast/dic/dict/R$id;->newPricingFragment:I

    invoke-virtual {p1, v0, p0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 29
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;

    .line 31
    const-string p2, "binding"

    const/4 p3, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 32
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;->continueButton:Landroid/widget/Button;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;->purchaseButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p1

    instance-of v0, p1, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_3

    check-cast p1, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_3
    move-object p1, p3

    :goto_0
    if-eqz p1, :cond_5

    .line 37
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->isFree()Z

    move-result p1

    if-nez p1, :cond_5

    .line 38
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_4
    sget v0, Lfast/dic/dict/R$string;->i_have_subscription:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;->setSecondaryButtonTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 40
    :cond_5
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;

    if-nez p1, :cond_6

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_6
    sget v0, Lfast/dic/dict/R$string;->remove_ads_and_by_pro_subscription:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;->setSecondaryButtonTitle(Ljava/lang/String;)V

    .line 43
    :goto_1
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;

    if-nez p1, :cond_7

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_7
    invoke-virtual {p1}, Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 49
    iget-object p0, p0, Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;

    if-nez p0, :cond_8

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object p3, p0

    :goto_2
    invoke-virtual {p3}, Lfast/dic/dict/databinding/FragmentAdvertisementOnBoardingBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
