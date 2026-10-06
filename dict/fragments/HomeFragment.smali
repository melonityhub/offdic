.class public final Lfast/dic/dict/fragments/HomeFragment;
.super Lfast/dic/dict/fragments/Hilt_HomeFragment;
.source "HomeFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHomeFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeFragment.kt\nfast/dic/dict/fragments/HomeFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,130:1\n110#2,15:131\n*S KotlinDebug\n*F\n+ 1 HomeFragment.kt\nfast/dic/dict/fragments/HomeFragment\n*L\n30#1:131,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001d\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\u001bH\u0002J\u0008\u0010\u001f\u001a\u00020\u001bH\u0002J\u0008\u0010 \u001a\u00020\u001bH\u0002J\u0012\u0010!\u001a\u00020\u001b2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000f\u00ca\u0001\u0002\u0008%\u00a8\u0006$"
    }
    d2 = {
        "Lfast/dic/dict/fragments/HomeFragment;",
        "Lfast/dic/dict/bases/BaseBindingFragment;",
        "<init>",
        "()V",
        "binding",
        "Lfast/dic/dict/databinding/FragmentHomeBinding;",
        "getBinding",
        "()Lfast/dic/dict/databinding/FragmentHomeBinding;",
        "setBinding",
        "(Lfast/dic/dict/databinding/FragmentHomeBinding;)V",
        "checkKeyboardIsReady",
        "",
        "viewModel",
        "Lfast/dic/dict/viewmodels/fragments/HomeViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/viewmodels/fragments/HomeViewModel;",
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
        "handleClickOnWordOfTheDay",
        "doWhenSearchBarFocused",
        "checkAndFillSearchBarWithArgs",
        "observeOnViewModel",
        "fillData",
        "message",
        "Lfast/dic/dict/models/api/WodApiModel;",
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
.field public binding:Lfast/dic/dict/databinding/FragmentHomeBinding;

.field private checkKeyboardIsReady:Z

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 26
    invoke-direct {p0}, Lfast/dic/dict/fragments/Hilt_HomeFragment;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lfast/dic/dict/fragments/HomeFragment;->checkKeyboardIsReady:Z

    .line 30
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 132
    new-instance v1, Lfast/dic/dict/fragments/HomeFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/fragments/HomeFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 136
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/fragments/HomeFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/fragments/HomeFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 137
    const-class v2, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/fragments/HomeFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/fragments/HomeFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/fragments/HomeFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/fragments/HomeFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/fragments/HomeFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/fragments/HomeFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 30
    iput-object v0, p0, Lfast/dic/dict/fragments/HomeFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final checkAndFillSearchBarWithArgs()V
    .locals 4

    .line 99
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lfast/dic/dict/fragments/HomeFragmentArgs;->Companion:Lfast/dic/dict/fragments/HomeFragmentArgs$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "requireArguments(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lfast/dic/dict/fragments/HomeFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/fragments/HomeFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/fragments/HomeFragmentArgs;->getWord()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 102
    :goto_0
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    const-string v0, "searchBarView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v3, v0, v2}, Lfast/dic/dict/views/SearchBarView;->setText$default(Lfast/dic/dict/views/SearchBarView;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final doWhenSearchBarFocused()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    new-instance v1, Lfast/dic/dict/fragments/HomeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/fragments/HomeFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/HomeFragment;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/views/SearchBarView;->setOnStartOpeningMode(Lkotlin/jvm/functions/Function0;)V

    .line 92
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    new-instance v1, Lfast/dic/dict/fragments/HomeFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lfast/dic/dict/fragments/HomeFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/fragments/HomeFragment;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/views/SearchBarView;->setClearButtonClickedListener(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static final doWhenSearchBarFocused$lambda$0(Lfast/dic/dict/fragments/HomeFragment;)Lkotlin/Unit;
    .locals 5

    .line 82
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentHomeBinding;->wodView:Lfast/dic/dict/views/WordOfTheDayView;

    const-string/jumbo v1, "wodView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    check-cast v0, Landroid/view/View;

    const-string v1, "searchBarView"

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setTransitionName(Landroid/view/View;Ljava/lang/String;)V

    .line 86
    new-array v0, v3, [Lkotlin/Pair;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object v2

    iget-object v2, v2, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 85
    invoke-static {v0}, Landroidx/navigation/fragment/FragmentNavigatorExtrasKt;->FragmentNavigatorExtras([Lkotlin/Pair;)Landroidx/navigation/fragment/FragmentNavigator$Extras;

    move-result-object v0

    .line 88
    new-instance v1, Lfast/dic/dict/fragments/SearchFragmentArgs;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object v3

    iget-object v3, v3, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {v3}, Lfast/dic/dict/views/SearchBarView;->getCurrentWord()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lfast/dic/dict/fragments/SearchFragmentArgs;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lfast/dic/dict/fragments/SearchFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 89
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v2, Lfast/dic/dict/R$id;->searchFragment:I

    check-cast v0, Landroidx/navigation/Navigator$Extras;

    invoke-virtual {p0, v2, v1, v4, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 90
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final doWhenSearchBarFocused$lambda$1(Lfast/dic/dict/fragments/HomeFragment;)Z
    .locals 0

    .line 93
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {p0}, Lfast/dic/dict/views/SearchBarView;->getOnStartOpeningMode()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method private final fillData(Lfast/dic/dict/models/api/WodApiModel;)V
    .locals 5

    .line 118
    const-string/jumbo v0, "wodView"

    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentHomeBinding;->wodView:Lfast/dic/dict/views/WordOfTheDayView;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lfast/dic/dict/utils/ViewExtKt;->hideMeNow(Landroid/view/View;)V

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentHomeBinding;->wodView:Lfast/dic/dict/views/WordOfTheDayView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4, v0, v2}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 124
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result v0

    .line 125
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentHomeBinding;->wodView:Lfast/dic/dict/views/WordOfTheDayView;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lfast/dic/dict/models/api/WodApiModel;->getDateJalali()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lfast/dic/dict/models/api/WodApiModel;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    invoke-virtual {v1, v0}, Lfast/dic/dict/views/WordOfTheDayView;->setDate(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentHomeBinding;->wodView:Lfast/dic/dict/views/WordOfTheDayView;

    invoke-virtual {p1}, Lfast/dic/dict/models/api/WodApiModel;->getWord()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/views/WordOfTheDayView;->setTodayWord(Ljava/lang/String;)V

    return-void
.end method

.method private final getViewModel()Lfast/dic/dict/viewmodels/fragments/HomeViewModel;
    .locals 0

    .line 30
    iget-object p0, p0, Lfast/dic/dict/fragments/HomeFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;

    return-object p0
.end method

.method private final handleClickOnWordOfTheDay()V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentHomeBinding;->wodView:Lfast/dic/dict/views/WordOfTheDayView;

    new-instance v1, Lfast/dic/dict/fragments/HomeFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lfast/dic/dict/fragments/HomeFragment$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/fragments/HomeFragment;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/views/WordOfTheDayView;->setOnClick(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final handleClickOnWordOfTheDay$lambda$0(Lfast/dic/dict/fragments/HomeFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 25

    const-string v0, "it"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
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

    .line 76
    move-object/from16 v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v2, Lfast/dic/dict/R$id;->wordResultModal:I

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    .line 77
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final observeOnViewModel()V
    .locals 3

    .line 106
    invoke-direct {p0}, Lfast/dic/dict/fragments/HomeFragment;->getViewModel()Lfast/dic/dict/viewmodels/fragments/HomeViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->getData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lfast/dic/dict/fragments/HomeFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lfast/dic/dict/fragments/HomeFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/fragments/HomeFragment;)V

    new-instance p0, Lfast/dic/dict/fragments/HomeFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v2}, Lfast/dic/dict/fragments/HomeFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static final observeOnViewModel$lambda$0(Lfast/dic/dict/fragments/HomeFragment;Lfast/dic/dict/viewmodels/fragments/HomeViewModelState;)Lkotlin/Unit;
    .locals 1

    .line 108
    instance-of v0, p1, Lfast/dic/dict/viewmodels/fragments/HomeViewModelState$Data;

    if-eqz v0, :cond_0

    .line 109
    check-cast p1, Lfast/dic/dict/viewmodels/fragments/HomeViewModelState$Data;

    invoke-virtual {p1}, Lfast/dic/dict/viewmodels/fragments/HomeViewModelState$Data;->getResponse()Lfast/dic/dict/models/api/WodApiModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lfast/dic/dict/fragments/HomeFragment;->fillData(Lfast/dic/dict/models/api/WodApiModel;)V

    .line 114
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onViewCreated$lambda$1(Lfast/dic/dict/fragments/HomeFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 69
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lfast/dic/dict/views/SearchBarView;->setCurrentWord(Ljava/lang/String;)V

    .line 70
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;
    .locals 0

    .line 28
    iget-object p0, p0, Lfast/dic/dict/fragments/HomeFragment;->binding:Lfast/dic/dict/databinding/FragmentHomeBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 36
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentHomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lfast/dic/dict/fragments/HomeFragment;->setBinding(Lfast/dic/dict/databinding/FragmentHomeBinding;)V

    .line 38
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentHomeBinding;->getRoot()Landroid/widget/FrameLayout;

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

    .line 42
    invoke-super {p0, p1, p2}, Lfast/dic/dict/fragments/Hilt_HomeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    invoke-direct {p0}, Lfast/dic/dict/fragments/HomeFragment;->observeOnViewModel()V

    .line 45
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentHomeBinding;->wodView:Lfast/dic/dict/views/WordOfTheDayView;

    const-string/jumbo p2, "wodView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lfast/dic/dict/utils/ViewExtKt;->hideMeNow(Landroid/view/View;)V

    .line 46
    invoke-direct {p0}, Lfast/dic/dict/fragments/HomeFragment;->handleClickOnWordOfTheDay()V

    .line 47
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentHomeBinding;->wodView:Lfast/dic/dict/views/WordOfTheDayView;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "requireContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/views/WordOfTheDayView;->verticallyCenter(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->requireContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/views/SearchBarView;->verticallyCenter(Landroid/content/Context;)V

    .line 50
    invoke-direct {p0}, Lfast/dic/dict/fragments/HomeFragment;->doWhenSearchBarFocused()V

    .line 51
    invoke-direct {p0}, Lfast/dic/dict/fragments/HomeFragment;->checkAndFillSearchBarWithArgs()V

    .line 53
    invoke-direct {p0}, Lfast/dic/dict/fragments/HomeFragment;->getViewModel()Lfast/dic/dict/viewmodels/fragments/HomeViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/viewmodels/fragments/HomeViewModel;->getWordOfDayData()V

    .line 55
    iget-boolean p1, p0, Lfast/dic/dict/fragments/HomeFragment;->checkKeyboardIsReady:Z

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    new-instance p2, Lfast/dic/dict/database/LocalStorage;

    invoke-direct {p2, p1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lfast/dic/dict/database/LocalStorage;->getMakeKeyboardOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {p1}, Lfast/dic/dict/views/SearchBarView;->isOpenedBar()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lfast/dic/dict/fragments/HomeFragment;->checkKeyboardIsReady:Z

    .line 59
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p2

    iget-object p2, p2, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {p2, p1}, Lfast/dic/dict/views/SearchBarView;->setWithAnimation(Z)V

    .line 60
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {p1}, Lfast/dic/dict/views/SearchBarView;->requestForFocus()V

    .line 61
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {p1}, Lfast/dic/dict/views/SearchBarView;->showKeyboard()V

    .line 66
    :cond_0
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 67
    const-string p2, "searchBarValue"

    invoke-virtual {p1, p2}, Landroidx/lifecycle/SavedStateHandle;->getLiveData(Ljava/lang/String;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Lfast/dic/dict/fragments/HomeFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/fragments/HomeFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/HomeFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/fragments/HomeFragment;)V

    new-instance p0, Lfast/dic/dict/fragments/HomeFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v0}, Lfast/dic/dict/fragments/HomeFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, p0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_1
    return-void
.end method

.method public final setBinding(Lfast/dic/dict/databinding/FragmentHomeBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lfast/dic/dict/fragments/HomeFragment;->binding:Lfast/dic/dict/databinding/FragmentHomeBinding;

    return-void
.end method
