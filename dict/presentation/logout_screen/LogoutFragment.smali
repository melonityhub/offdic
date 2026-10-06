.class public final Lfast/dic/dict/presentation/logout_screen/LogoutFragment;
.super Lfast/dic/dict/presentation/logout_screen/Hilt_LogoutFragment;
.source "LogoutFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogoutFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogoutFragment.kt\nfast/dic/dict/presentation/logout_screen/LogoutFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,86:1\n110#2,15:87\n110#2,15:102\n*S KotlinDebug\n*F\n+ 1 LogoutFragment.kt\nfast/dic/dict/presentation/logout_screen/LogoutFragment\n*L\n23#1:87,15\n24#1:102,15\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u001c\u001a\u00020\u001aH\u0002J\u0010\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u000e\u0010\u000f\u00ca\u0001\u0002\u0008!\u00a8\u0006 "
    }
    d2 = {
        "Lfast/dic/dict/presentation/logout_screen/LogoutFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "binding",
        "Lfast/dic/dict/databinding/FragmentLogoutBinding;",
        "viewModel",
        "Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "syncViewModel",
        "Lfast/dic/dict/presentation/common/SyncViewModel;",
        "getSyncViewModel",
        "()Lfast/dic/dict/presentation/common/SyncViewModel;",
        "syncViewModel$delegate",
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
        "logoutUser",
        "close",
        "state",
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
.field private binding:Lfast/dic/dict/databinding/FragmentLogoutBinding;

.field private final syncViewModel$delegate:Lkotlin/Lazy;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Vc8mvhzEIFjSktSzqYaj9cqdY0Q(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->logoutUser$lambda$0$0(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 7

    .line 19
    invoke-direct {p0}, Lfast/dic/dict/presentation/logout_screen/Hilt_LogoutFragment;-><init>()V

    .line 23
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 88
    new-instance v1, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 92
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 93
    const-class v2, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v6, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v6, v0, v1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 23
    iput-object v1, p0, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->viewModel$delegate:Lkotlin/Lazy;

    .line 103
    new-instance v1, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$6;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 107
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$7;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$7;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 108
    const-class v2, Lfast/dic/dict/presentation/common/SyncViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$8;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$8;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$9;

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$10;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$special$$inlined$viewModels$default$10;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 24
    iput-object v0, p0, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->syncViewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final close(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 77
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "login_dialog_dismissed"

    invoke-virtual {p1, v1, v0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    :cond_0
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    return-void

    .line 82
    :cond_1
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->navigateUp()Z

    return-void
.end method

.method private final getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;
    .locals 0

    .line 24
    iget-object p0, p0, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->syncViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/common/SyncViewModel;

    return-object p0
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;
    .locals 0

    .line 23
    iget-object p0, p0, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    return-object p0
.end method

.method private final logoutUser()V
    .locals 3

    .line 62
    sget-object v0, Lfast/dic/dict/helpers/FDInternetHelper;->INSTANCE:Lfast/dic/dict/helpers/FDInternetHelper;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/helpers/FDInternetHelper;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/utils/FDAlertManger;->showNotConnectedToInternetAlert(Landroid/content/Context;)V

    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/presentation/common/SyncViewModel;->logout(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static final logoutUser$lambda$0(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;)Lkotlin/Unit;
    .locals 3

    .line 69
    invoke-direct {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getViewModel()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->logout()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;)V

    new-instance p0, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v2}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 72
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logoutUser$lambda$0$0(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 70
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->close(Z)V

    .line 71
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 53
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->close(Z)V

    return-void
.end method

.method static final onViewCreated$lambda$1(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->logoutUser()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 30
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentLogoutBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->binding:Lfast/dic/dict/databinding/FragmentLogoutBinding;

    .line 32
    invoke-direct {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getViewModel()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->hasBeenEverSynced()Z

    move-result p1

    const/4 p2, 0x0

    const-string p3, "binding"

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getViewModel()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->hasSubscriptionPlan()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 33
    iget-object p1, p0, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->binding:Lfast/dic/dict/databinding/FragmentLogoutBinding;

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    .line 34
    :cond_0
    sget v0, Lfast/dic/dict/R$string;->logout_screen_message:I

    .line 35
    invoke-direct {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getViewModel()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-direct {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getViewModel()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->getSubscriptionExpireDate()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-direct {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getViewModel()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->getLastSyncDate()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 33
    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->setLogoutBody(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getViewModel()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->hasBeenEverSynced()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getViewModel()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->hasSubscriptionPlan()Z

    move-result p1

    if-nez p1, :cond_3

    .line 40
    iget-object p1, p0, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->binding:Lfast/dic/dict/databinding/FragmentLogoutBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    .line 41
    :cond_2
    sget v0, Lfast/dic/dict/R$string;->logout_message_for_not_pro_plan:I

    invoke-direct {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getViewModel()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->getLastSyncDate()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->setLogoutBody(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_3
    iget-object p1, p0, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->binding:Lfast/dic/dict/databinding/FragmentLogoutBinding;

    if-nez p1, :cond_4

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_4
    sget v0, Lfast/dic/dict/R$string;->confirm_for_logout_from_account:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->setLogoutBody(Ljava/lang/String;)V

    .line 46
    :goto_0
    iget-object p0, p0, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->binding:Lfast/dic/dict/databinding/FragmentLogoutBinding;

    if-nez p0, :cond_5

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object p2, p0

    :goto_1
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/logout_screen/Hilt_LogoutFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    iget-object p1, p0, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->binding:Lfast/dic/dict/databinding/FragmentLogoutBinding;

    const/4 p2, 0x0

    const-string v0, "binding"

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    new-instance v1, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;)V

    invoke-virtual {p1, v1}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->setCloseAction(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lfast/dic/dict/presentation/logout_screen/LogoutFragment;->binding:Lfast/dic/dict/databinding/FragmentLogoutBinding;

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    new-instance p1, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lfast/dic/dict/presentation/logout_screen/LogoutFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;)V

    invoke-virtual {p2, p1}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->setLogoutAction(Landroid/view/View$OnClickListener;)V

    return-void
.end method
