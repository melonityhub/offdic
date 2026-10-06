.class public final Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;
.super Lfast/dic/dict/presentation/wod_history_screen/Hilt_WodHistoryFragment;
.source "WodHistoryFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWodHistoryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WodHistoryFragment.kt\nfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment\n+ 2 FragmentNavArgsLazy.kt\nandroidx/navigation/fragment/FragmentNavArgsLazyKt\n+ 3 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,80:1\n42#2,3:81\n110#3,15:84\n*S KotlinDebug\n*F\n+ 1 WodHistoryFragment.kt\nfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment\n*L\n30#1:81,3\n32#1:84,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001a2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\n\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016\u00ca\u0001\u0002\u0008%\u00a8\u0006$"
    }
    d2 = {
        "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "adapter",
        "Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;",
        "getAdapter",
        "()Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;",
        "setAdapter",
        "(Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;)V",
        "Ljavax/inject/Inject;",
        "args",
        "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;",
        "getArgs",
        "()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;",
        "args$delegate",
        "Landroidx/navigation/NavArgsLazy;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentWodHistoryBinding;",
        "viewModel",
        "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;",
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
.field public adapter:Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final args$delegate:Landroidx/navigation/NavArgsLazy;

.field private binding:Lfast/dic/dict/databinding/FragmentWodHistoryBinding;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 25
    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_history_screen/Hilt_WodHistoryFragment;-><init>()V

    .line 30
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 81
    new-instance v1, Landroidx/navigation/NavArgsLazy;

    const-class v2, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$special$$inlined$navArgs$1;

    invoke-direct {v3, v0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$special$$inlined$navArgs$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2, v3}, Landroidx/navigation/NavArgsLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    .line 30
    iput-object v1, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    .line 85
    new-instance v1, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 89
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 90
    const-class v2, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 32
    iput-object v0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getArgs()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;
    .locals 0

    .line 30
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->args$delegate:Landroidx/navigation/NavArgsLazy;

    check-cast p0, Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;

    return-object p0
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;
    .locals 0

    .line 32
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    return-object p0
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 25

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    new-instance v2, Lfast/dic/dict/models/database/ListModel;

    const v23, 0x1bffff

    const/16 v24, 0x0

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, p1

    invoke-direct/range {v1 .. v24}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x6

    const/4 v4, 0x0

    move-object v2, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;-><init>(Lfast/dic/dict/models/database/ListModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    move-object/from16 v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v2, Lfast/dic/dict/R$id;->wordResultModal:I

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    .line 48
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState;)Lkotlin/Unit;
    .locals 10

    .line 63
    instance-of v0, p1, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Loading;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-string v4, "loadingSpinner"

    const-string v5, "binding"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWodHistoryBinding;

    if-nez v0, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_0
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentWodHistoryBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2, v3, v1, v6}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 67
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Data;

    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getAdapter()Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

    move-result-object v0

    move-object v7, p1

    check-cast v7, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Data;

    invoke-virtual {v7}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Data;->getModels()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v7}, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;->submitList(Ljava/util/List;)V

    .line 69
    iget-object v0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWodHistoryBinding;

    if-nez v0, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_2
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentWodHistoryBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v2, v3, v1, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWodHistoryBinding;

    if-nez v0, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_3
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentWodHistoryBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v7, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getAdapter()Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

    move-result-object v8

    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getViewModel()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    move-result-object v9

    invoke-virtual {v9}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->isCurrentLanguagePersian()Z

    move-result v9

    invoke-direct {v7, v8, v9}, Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;-><init>(Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;Z)V

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 73
    :cond_4
    instance-of p1, p1, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryUIState$Error;

    if-eqz p1, :cond_6

    .line 74
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWodHistoryBinding;

    if-nez p0, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_5
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentWodHistoryBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v2, v3, v1, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 76
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getAdapter()Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->adapter:Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

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

    .line 38
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentWodHistoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentWodHistoryBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWodHistoryBinding;

    const/4 p2, 0x0

    .line 40
    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getAdapter()Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentWodHistoryBinding;->setAdapter(Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;)V

    .line 41
    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getAdapter()Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

    move-result-object p1

    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getViewModel()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->isCurrentLanguagePersian()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;->setPersianLanguage(Z)V

    .line 42
    iget-object p1, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWodHistoryBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentWodHistoryBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 43
    iget-object p1, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWodHistoryBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentWodHistoryBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lfast/dic/dict/utils/ViewExtKt;->addDivider(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 45
    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getAdapter()Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

    move-result-object p1

    new-instance v0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;->setOnItemClick(Lkotlin/jvm/functions/Function1;)V

    .line 50
    iget-object p0, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentWodHistoryBinding;

    if-nez p0, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentWodHistoryBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/wod_history_screen/Hilt_WodHistoryFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 57
    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getViewModel()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->isCurrentLanguagePersian()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 58
    sget-object p2, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getArgs()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->replaceNumbersToFarsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 60
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getArgs()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;->getYear()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/fastdic/android/modules/fdnumberstowords/utils/FDStringExtKt;->toEnglishNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p2, ""

    .line 56
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lfast/dic/dict/utils/ContextExtKt;->setToolbarTitle(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getViewModel()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->getState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;)V

    new-instance v1, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 78
    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getViewModel()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;

    move-result-object p1

    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->getArgs()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;->getYear()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;->getWodHistory(Ljava/lang/String;)V

    return-void
.end method

.method public final setAdapter(Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;->adapter:Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

    return-void
.end method
