.class public final Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;
.super Lfast/dic/dict/presentation/login_screen/Hilt_LoginSignupFragment;
.source "LoginSignupFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginSignupFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginSignupFragment.kt\nfast/dic/dict/presentation/login_screen/LoginSignupFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,194:1\n110#2,15:195\n1#3:210\n*S KotlinDebug\n*F\n+ 1 LoginSignupFragment.kt\nfast/dic/dict/presentation/login_screen/LoginSignupFragment\n*L\n32#1:195,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0017\u001a\u00020\u0015H\u0016J\u0008\u0010\u0018\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u000e\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001eR\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008!\u00a8\u0006 "
    }
    d2 = {
        "Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lfast/dic/dict/presentation/login_screen/LoginViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/login_screen/LoginViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentLoginSignupBinding;",
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
        "onStart",
        "onStop",
        "onDismiss",
        "dialog",
        "Landroid/content/DialogInterface;",
        "checkEmailForSignInOrUp",
        "email",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$Companion;

.field public static final DIALOG_STATUS_KEY:Ljava/lang/String; = "login_dialog_dismissed"


# instance fields
.field private binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->Companion:Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 29
    invoke-direct {p0}, Lfast/dic/dict/presentation/login_screen/Hilt_LoginSignupFragment;-><init>()V

    .line 32
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 196
    new-instance v1, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 200
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 201
    const-class v2, Lfast/dic/dict/presentation/login_screen/LoginViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;
    .locals 0

    .line 29
    iget-object p0, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    return-object p0
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/login_screen/LoginViewModel;
    .locals 0

    .line 32
    iget-object p0, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/login_screen/LoginViewModel;

    return-object p0
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;Landroid/view/View;)V
    .locals 0

    .line 42
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    return-void
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;Landroid/view/View;)V
    .locals 2

    .line 46
    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->isModal()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 47
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->forgetPasswordFragment:I

    invoke-static {p0, p1, v1, v0, v1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    .line 49
    :cond_0
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->forgetPasswordFragmentDialog:I

    invoke-static {p0, p1, v1, v0, v1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method static final onCreateView$lambda$2(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->checkEmailForSignInOrUp(Ljava/lang/String;)V

    return-void
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState;)Lkotlin/Unit;
    .locals 7

    .line 96
    instance-of v0, p1, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$Loading;

    const-string v1, "binding"

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-string v5, "loadingSpinner"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 97
    iget-object p0, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez p0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    goto/16 :goto_2

    .line 100
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$EmailExists;

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_2
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 103
    new-instance v0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;

    check-cast p1, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$EmailExists;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$EmailExists;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->isModal()Z

    move-result p1

    if-nez p1, :cond_3

    .line 106
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    .line 107
    sget v1, Lfast/dic/dict/R$id;->enterPasswordFragment:I

    .line 108
    invoke-virtual {v0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    invoke-static {p1, v1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 111
    :cond_3
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    .line 112
    sget v1, Lfast/dic/dict/R$id;->enterPasswordFragmentDialog:I

    .line 113
    invoke-virtual {v0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    invoke-static {p1, v1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    .line 117
    :goto_0
    invoke-direct {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->getViewModel()Lfast/dic/dict/presentation/login_screen/LoginViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->resetState()V

    goto/16 :goto_2

    .line 120
    :cond_4
    instance-of v0, p1, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$NewUser;

    if-eqz v0, :cond_7

    .line 121
    iget-object v0, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_5
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 123
    new-instance v0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;

    check-cast p1, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$NewUser;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$NewUser;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->isModal()Z

    move-result p1

    if-nez p1, :cond_6

    .line 126
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    .line 127
    sget v1, Lfast/dic/dict/R$id;->registrationFormFragment:I

    .line 128
    invoke-virtual {v0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    invoke-static {p1, v1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    goto :goto_1

    .line 131
    :cond_6
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    .line 132
    sget v1, Lfast/dic/dict/R$id;->registrationFormFragmentDialog:I

    .line 133
    invoke-virtual {v0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 131
    invoke-static {p1, v1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    .line 137
    :goto_1
    invoke-direct {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->getViewModel()Lfast/dic/dict/presentation/login_screen/LoginViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->resetState()V

    goto/16 :goto_2

    .line 140
    :cond_7
    instance-of v0, p1, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$Error;

    if-eqz v0, :cond_b

    .line 141
    iget-object v0, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_8
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 143
    check-cast p1, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$Error;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "i/o failure"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 144
    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_e

    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showNotConnectedToInternetAlert(Landroid/content/Context;)V

    goto :goto_2

    .line 145
    :cond_9
    invoke-virtual {p1}, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 146
    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_e

    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showErrorMessageAlert(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    .line 148
    :cond_a
    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_e

    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showNoResponseFromServerAlert(Landroid/content/Context;)V

    goto :goto_2

    .line 152
    :cond_b
    instance-of p1, p1, Lfast/dic/dict/presentation/login_screen/LoginViewModelUIState$NoInternetError;

    if-eqz p1, :cond_d

    .line 153
    iget-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez p1, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_c
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 155
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showNotConnectedToInternetAlert(Landroid/content/Context;)V

    goto :goto_2

    .line 159
    :cond_d
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "State not handled for login screen!"

    invoke-virtual {p0, v0, p1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_e
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final checkEmailForSignInOrUp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->getViewModel()Lfast/dic/dict/presentation/login_screen/LoginViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->checkUserEmail(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 39
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    const/4 p2, 0x0

    .line 41
    const-string v0, "binding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->closeButton:Landroid/widget/Button;

    new-instance v1, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->forgetPassword:Landroid/widget/Button;

    new-instance v1, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$onCreateView$3;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$onCreateView$3;-><init>(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)V

    check-cast v1, Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 63
    iget-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_3
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$onCreateView$4;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$onCreateView$4;-><init>(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    iget-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_4
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->okAndNavigateButton:Landroid/widget/Button;

    new-instance v1, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->isModal()Z

    move-result p1

    .line 81
    iget-object v1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-eqz p1, :cond_6

    if-nez v1, :cond_5

    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p2

    :cond_5
    iget-object p1, v1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p2

    :cond_7
    iget-object p1, v1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 84
    :goto_0
    iget-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez p1, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_8
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 85
    iget-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez p1, :cond_9

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_9
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    .line 86
    iget-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez p1, :cond_a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_a
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    const-string p3, "emailAddressInput"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lfast/dic/dict/utils/EditTextExKt;->showKeyboard(Landroid/widget/EditText;)V

    .line 88
    iget-object p0, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez p0, :cond_b

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object p2, p0

    :goto_1
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-super {p0, p1}, Lfast/dic/dict/presentation/login_screen/Hilt_LoginSignupFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 166
    invoke-super {p0}, Lfast/dic/dict/presentation/login_screen/Hilt_LoginSignupFragment;->onStart()V

    .line 168
    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->requireView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 173
    invoke-super {p0}, Lfast/dic/dict/presentation/login_screen/Hilt_LoginSignupFragment;->onStop()V

    .line 175
    iget-object v0, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 176
    iget-object p0, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->binding:Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    iget-object p0, v1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "emailAddressInput"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/EditText;

    invoke-static {p0}, Lfast/dic/dict/utils/EditTextExKt;->hideKeyboard(Landroid/widget/EditText;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/login_screen/Hilt_LoginSignupFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    invoke-direct {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->getViewModel()Lfast/dic/dict/presentation/login_screen/LoginViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/login_screen/LoginViewModel;->getUiState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)V

    new-instance p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
