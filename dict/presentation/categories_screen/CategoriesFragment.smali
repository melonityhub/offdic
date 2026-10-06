.class public final Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;
.super Lfast/dic/dict/presentation/categories_screen/Hilt_CategoriesFragment;
.source "CategoriesFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCategoriesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoriesFragment.kt\nfast/dic/dict/presentation/categories_screen/CategoriesFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,133:1\n110#2,15:134\n*S KotlinDebug\n*F\n+ 1 CategoriesFragment.kt\nfast/dic/dict/presentation/categories_screen/CategoriesFragment\n*L\n35#1:134,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J6\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0017b\u0010\u0008\u001f\u0012\u000c\u0008 \u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(!J\u001a\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u00182\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\n\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0011\u0010\u0012\u00ca\u0001\u0002\u0008%\u00a8\u0006$"
    }
    d2 = {
        "Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "adapter",
        "Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;",
        "getAdapter",
        "()Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;",
        "setAdapter",
        "(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;)V",
        "Ljavax/inject/Inject;",
        "scrollPosition",
        "Landroid/os/Parcelable;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentCategoriesBinding;",
        "viewModel",
        "Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "onPause",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Landroid/annotation/SuppressLint;",
        "value",
        "NotifyDataSetChanged",
        "onViewCreated",
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
.field public adapter:Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lfast/dic/dict/databinding/FragmentCategoriesBinding;

.field private scrollPosition:Landroid/os/Parcelable;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$D_BOf-vdHly2H71BU4h960KAoKw(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V
    .locals 0

    invoke-static {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->onCreateView$lambda$1$0$0$0(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ElLJvJddB_017-prCivUEQ8z1a8(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->onCreateView$lambda$1$0$0(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XXQL4MKThyPPGn6oLzTanhvETk8(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->onCreateView$lambda$1$1$0(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ntxM10BWAZp0X0xB66FYBt0XZW4(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V
    .locals 0

    invoke-static {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->onViewCreated$lambda$0$0(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 28
    invoke-direct {p0}, Lfast/dic/dict/presentation/categories_screen/Hilt_CategoriesFragment;-><init>()V

    .line 35
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 135
    new-instance v1, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 139
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 140
    const-class v2, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;
    .locals 0

    .line 35
    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;

    return-object p0
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)Lkotlin/Unit;
    .locals 3

    .line 60
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget v0, Lfast/dic/dict/R$id;->wodYearHistoryFragment:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    .line 61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;Lfast/dic/dict/models/WordCategoryModel;Z)Lkotlin/Unit;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "cat"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->isLoggedIn()Z

    move-result v2

    const-string v3, ""

    const-string v4, "getSupportFragmentManager(...)"

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v5, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    .line 67
    sget v2, Lfast/dic/dict/R$string;->word_category_title:I

    invoke-virtual {v0, v2}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 68
    sget v2, Lfast/dic/dict/R$string;->sort_the_result_desc:I

    invoke-virtual {v0, v2}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 69
    sget v2, Lfast/dic/dict/R$string;->login_or_signup:I

    invoke-virtual {v0, v2}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0x1f0

    const/16 v16, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 65
    invoke-direct/range {v5 .. v16}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/services/FDAds$AdForFeature;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    invoke-virtual {v5, v1, v3}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V

    invoke-virtual {v5, v1}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->setOnDismissed(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasSubscription()Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    invoke-virtual {v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v5, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    .line 85
    sget v2, Lfast/dic/dict/R$string;->word_category_title:I

    invoke-virtual {v0, v2}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 86
    sget v2, Lfast/dic/dict/R$string;->word_category_no_sub_desc:I

    invoke-virtual {v0, v2}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 87
    sget v2, Lfast/dic/dict/R$string;->translation_limit_title_cta_title:I

    invoke-virtual {v0, v2}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0x1e0

    const/16 v16, 0x0

    const/4 v6, 0x1

    .line 83
    const-string v10, "PRICING"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v16}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/services/FDAds$AdForFeature;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 90
    invoke-virtual {v5, v1, v3}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, v5}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;)V

    invoke-virtual {v5, v0}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->setOnDismissed(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 100
    :cond_1
    new-instance v2, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;

    invoke-direct {v2, v1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;-><init>(Lfast/dic/dict/models/WordCategoryModel;)V

    .line 101
    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 102
    sget v1, Lfast/dic/dict/R$id;->wordCategoryFragment:I

    .line 103
    invoke-virtual {v2}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 101
    invoke-static {v0, v1, v2}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    .line 106
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final onCreateView$lambda$1$0$0(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;Z)Lkotlin/Unit;
    .locals 3

    .line 74
    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getAdapter()Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    move-result-object p1

    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasSubscription()Z

    move-result v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->setHasSubscription(Z)V

    .line 75
    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getAdapter()Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->notifyDataSetChanged()V

    .line 76
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onCreateView$lambda$1$0$0$0(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->onStart()V

    return-void
.end method

.method private static final onCreateView$lambda$1$1$0(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Z)Lkotlin/Unit;
    .locals 6

    if-eqz p1, :cond_0

    .line 94
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    sget v1, Lfast/dic/dict/R$id;->moreFragment:I

    sget p0, Lfast/dic/dict/R$id;->newPricingFragment:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lfast/dic/dict/utils/FragmentExtensionKt;->openTab$default(Landroidx/fragment/app/Fragment;ILjava/lang/Integer;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 96
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;Lfast/dic/dict/presentation/categories_screen/CategoriesUIState;)Lkotlin/Unit;
    .locals 7

    .line 116
    instance-of v0, p1, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Loading;

    const-string v1, "binding"

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-string v5, "loadingSpinner"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 117
    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->binding:Lfast/dic/dict/databinding/FragmentCategoriesBinding;

    if-nez p0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentCategoriesBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->binding:Lfast/dic/dict/databinding/FragmentCategoriesBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_2
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentCategoriesBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 122
    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getAdapter()Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    move-result-object v0

    check-cast p1, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;->getModels()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->submitList(Ljava/util/List;)V

    .line 124
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 115
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method private static final onViewCreated$lambda$0$0(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->binding:Lfast/dic/dict/databinding/FragmentCategoriesBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentCategoriesBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->scrollPosition:Landroid/os/Parcelable;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getAdapter()Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->adapter:Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

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

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 47
    invoke-static {p1, p2, v0}, Lfast/dic/dict/databinding/FragmentCategoriesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentCategoriesBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->binding:Lfast/dic/dict/databinding/FragmentCategoriesBinding;

    if-eqz p3, :cond_0

    .line 51
    const-string p1, "scroll_position"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->scrollPosition:Landroid/os/Parcelable;

    .line 54
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getAdapter()Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    move-result-object p1

    invoke-direct {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getViewModel()Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->isCurrentLanguagePersian()Z

    move-result p2

    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->setCurrentLanguagePersian(Z)V

    .line 55
    iget-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->binding:Lfast/dic/dict/databinding/FragmentCategoriesBinding;

    const/4 p2, 0x0

    const-string p3, "binding"

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getAdapter()Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentCategoriesBinding;->setAdapter(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;)V

    .line 56
    iget-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->binding:Lfast/dic/dict/databinding/FragmentCategoriesBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentCategoriesBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 59
    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getAdapter()Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    move-result-object p1

    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda5;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->setOnWodClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 62
    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getAdapter()Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    move-result-object p1

    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda6;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->setOnItemClicked(Lkotlin/jvm/functions/Function2;)V

    .line 108
    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->binding:Lfast/dic/dict/databinding/FragmentCategoriesBinding;

    if-nez p0, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentCategoriesBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 38
    invoke-super {p0}, Lfast/dic/dict/presentation/categories_screen/Hilt_CategoriesFragment;->onPause()V

    .line 39
    iget-object v0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->binding:Lfast/dic/dict/databinding/FragmentCategoriesBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentCategoriesBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->scrollPosition:Landroid/os/Parcelable;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/categories_screen/Hilt_CategoriesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 114
    invoke-direct {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getViewModel()Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->getState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V

    new-instance v1, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 131
    invoke-direct {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->getViewModel()Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;->getCategories()V

    return-void
.end method

.method public final setAdapter(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;->adapter:Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    return-void
.end method
