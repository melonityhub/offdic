.class public final Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;
.super Lfast/dic/dict/presentation/registration_form_screen/Hilt_RegistrationFormFragment;
.source "RegistrationFormFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegistrationFormFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegistrationFormFragment.kt\nfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment\n+ 2 FragmentNavArgsLazy.kt\nandroidx/navigation/fragment/FragmentNavArgsLazyKt\n+ 3 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 4 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,179:1\n42#2,3:180\n110#3,15:183\n30#4:198\n*S KotlinDebug\n*F\n+ 1 RegistrationFormFragment.kt\nfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment\n*L\n31#1:180,3\n33#1:183,15\n76#1:198\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000M\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002*\u0001\u0013\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010 \u001a\u00020\u001eH\u0016J\u0008\u0010!\u001a\u00020\u001eH\u0016J\u0006\u0010\"\u001a\u00020\u001eJ\u0006\u0010#\u001a\u00020\u001eR\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u0010\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014\u00ca\u0001\u0002\u0008%\u00a8\u0006$"
    }
    d2 = {
        "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "args",
        "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;",
        "getArgs",
        "()Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;",
        "args$delegate",
        "Landroidx/navigation/NavArgsLazy;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;",
        "viewModel",
        "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "inputChangesListener",
        "fast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1",
        "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1;",
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
        "onResume",
        "onPause",
        "signUpButtonEnable",
        "signUpUser",
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

.field private binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

.field private final inputChangesListener:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 28
    invoke-direct {p0}, Lfast/dic/dict/presentation/registration_form_screen/Hilt_RegistrationFormFragment;-><init>()V

    .line 31
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 180
    new-instance v1, Landroidx/navigation/NavArgsLazy;

    const-class v2, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$special$$inlined$navArgs$1;

    invoke-direct {v3, v0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$special$$inlined$navArgs$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2, v3}, Landroidx/navigation/NavArgsLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    .line 31
    iput-object v1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    .line 184
    new-instance v1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 188
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 189
    const-class v2, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 33
    iput-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 35
    new-instance v0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1;-><init>(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;)V

    iput-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->inputChangesListener:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1;

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;)Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;
    .locals 0

    .line 28
    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    return-object p0
.end method

.method private final getArgs()Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;
    .locals 0

    .line 31
    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    check-cast p0, Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;

    return-object p0
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;

    return-object p0
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;Landroid/view/View;)V
    .locals 0

    .line 52
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    return-void
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;Landroid/view/View;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getViewModel()Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->isCurrentLanguagePersian()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "/persian"

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 74
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://fastdic.com/terms-conditions"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "?disableSections=true"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "parse(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 78
    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, v0}, Lfast/dic/dict/utils/ContextExtKt;->startActivityWithIntent(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method static final onCreateView$lambda$2(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;Landroid/view/View;)V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->signUpUser()V

    return-void
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState;)Lkotlin/Unit;
    .locals 7

    .line 100
    instance-of v0, p1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$Loading;

    const-string v1, "binding"

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-string v5, "loadingSpinner"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 101
    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez p0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    goto/16 :goto_0

    .line 104
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$Success;

    if-eqz v0, :cond_4

    .line 105
    iget-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->isModal()Z

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_3

    .line 108
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    .line 109
    sget p1, Lfast/dic/dict/R$id;->finishRegistrationFragment:I

    .line 108
    invoke-static {p0, p1, v6, v0, v6}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 112
    :cond_3
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    .line 113
    sget p1, Lfast/dic/dict/R$id;->finishRegistrationFragmentDialog:I

    .line 112
    invoke-static {p0, p1, v6, v0, v6}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 118
    :cond_4
    instance-of v0, p1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$Error;

    if-eqz v0, :cond_7

    .line 119
    iget-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_5
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 121
    check-cast p1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$Error;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 122
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showErrorMessageAlert(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 124
    :cond_6
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showNoResponseFromServerAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 128
    :cond_7
    instance-of v0, p1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$ParseError;

    if-eqz v0, :cond_a

    .line 129
    iget-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_8
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 132
    sget-object v0, Lfast/dic/dict/services/parse/ParseError;->Companion:Lfast/dic/dict/services/parse/ParseError$Companion;

    check-cast p1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$ParseError;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$ParseError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, ""

    :cond_9
    invoke-virtual {p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$ParseError;->getCode()I

    move-result p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lfast/dic/dict/services/parse/ParseError$Companion;->getRightMessage(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 133
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showErrorMessageAlert(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 136
    :cond_a
    instance-of p1, p1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$NoInternetError;

    if-eqz p1, :cond_c

    .line 137
    iget-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez p1, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_b
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 139
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showNotConnectedToInternetAlert(Landroid/content/Context;)V

    .line 142
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 99
    :cond_c
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 49
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    const/4 p2, 0x0

    .line 51
    const-string v0, "binding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->editEmail:Landroid/widget/Button;

    new-instance v1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->userFullNameInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->inputChangesListener:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1;

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    iget-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->enterPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->inputChangesListener:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1;

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    iget-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_3
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->repeatEnterPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->inputChangesListener:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1;

    check-cast v1, Landroid/text/TextWatcher;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 59
    iget-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_4
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->repeatEnterPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$onCreateView$2;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$onCreateView$2;-><init>(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;)V

    check-cast v1, Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 70
    iget-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_5
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->emailAddressLabel:Landroid/widget/TextView;

    sget v1, Lfast/dic/dict/R$string;->register_description:I

    invoke-direct {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getArgs()Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;->getEmail()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_6
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->termsButton:Landroid/widget/Button;

    new-instance v1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez p1, :cond_7

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_7
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->signupButton:Landroid/widget/Button;

    new-instance v1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->isModal()Z

    move-result p1

    .line 89
    iget-object v1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-eqz p1, :cond_9

    if-nez v1, :cond_8

    .line 87
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p2

    :cond_8
    iget-object p1, v1, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    :cond_9
    if-nez v1, :cond_a

    .line 89
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p2

    :cond_a
    iget-object p1, v1, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 92
    :goto_0
    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez p0, :cond_b

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object p2, p0

    :goto_1
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 152
    invoke-super {p0}, Lfast/dic/dict/presentation/registration_form_screen/Hilt_RegistrationFormFragment;->onPause()V

    .line 154
    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 147
    invoke-super {p0}, Lfast/dic/dict/presentation/registration_form_screen/Hilt_RegistrationFormFragment;->onResume()V

    .line 148
    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/registration_form_screen/Hilt_RegistrationFormFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-direct {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getViewModel()Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->getUiState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;)V

    new-instance p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final signUpButtonEnable()V
    .locals 3

    .line 156
    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 157
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->userFullNameInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->enterPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 159
    iget-object v2, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->repeatEnterPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 161
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->signupButton:Landroid/widget/Button;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 162
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 163
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 164
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 161
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public final signUpUser()V
    .locals 5

    .line 167
    iget-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->binding:Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 168
    :cond_0
    iget-object v1, v0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->userFullNameInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object v2, v0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->enterPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 170
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentRegistrationFormBinding;->repeatEnterPasswordInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-direct {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getArgs()Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;

    move-result-object v3

    invoke-virtual {v3}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;->getEmail()Ljava/lang/String;

    move-result-object v3

    .line 173
    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 175
    :cond_2
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 177
    :cond_3
    invoke-direct {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->getViewModel()Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;

    move-result-object p0

    invoke-virtual {p0, v3, v2, v1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->submitRegistrationForm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
