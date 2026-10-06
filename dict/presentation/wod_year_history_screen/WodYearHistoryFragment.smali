.class public final Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;
.super Lfast/dic/dict/presentation/wod_year_history_screen/Hilt_WodYearHistoryFragment;
.source "WodYearHistoryFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWodYearHistoryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WodYearHistoryFragment.kt\nfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,52:1\n110#2,15:53\n*S KotlinDebug\n*F\n+ 1 WodYearHistoryFragment.kt\nfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment\n*L\n24#1:53,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\n\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u001f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "adapter",
        "Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;",
        "getAdapter",
        "()Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;",
        "setAdapter",
        "(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;)V",
        "Ljavax/inject/Inject;",
        "viewModel",
        "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;",
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
.field public adapter:Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 19
    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_year_history_screen/Hilt_WodYearHistoryFragment;-><init>()V

    .line 24
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 54
    new-instance v1, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 58
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 59
    const-class v2, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;
    .locals 0

    .line 24
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    return-object p0
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->getViewModel()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->convertToJalaliYear(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 47
    :goto_0
    new-instance v0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;

    invoke-static {p1}, Lcom/fastdic/android/modules/fdnumberstowords/utils/FDStringExtKt;->toEnglishNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;-><init>(Ljava/lang/String;)V

    .line 48
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->wodHistoryFragment:I

    invoke-virtual {v0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    .line 49
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getAdapter()Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;
    .locals 0

    .line 23
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->adapter:Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 31
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;

    const/4 p2, 0x0

    .line 33
    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->getAdapter()Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;->setAdapter(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;)V

    .line 34
    iget-object p1, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 36
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;

    if-nez p0, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/wod_year_history_screen/Hilt_WodYearHistoryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->getAdapter()Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;

    move-result-object p1

    .line 43
    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->getViewModel()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->getYears()Ljava/util/List;

    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;->submitList(Ljava/util/List;)V

    .line 45
    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->getAdapter()Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;

    move-result-object p1

    new-instance p2, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;->setOnItemClick(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setAdapter(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;->adapter:Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;

    return-void
.end method
