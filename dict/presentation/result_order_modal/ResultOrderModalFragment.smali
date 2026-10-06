.class public final Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;
.super Lfast/dic/dict/presentation/result_order_modal/Hilt_ResultOrderModalFragment;
.source "ResultOrderModalFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResultOrderModalFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResultOrderModalFragment.kt\nfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment\n+ 2 FragmentNavArgsLazy.kt\nandroidx/navigation/fragment/FragmentNavArgsLazyKt\n+ 3 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,109:1\n42#2,3:110\n110#3,15:113\n*S KotlinDebug\n*F\n+ 1 ResultOrderModalFragment.kt\nfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment\n*L\n28#1:110,3\n30#1:113,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0012\u0010!\u001a\u00020\"2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001a2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0008\u0010&\u001a\u00020$H\u0002R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\n\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016\u00ca\u0001\u0002\u0008(\u00a8\u0006\'"
    }
    d2 = {
        "Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "<init>",
        "()V",
        "adapter",
        "Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;",
        "getAdapter",
        "()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;",
        "setAdapter",
        "(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;)V",
        "Ljavax/inject/Inject;",
        "args",
        "Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;",
        "getArgs",
        "()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;",
        "args$delegate",
        "Landroidx/navigation/NavArgsLazy;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;",
        "viewModel",
        "Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;",
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
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "onViewCreated",
        "",
        "view",
        "dismissWithChangedValue",
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
.field public adapter:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final args$delegate:Landroidx/navigation/NavArgsLazy;

.field private binding:Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 24
    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/Hilt_ResultOrderModalFragment;-><init>()V

    .line 28
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 110
    new-instance v1, Landroidx/navigation/NavArgsLazy;

    const-class v2, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$special$$inlined$navArgs$1;

    invoke-direct {v3, v0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$special$$inlined$navArgs$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2, v3}, Landroidx/navigation/NavArgsLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    .line 28
    iput-object v1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    .line 114
    new-instance v1, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 118
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 119
    const-class v2, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final dismissWithChangedValue()V
    .locals 4

    .line 95
    const-string v0, "orderChanged"

    const/4 v1, 0x1

    .line 97
    :try_start_0
    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-static {v2}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v2

    sget v3, Lfast/dic/dict/R$id;->wordResultScreen:I

    invoke-virtual {v2, v3}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 100
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 103
    new-array v3, v1, [Lkotlin/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    const-string v1, "bottom_sheet_result"

    invoke-virtual {v2, v1, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 107
    :goto_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->dismiss()V

    return-void
.end method

.method private final getArgs()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;
    .locals 0

    .line 28
    iget-object p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    check-cast p0, Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    return-object p0
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;

    return-object p0
.end method

.method static final onCreateDialog$lambda$0(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;Landroid/content/DialogInterface;)V
    .locals 5

    .line 72
    instance-of v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 73
    :goto_0
    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getArgs()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->getForEnglish()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "requireContext(...)"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x441b0000    # 620.0f

    invoke-static {v4, p0, v3, v2, v1}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x43be0000    # 380.0f

    invoke-static {v4, p0, v3, v2, v1}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setPeekHeight(I)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 79
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setFitToContents(Z)V

    :cond_3
    return-void
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->dismiss()V

    return-void
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;Landroid/view/View;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getArgs()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->getForEnglish()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getViewModel()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;

    move-result-object p1

    invoke-static {}, Lfast/dic/dict/const/ConfigConstKt;->getDEFAULT_ENGLISH_RESULT_ORDER_BY()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getArgs()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->getForEnglish()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;->updateOrder(Ljava/util/List;Z)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getViewModel()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;

    move-result-object p1

    invoke-static {}, Lfast/dic/dict/const/ConfigConstKt;->getDEFAULT_PERSIAN_RESULT_ORDER_BY()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getArgs()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->getForEnglish()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;->updateOrder(Ljava/util/List;Z)V

    .line 57
    :goto_0
    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->dismissWithChangedValue()V

    return-void
.end method

.method static final onCreateView$lambda$2(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;Landroid/view/View;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getViewModel()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getAdapter()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getArgs()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->getForEnglish()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;->updateOrder(Ljava/util/List;Z)V

    .line 63
    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->dismissWithChangedValue()V

    return-void
.end method


# virtual methods
.method public final getAdapter()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;
    .locals 0

    .line 27
    iget-object p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->adapter:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lfast/dic/dict/presentation/result_order_modal/Hilt_ResultOrderModalFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const-string v0, "onCreateDialog(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 36
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->binding:Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    .line 38
    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getAdapter()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    move-result-object p1

    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getArgs()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->getForEnglish()Z

    move-result p2

    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->setEnglishWord(Z)V

    .line 39
    iget-object p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->binding:Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getAdapter()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->setAdapter(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;)V

    .line 40
    iget-object p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->binding:Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 42
    new-instance p1, Lfast/dic/dict/presentation/result_order_modal/ItemTouchHelperCallback;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getAdapter()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    move-result-object v0

    invoke-direct {p1, v0}, Lfast/dic/dict/presentation/result_order_modal/ItemTouchHelperCallback;-><init>(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;)V

    .line 43
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    check-cast p1, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 44
    iget-object p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->binding:Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->orderRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 46
    iget-object p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->binding:Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    if-nez p1, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_3
    new-instance v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->setDismissClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->binding:Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    if-nez p1, :cond_4

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_4
    new-instance v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->setRestoreClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->binding:Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    if-nez p1, :cond_5

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_5
    new-instance v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->setSaveClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->binding:Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;

    if-nez p0, :cond_6

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/result_order_modal/Hilt_ResultOrderModalFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getViewModel()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;

    move-result-object p1

    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getArgs()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->getForEnglish()Z

    move-result p2

    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;->getOrderResult(Z)Ljava/util/List;

    move-result-object p1

    .line 89
    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getAdapter()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    move-result-object p2

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;->submitList(Ljava/util/List;)V

    .line 91
    invoke-virtual {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    sget p1, Lfast/dic/dict/R$style;->DialogTheme:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    return-void
.end method

.method public final setAdapter(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->adapter:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    return-void
.end method
