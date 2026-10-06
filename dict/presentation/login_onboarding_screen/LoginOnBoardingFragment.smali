.class public final Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment;
.super Lfast/dic/dict/presentation/login_onboarding_screen/Hilt_LoginOnBoardingFragment;
.source "LoginOnBoardingFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u001a\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u0012\u00a8\u0006\u0011"
    }
    d2 = {
        "Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "binding",
        "Lfast/dic/dict/databinding/FragmentLoginOnboardingBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
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
.field private binding:Lfast/dic/dict/databinding/FragmentLoginOnboardingBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lfast/dic/dict/presentation/login_onboarding_screen/Hilt_LoginOnBoardingFragment;-><init>()V

    return-void
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment;Landroid/view/View;)V
    .locals 2

    .line 29
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->loginSignupFragment:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 26
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentLoginOnboardingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentLoginOnboardingBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginOnboardingBinding;

    const/4 p2, 0x0

    .line 28
    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLoginOnboardingBinding;->continueButton:Landroid/widget/Button;

    new-instance v0, Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object p0, p0, Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginOnboardingBinding;

    if-nez p0, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentLoginOnboardingBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/login_onboarding_screen/Hilt_LoginOnBoardingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 38
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->isLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 39
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->profileFragment:I

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    :cond_0
    return-void
.end method
