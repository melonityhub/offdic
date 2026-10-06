.class public final Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;
.super Lfast/dic/dict/presentation/enter_password_screen/Hilt_EnterPasswordFragment;
.source "EnterPasswordFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterPasswordFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterPasswordFragment.kt\nfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment\n+ 2 FragmentNavArgsLazy.kt\nandroidx/navigation/fragment/FragmentNavArgsLazyKt\n+ 3 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n42#2,3:177\n110#3,15:180\n1#4:195\n*S KotlinDebug\n*F\n+ 1 EnterPasswordFragment.kt\nfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment\n*L\n32#1:177,3\n34#1:180,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0016\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fR\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00ca\u0001\u0002\u0008\"\u00a8\u0006!"
    }
    d2 = {
        "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "args",
        "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;",
        "getArgs",
        "()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;",
        "args$delegate",
        "Landroidx/navigation/NavArgsLazy;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;",
        "viewModel",
        "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
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
        "loginUser",
        "email",
        "",
        "password",
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
.field private final args$delegate:Landroidx/navigation/NavArgsLazy;

.field private binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 29
    invoke-direct {p0}, Lfast/dic/dict/presentation/enter_password_screen/Hilt_EnterPasswordFragment;-><init>()V

    .line 32
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 177
    new-instance v1, Landroidx/navigation/NavArgsLazy;

    const-class v2, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$special$$inlined$navArgs$1;

    invoke-direct {v3, v0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$special$$inlined$navArgs$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2, v3}, Landroidx/navigation/NavArgsLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    .line 32
    iput-object v1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    .line 181
    new-instance v1, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 185
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 186
    const-class v2, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getArgs(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;
    .locals 0

    .line 29
    invoke-direct {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getArgs()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method private final getArgs()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;
    .locals 0

    .line 32
    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    check-cast p0, Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;

    return-object p0
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;
    .locals 0

    .line 34
    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;

    return-object p0
.end method

.method static final onCreateView$lambda$0(Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;Landroid/view/View;)V
    .locals 0

    .line 49
    check-cast p0, Landroid/widget/EditText;

    invoke-static {p0}, Lfast/dic/dict/utils/EditTextExKt;->hideKeyboard(Landroid/widget/EditText;)V

    .line 50
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    return-void
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getArgs()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->getEmail()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->loginUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static final onCreateView$lambda$2(Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;Landroid/view/View;)V
    .locals 1

    .line 59
    check-cast p0, Landroid/widget/EditText;

    invoke-static {p0}, Lfast/dic/dict/utils/EditTextExKt;->hideKeyboard(Landroid/widget/EditText;)V

    .line 61
    invoke-virtual {p1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->isModal()Z

    move-result p0

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 62
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->forgetPasswordFragment:I

    invoke-static {p0, p1, v0, p2, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    .line 64
    :cond_0
    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->forgetPasswordFragmentDialog:I

    invoke-static {p0, p1, v0, p2, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState;)Lkotlin/Unit;
    .locals 8

    .line 106
    instance-of v0, p1, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$Loading;

    const-wide/16 v1, 0x0

    const-string v3, "loadingSpinner"

    const/4 v4, 0x1

    const-string v5, "binding"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 107
    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez p0, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v1, v2, v4, v6}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    goto/16 :goto_5

    .line 110
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$Success;

    const-string v7, "passwordInput"

    if-eqz v0, :cond_8

    .line 111
    iget-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez p1, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v1, v2, v4, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 112
    iget-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez p1, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_3
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lfast/dic/dict/utils/EditTextExKt;->hideKeyboard(Landroid/widget/EditText;)V

    .line 115
    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->isModal()Z

    move-result p1

    if-nez p1, :cond_7

    .line 116
    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->dismissLoginFlow()V

    .line 117
    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lfast/dic/dict/activities/MainActivity;

    if-eqz v0, :cond_4

    check-cast p1, Lfast/dic/dict/activities/MainActivity;

    goto :goto_0

    :cond_4
    move-object p1, v6

    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lfast/dic/dict/activities/MainActivity;->checkAndUpdateTabbarMenuAfterLogin()V

    .line 118
    :cond_5
    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of p1, p0, Lfast/dic/dict/activities/MainActivity;

    if-eqz p1, :cond_6

    move-object v6, p0

    check-cast v6, Lfast/dic/dict/activities/MainActivity;

    :cond_6
    if-eqz v6, :cond_15

    sget p0, Lfast/dic/dict/R$id;->profileFragment:I

    invoke-virtual {v6, p0}, Lfast/dic/dict/activities/MainActivity;->selectTab(I)V

    goto/16 :goto_5

    .line 120
    :cond_7
    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->dismissLoginFlow()V

    .line 121
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 122
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 123
    const-string p1, "login_dialog_dismissed"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 128
    :cond_8
    instance-of v0, p1, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$Error;

    if-eqz v0, :cond_b

    .line 129
    iget-object v0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez v0, :cond_9

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_9
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1, v2, v4, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez v0, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object v6, v0

    :goto_1
    iget-object v0, v6, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lfast/dic/dict/utils/EditTextExKt;->hideKeyboard(Landroid/widget/EditText;)V

    .line 132
    check-cast p1, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$Error;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showErrorMessageAlert(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 135
    :cond_b
    instance-of v0, p1, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$NoInternetError;

    if-eqz v0, :cond_e

    .line 136
    iget-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez p1, :cond_c

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_c
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v1, v2, v4, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez p1, :cond_d

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    move-object v6, p1

    :goto_2
    iget-object p1, v6, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lfast/dic/dict/utils/EditTextExKt;->hideKeyboard(Landroid/widget/EditText;)V

    .line 139
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showNotConnectedToInternetAlert(Landroid/content/Context;)V

    goto/16 :goto_5

    .line 142
    :cond_e
    instance-of v0, p1, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$ParseError;

    if-eqz v0, :cond_12

    .line 143
    iget-object v0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez v0, :cond_f

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_f
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1, v2, v4, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez v0, :cond_10

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_10
    move-object v6, v0

    :goto_3
    iget-object v0, v6, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lfast/dic/dict/utils/EditTextExKt;->hideKeyboard(Landroid/widget/EditText;)V

    .line 147
    sget-object v0, Lfast/dic/dict/services/parse/ParseError;->Companion:Lfast/dic/dict/services/parse/ParseError$Companion;

    check-cast p1, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$ParseError;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$ParseError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v1, ""

    :cond_11
    invoke-virtual {p1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$ParseError;->getCode()I

    move-result p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lfast/dic/dict/services/parse/ParseError$Companion;->getRightMessage(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 148
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 150
    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 148
    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showErrorMessageAlert(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_5

    .line 154
    :cond_12
    instance-of p1, p1, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordUIState$UserNotActive;

    if-eqz p1, :cond_16

    .line 155
    iget-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez p1, :cond_13

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_13
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v1, v2, v4, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 156
    iget-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez p1, :cond_14

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    move-object v6, p1

    :goto_4
    iget-object p1, v6, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lfast/dic/dict/utils/EditTextExKt;->hideKeyboard(Landroid/widget/EditText;)V

    .line 158
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showAccountIsDeactivatedAlert(Landroid/content/Context;)V

    .line 162
    :cond_15
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 105
    :cond_16
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final loginUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 174
    :cond_3
    invoke-direct {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getViewModel()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;->loginWithPassword(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 40
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    const/4 p2, 0x0

    .line 42
    const-string v0, "binding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->passwordInput:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v1, "passwordInput"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez v1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p2

    :cond_1
    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->loginButton:Landroid/widget/Button;

    const-string v2, "loginButton"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez v2, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, p2

    :cond_2
    iget-object v2, v2, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->forgetPassword:Landroid/widget/Button;

    const-string v3, "forgetPassword"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez v3, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, p2

    :cond_3
    iget-object v3, v3, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->emailAddressLabel:Landroid/widget/TextView;

    const-string v4, "emailAddressLabel"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v4, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez v4, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, p2

    :cond_4
    iget-object v4, v4, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->backButton:Landroid/widget/ImageButton;

    const-string v5, "backButton"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v5, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$$ExternalSyntheticLambda1;

    invoke-direct {v5, p1, p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-direct {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getArgs()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;

    move-result-object v4

    invoke-virtual {v4}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->getEmail()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    new-instance v3, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v3, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v2, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$onCreateView$4;

    invoke-direct {v2, p1, p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$onCreateView$4;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;)V

    check-cast v2, Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 78
    new-instance v2, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$onCreateView$5;

    invoke-direct {v2, v1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$onCreateView$5;-><init>(Landroid/widget/Button;)V

    check-cast v2, Landroid/text/TextWatcher;

    invoke-virtual {p1, v2}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->isModal()Z

    move-result v1

    .line 91
    iget-object v2, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-eqz v1, :cond_6

    if-nez v2, :cond_5

    .line 89
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, p2

    :cond_5
    iget-object v1, v2, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, p2

    :cond_7
    iget-object p3, v2, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 94
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 95
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    .line 96
    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lfast/dic/dict/utils/EditTextExKt;->showKeyboard(Landroid/widget/EditText;)V

    .line 98
    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;

    if-nez p0, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object p2, p0

    :goto_1
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentEnterPasswordBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/enter_password_screen/Hilt_EnterPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    invoke-direct {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getViewModel()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;->getUiState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;)V

    new-instance p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
