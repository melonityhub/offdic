.class public final Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;
.super Lfast/dic/dict/presentation/finish_registration_screen/Hilt_FinishRegistrationFragment;
.source "FinishRegistrationFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u000f\u00a8\u0006\u000e"
    }
    d2 = {
        "Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "binding",
        "Lfast/dic/dict/databinding/FragmentFinishRegistrationBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private binding:Lfast/dic/dict/databinding/FragmentFinishRegistrationBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lfast/dic/dict/presentation/finish_registration_screen/Hilt_FinishRegistrationFragment;-><init>()V

    return-void
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;Landroid/view/View;)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;->isModal()Z

    move-result p1

    if-nez p1, :cond_0

    .line 29
    :try_start_0
    sget-object p1, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    .line 30
    sget p1, Lfast/dic/dict/R$id;->profileFragment:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;->dismissLoginFlow()V

    .line 37
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 38
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 39
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "login_dialog_dismissed"

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 24
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentFinishRegistrationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentFinishRegistrationBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;->binding:Lfast/dic/dict/databinding/FragmentFinishRegistrationBinding;

    const/4 p2, 0x0

    .line 26
    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentFinishRegistrationBinding;->returnToProfile:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p0, p0, Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;->binding:Lfast/dic/dict/databinding/FragmentFinishRegistrationBinding;

    if-nez p0, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentFinishRegistrationBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method
