.class public final Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;
.super Lfast/dic/dict/presentation/forget_password_screen/Hilt_ForgetPasswordFragment;
.source "ForgetPasswordFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForgetPasswordFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ForgetPasswordFragment.kt\nfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,127:1\n110#2,15:128\n*S KotlinDebug\n*F\n+ 1 ForgetPasswordFragment.kt\nfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment\n*L\n26#1:128,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u001a\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\r2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u000e\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u001b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "viewModel",
        "Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;",
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
        "resetPassword",
        "email",
        "",
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
.field private binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 23
    invoke-direct {p0}, Lfast/dic/dict/presentation/forget_password_screen/Hilt_ForgetPasswordFragment;-><init>()V

    .line 26
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 129
    new-instance v1, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 133
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 134
    const-class v2, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 26
    iput-object v0, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;)Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;
    .locals 0

    .line 23
    iget-object p0, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    return-object p0
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;
    .locals 0

    .line 26
    iget-object p0, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;

    return-object p0
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;Landroid/view/View;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "emailAddressInput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lfast/dic/dict/utils/EditTextExKt;->hideKeyboard(Landroid/widget/EditText;)V

    .line 38
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    return-void
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->resetPassword(Ljava/lang/String;)V

    return-void
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState;)Lkotlin/Unit;
    .locals 7

    .line 86
    instance-of v0, p1, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState$Loading;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-string v4, "loadingSpinner"

    const-string v5, "binding"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 87
    iget-object p0, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p0, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v2, v3, v1, v6}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    goto/16 :goto_2

    .line 90
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState$Success;

    if-eqz v0, :cond_a

    .line 91
    iget-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p1, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v2, v3, v1, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p1, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v6, p1

    :goto_0
    iget-object p1, v6, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "emailAddressInput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lfast/dic/dict/utils/EditTextExKt;->hideKeyboard(Landroid/widget/EditText;)V

    .line 94
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 95
    invoke-virtual {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_4

    sget v2, Lfast/dic/dict/R$string;->reset_password:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_4
    move-object v0, v1

    .line 96
    :cond_5
    invoke-virtual {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_6

    sget v3, Lfast/dic/dict/R$string;->an_email_sent_to_change_your_password:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    move-object v2, v1

    .line 98
    :cond_7
    invoke-virtual {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_9

    sget v4, Lfast/dic/dict/R$string;->close:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    move-object v1, v3

    .line 99
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 94
    invoke-virtual {p1, v0, v2, v1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOutForeCloseApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    .line 103
    :cond_a
    instance-of v0, p1, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState$Error;

    if-eqz v0, :cond_d

    .line 104
    iget-object v0, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez v0, :cond_b

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_b
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2, v3, v1, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 106
    check-cast p1, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState$Error;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState$Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 107
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showErrorMessageAlert(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    .line 109
    :cond_c
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showNoResponseFromServerAlert(Landroid/content/Context;)V

    goto :goto_2

    .line 113
    :cond_d
    instance-of p1, p1, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState$NoInternetError;

    if-eqz p1, :cond_f

    .line 114
    iget-object p0, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p0, :cond_e

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_e
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v2, v3, v1, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 117
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 85
    :cond_f
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 33
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    const/4 p2, 0x0

    .line 35
    const-string v0, "binding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->backButton:Landroid/widget/ImageButton;

    new-instance v1, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->sendRestPasswordButton:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$onCreateView$3;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$onCreateView$3;-><init>(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;)V

    check-cast v1, Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 56
    iget-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_3
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$onCreateView$4;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$onCreateView$4;-><init>(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;)V

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    invoke-virtual {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->isModal()Z

    move-result p1

    .line 71
    iget-object v1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-eqz p1, :cond_5

    if-nez v1, :cond_4

    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p2

    :cond_4
    iget-object p1, v1, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    .line 71
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p2

    :cond_6
    iget-object p1, v1, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 74
    :goto_0
    iget-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p1, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_7
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->clearFocus()V

    .line 75
    iget-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p1, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_8
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    .line 76
    iget-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p1, :cond_9

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_9
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    const-string p3, "emailAddressInput"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1}, Lfast/dic/dict/utils/EditTextExKt;->showKeyboard(Landroid/widget/EditText;)V

    .line 78
    iget-object p0, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->binding:Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;

    if-nez p0, :cond_a

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object p2, p0

    :goto_1
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentForgetPasswordBinding;->getRoot()Landroid/widget/FrameLayout;

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

    .line 82
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/forget_password_screen/Hilt_ForgetPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    invoke-direct {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->getViewModel()Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;->getUiState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;)V

    new-instance p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final resetPassword(Ljava/lang/String;)V
    .locals 2

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
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

    return-void

    .line 125
    :cond_1
    invoke-direct {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;->getViewModel()Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;->sendRestPasswordLink(Ljava/lang/String;)V

    return-void
.end method
