.class public final Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;
.super Lfast/dic/dict/presentation/favorite_screen/Hilt_FavoritesFragment;
.source "FavoritesFragment.kt"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFavoritesFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FavoritesFragment.kt\nfast/dic/dict/presentation/favorite_screen/FavoritesFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,412:1\n110#2,15:413\n110#2,15:428\n328#3,4:443\n328#3,4:447\n328#3,4:451\n328#3,4:455\n1#4:459\n*S KotlinDebug\n*F\n+ 1 FavoritesFragment.kt\nfast/dic/dict/presentation/favorite_screen/FavoritesFragment\n*L\n64#1:413,15\n65#1:428,15\n100#1:443,4\n104#1:447,4\n109#1:451,4\n113#1:455,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J$\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u001a\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020$2\u0008\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0008\u0010.\u001a\u00020,H\u0002J\u0012\u0010/\u001a\u00020,2\u0008\u00100\u001a\u0004\u0018\u000101H\u0002J\u0008\u00102\u001a\u00020,H\u0016J\u0008\u00103\u001a\u00020,H\u0002J\u0008\u00104\u001a\u00020,H\u0002J\u0010\u00105\u001a\u00020,2\u0006\u00106\u001a\u000207H\u0002J\u0010\u00108\u001a\u00020,2\u0006\u00106\u001a\u000207H\u0002J\u0010\u00109\u001a\u00020,2\u0006\u00106\u001a\u000207H\u0002J\u0018\u0010:\u001a\u00020,2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0016J\u0010\u0010?\u001a\u00020\u00062\u0006\u0010@\u001a\u00020AH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R#\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\u000f\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR#\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\u000f\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u001d\u001a\u0004\u0008 \u0010!\u00ca\u0001\u0002\u0008C\u00a8\u0006B"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "Landroidx/core/view/MenuProvider;",
        "<init>",
        "()V",
        "isEditEnabled",
        "",
        "mItemTouchHelper",
        "Landroidx/recyclerview/widget/ItemTouchHelper;",
        "adapter",
        "Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;",
        "getAdapter",
        "()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;",
        "setAdapter",
        "(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;)V",
        "Ljavax/inject/Inject;",
        "connectivityHelper",
        "Lfast/dic/dict/helpers/FDConnectivityHelper;",
        "getConnectivityHelper",
        "()Lfast/dic/dict/helpers/FDConnectivityHelper;",
        "setConnectivityHelper",
        "(Lfast/dic/dict/helpers/FDConnectivityHelper;)V",
        "binding",
        "Lfast/dic/dict/databinding/FragmentFavoritesBinding;",
        "syncViewModel",
        "Lfast/dic/dict/presentation/common/SyncViewModel;",
        "getSyncViewModel",
        "()Lfast/dic/dict/presentation/common/SyncViewModel;",
        "syncViewModel$delegate",
        "Lkotlin/Lazy;",
        "viewModel",
        "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;",
        "getViewModel",
        "()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;",
        "viewModel$delegate",
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
        "syncCouchBaseData",
        "showSyncDate",
        "date",
        "Ljava/util/Date;",
        "onDestroy",
        "updateEditMode",
        "createNewDirectory",
        "onDeleteConfirmationDialog",
        "model",
        "Lfast/dic/dict/models/database/FolderModel;",
        "editFolderConfirmation",
        "navigateToSelectedItem",
        "onCreateMenu",
        "menu",
        "Landroid/view/Menu;",
        "menuInflater",
        "Landroid/view/MenuInflater;",
        "onMenuItemSelected",
        "menuItem",
        "Landroid/view/MenuItem;",
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
.field public adapter:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

.field public connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private isEditEnabled:Z

.field private mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private final syncViewModel$delegate:Lkotlin/Lazy;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$B24ActIHiDuqH1VXvquQtwHgW2c(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/models/database/FolderModel;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->onDeleteConfirmationDialog$lambda$0$0(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/models/database/FolderModel;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$giW2uej9XiGPs0dv5sf0iPmcr2o(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->onDeleteConfirmationDialog$lambda$0$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$u077w8kV_o6VB9kPqKIOnt96YmQ(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->onDeleteConfirmationDialog$lambda$0$0$0(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 7

    .line 52
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/Hilt_FavoritesFragment;-><init>()V

    .line 64
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 414
    new-instance v1, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$1;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 418
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$2;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 419
    const-class v2, Lfast/dic/dict/presentation/common/SyncViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$3;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$3;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$4;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$4;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v6, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$5;

    invoke-direct {v6, v0, v1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$5;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v6}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 64
    iput-object v1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->syncViewModel$delegate:Lkotlin/Lazy;

    .line 429
    new-instance v1, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$6;

    invoke-direct {v1, v0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$6;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 433
    sget-object v2, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v3, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$7;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$7;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 434
    const-class v2, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$8;

    invoke-direct {v3, v1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$8;-><init>(Lkotlin/Lazy;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    new-instance v4, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$9;

    invoke-direct {v4, v5, v1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/Lazy;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$10;

    invoke-direct {v5, v0, v1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$special$$inlined$viewModels$default$10;-><init>(Landroidx/fragment/app/Fragment;Lkotlin/Lazy;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$editFolderConfirmation(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/models/database/FolderModel;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->editFolderConfirmation(Lfast/dic/dict/models/database/FolderModel;)V

    return-void
.end method

.method public static final synthetic access$getViewModel(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;
    .locals 0

    .line 52
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$navigateToSelectedItem(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/models/database/FolderModel;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->navigateToSelectedItem(Lfast/dic/dict/models/database/FolderModel;)V

    return-void
.end method

.method public static final synthetic access$onDeleteConfirmationDialog(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/models/database/FolderModel;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->onDeleteConfirmationDialog(Lfast/dic/dict/models/database/FolderModel;)V

    return-void
.end method

.method private final createNewDirectory()V
    .locals 7

    .line 309
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    new-instance v1, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;

    .line 314
    new-instance v2, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda7;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 310
    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v0, :cond_1

    .line 315
    const-string p0, ""

    invoke-virtual {v1, v0, p0}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static final createNewDirectory$lambda$0(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 312
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->getFolders()V

    .line 313
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final editFolderConfirmation(Lfast/dic/dict/models/database/FolderModel;)V
    .locals 3

    .line 338
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 339
    :goto_0
    new-instance v1, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;

    .line 345
    new-instance v2, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda6;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V

    .line 343
    invoke-virtual {p1}, Lfast/dic/dict/models/database/FolderModel;->getName()Ljava/lang/String;

    move-result-object p0

    .line 344
    invoke-virtual {p1}, Lfast/dic/dict/models/database/FolderModel;->getDocumentId()Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-direct {v1, v2, p0, p1}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 346
    const-string p0, ""

    invoke-virtual {v1, v0, p0}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static final editFolderConfirmation$lambda$0(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 341
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->getFolders()V

    .line 342
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;
    .locals 0

    .line 64
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->syncViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/common/SyncViewModel;

    return-object p0
.end method

.method private final getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;
    .locals 0

    .line 65
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    return-object p0
.end method

.method private final navigateToSelectedItem(Lfast/dic/dict/models/database/FolderModel;)V
    .locals 3

    .line 351
    invoke-virtual {p1}, Lfast/dic/dict/models/database/FolderModel;->isHistory()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 353
    :try_start_0
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->historyFragment:I

    invoke-static {p0, p1, v2, v1, v2}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 355
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 357
    :cond_0
    invoke-virtual {p1}, Lfast/dic/dict/models/database/FolderModel;->isWordCategory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    :try_start_1
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->categoriesFragment:I

    invoke-static {p0, p1, v2, v1, v2}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 361
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 364
    :cond_1
    new-instance v0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;

    .line 365
    invoke-virtual {p1}, Lfast/dic/dict/models/database/FolderModel;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_2

    move-object v1, v2

    .line 366
    :cond_2
    invoke-virtual {p1}, Lfast/dic/dict/models/database/FolderModel;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 364
    :goto_0
    invoke-direct {v0, v1, v2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :try_start_2
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    .line 370
    sget p1, Lfast/dic/dict/R$id;->directoryWordsFragment:I

    .line 371
    invoke-virtual {v0}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 369
    invoke-static {p0, p1, v0}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 374
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState;)Lkotlin/Unit;
    .locals 7

    .line 79
    instance-of v0, p1, Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Loading;

    const-string v1, "binding"

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-string v5, "loadingSpinner"

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    .line 80
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v6

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Data;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_2
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3, v4, v2, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 85
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object v0

    check-cast p1, Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Data;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesUIState$Data;->getModels()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->submitList(Ljava/util/List;)V

    .line 86
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lfast/dic/dict/utils/ContextExtKt;->requestForNewMenu(Landroidx/fragment/app/Fragment;)V

    .line 89
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 78
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method static final onCreateView$lambda$1(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Landroid/view/View;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->createNewDirectory()V

    return-void
.end method

.method static final onCreateView$lambda$6(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V
    .locals 5

    .line 139
    sget-object v0, Lfast/dic/dict/helpers/FDInternetHelper;->INSTANCE:Lfast/dic/dict/helpers/FDInternetHelper;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/helpers/FDInternetHelper;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "binding"

    if-nez v0, :cond_2

    .line 140
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    sget v4, Lfast/dic/dict/R$string;->check_internet_connection:I

    invoke-virtual {p0, v4}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->setStateMessage(Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    iget-object p0, v2, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 144
    :cond_2
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v2, p0

    :goto_1
    iget-object p0, v2, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method private final onDeleteConfirmationDialog(Lfast/dic/dict/models/database/FolderModel;)V
    .locals 5

    .line 321
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lfast/dic/dict/utils/FDAlertManger;->getAlertTheme(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 325
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfast/dic/dict/R$string;->remove_directory_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lfast/dic/dict/R$string;->confirm_remove_directory:I

    invoke-virtual {p1}, Lfast/dic/dict/models/database/FolderModel;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 327
    sget v1, Lfast/dic/dict/R$string;->yes:I

    new-instance v2, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/models/database/FolderModel;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 332
    sget p0, Lfast/dic/dict/R$string;->no:I

    new-instance p1, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final onDeleteConfirmationDialog$lambda$0$0(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/models/database/FolderModel;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 328
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object p2

    new-instance p3, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda8;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V

    invoke-virtual {p2, p1, p3}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->deleteFolder(Lfast/dic/dict/models/database/FolderModel;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final onDeleteConfirmationDialog$lambda$0$0$0(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)Lkotlin/Unit;
    .locals 0

    .line 329
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->getFolders()V

    .line 330
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final onDeleteConfirmationDialog$lambda$0$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method static final onViewCreated$lambda$0(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Landroid/view/View;)V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lfast/dic/dict/activities/MainActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lfast/dic/dict/activities/MainActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 157
    invoke-virtual {p1}, Lfast/dic/dict/activities/MainActivity;->selectMoreTab()V

    .line 159
    :cond_1
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->settingFragment:I

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    return-void
.end method

.method static final onViewCreated$lambda$1(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/models/database/FolderModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->onFolderClicked(Lfast/dic/dict/models/database/FolderModel;)V

    .line 165
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onViewCreated$lambda$2(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/models/database/FolderModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->onEditRequested(Lfast/dic/dict/models/database/FolderModel;)V

    .line 168
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onViewCreated$lambda$3(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/models/database/FolderModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object p0

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->onDeleteRequested(Lfast/dic/dict/models/database/FolderModel;)V

    .line 171
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final showSyncDate(Ljava/util/Date;)V
    .locals 7

    .line 242
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result v0

    .line 244
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/common/SyncViewModel;->isSyncEnabled()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "binding"

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 245
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    const-string v0, "Sync is not enabled!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lfast/dic/dict/utils/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncIv:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 247
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncIv:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v4, p0

    :goto_0
    iget-object p0, v4, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->settingBtn:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_3
    if-nez p1, :cond_4

    .line 253
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const-string p1, "There is no sync date to show on the view!"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/utils/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 257
    :cond_4
    const-string v1, "HH:mm:ss"

    if-eqz v0, :cond_6

    .line 258
    new-instance v0, Lfast/dic/dict/utils/PersianDate;

    invoke-direct {v0, p1}, Lfast/dic/dict/utils/PersianDate;-><init>(Ljava/util/Date;)V

    .line 259
    new-instance v2, Lfast/dic/dict/utils/PersianDateFormat;

    const-string v5, "d F Y"

    invoke-direct {v2, v5}, Lfast/dic/dict/utils/PersianDateFormat;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v2, v0}, Lfast/dic/dict/utils/PersianDateFormat;->format(Lfast/dic/dict/utils/PersianDate;)Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v2, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez v2, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v4, v2

    .line 263
    :goto_1
    sget v2, Lfast/dic/dict/R$string;->last_sync_date_label:I

    sget-object v3, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v3, v0}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->replaceNumbersToFarsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    sget-object v3, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v3, p1}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->replaceNumbersToFarsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 262
    invoke-virtual {p0, v2, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->setStateMessage(Ljava/lang/String;)V

    return-void

    .line 268
    :cond_6
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez v0, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    .line 269
    :cond_7
    sget v2, Lfast/dic/dict/R$string;->last_sync_date_label:I

    .line 270
    const-string v3, "dd MMMM yyyy"

    const/4 v5, 0x2

    invoke-static {p1, v3, v4, v5, v4}, Lfast/dic/dict/utils/DateExtKt;->toString$default(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 271
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 268
    invoke-virtual {p0, v2, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->setStateMessage(Ljava/lang/String;)V

    return-void
.end method

.method private final syncCouchBaseData()V
    .locals 4

    .line 201
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/common/SyncViewModel;->isSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Sync is not enable!"

    invoke-virtual {p0, v1, v0}, Lfast/dic/dict/utils/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_0
    sget-object v0, Lfast/dic/dict/helpers/FDInternetHelper;->INSTANCE:Lfast/dic/dict/helpers/FDInternetHelper;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/helpers/FDInternetHelper;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez v0, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    sget v1, Lfast/dic/dict/R$string;->check_internet_connection:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->setStateMessage(Ljava/lang/String;)V

    return-void

    .line 210
    :cond_2
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/common/SyncViewModel;->sync()V

    .line 211
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/common/SyncViewModel;->getSyncState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 212
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/common/SyncViewModel;->getSyncState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V

    new-instance v3, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v3, Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 238
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/common/SyncViewModel;->getLastTimeSynced()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->showSyncDate(Ljava/util/Date;)V

    return-void
.end method

.method static final syncCouchBaseData$lambda$0(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/presentation/common/SyncUIState;)Lkotlin/Unit;
    .locals 6

    .line 213
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lfast/dic/dict/presentation/common/SyncUIState;->getLoading()Z

    move-result v1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/common/SyncUIState;->isSuccess()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "--------------> syncState = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lfast/dic/dict/utils/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p1}, Lfast/dic/dict/presentation/common/SyncUIState;->getLoading()Z

    move-result v0

    const-string v1, "binding"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 215
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncIv:Landroid/widget/ImageView;

    const-string v0, "syncIv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    invoke-static {p1, v4, v5, v0, v3}, Lfast/dic/dict/utils/ImageViewExtensionKt;->rotateImageView$default(Landroid/widget/ImageView;JILjava/lang/Object;)V

    .line 216
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    iget-object p1, v3, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncIv:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 218
    :cond_2
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 219
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncIv:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->getFoldersNoLoading()V

    .line 222
    invoke-virtual {p1}, Lfast/dic/dict/presentation/common/SyncUIState;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_c

    .line 223
    invoke-virtual {p1}, Lfast/dic/dict/presentation/common/SyncUIState;->getErrorCode()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_a

    :goto_1
    invoke-virtual {p1}, Lfast/dic/dict/presentation/common/SyncUIState;->getErrorCode()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    :goto_2
    invoke-virtual {p1}, Lfast/dic/dict/presentation/common/SyncUIState;->getErrorCode()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_8

    goto :goto_5

    .line 228
    :cond_8
    :goto_3
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object v3, p1

    .line 229
    :goto_4
    sget p1, Lfast/dic/dict/R$string;->server_has_problem_please_try_again:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 228
    invoke-virtual {v3, p0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->setStateMessage(Ljava/lang/String;)V

    goto :goto_7

    .line 225
    :cond_a
    :goto_5
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object v3, p1

    .line 226
    :goto_6
    sget p1, Lfast/dic/dict/R$string;->server_not_accessible_please_try_again:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 225
    invoke-virtual {v3, p0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->setStateMessage(Ljava/lang/String;)V

    .line 231
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 235
    :cond_c
    :goto_8
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/common/SyncViewModel;->getLastTimeSynced()Ljava/util/Date;

    move-result-object p1

    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->showSyncDate(Ljava/util/Date;)V

    .line 236
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final updateEditMode()V
    .locals 11

    .line 283
    iget-boolean v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->isEditEnabled:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->isEditEnabled:Z

    .line 285
    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->enableEditMode()V

    .line 287
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 290
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->disableEditMode()V

    .line 292
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->getNewReorderedList()Ljava/util/List;

    move-result-object v0

    .line 293
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 294
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object v3

    invoke-virtual {v3, v0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->updateFolderOrder(Ljava/util/List;)V

    .line 295
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->submitList(Ljava/util/List;)V

    goto :goto_0

    .line 297
    :cond_3
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v3

    const-string v4, "getCurrentList(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->submitList(Ljava/util/List;)V

    .line 301
    :goto_0
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 303
    :cond_4
    new-instance v3, Lfast/dic/dict/helpers/ItemTouchHelperCallback;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;

    iget-boolean v5, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->isEditEnabled:Z

    const/16 v9, 0xc

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v3 .. v10}, Lfast/dic/dict/helpers/ItemTouchHelperCallback;-><init>(Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 304
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    check-cast v3, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 305
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, p0

    :goto_1
    iget-object p0, v2, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->myWordsDirectoryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public final getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->adapter:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "adapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getConnectivityHelper()Lfast/dic/dict/helpers/FDConnectivityHelper;
    .locals 0

    .line 62
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "connectivityHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 382
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 383
    iget-boolean p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->isEditEnabled:Z

    if-nez p0, :cond_1

    .line 384
    sget p0, Lfast/dic/dict/R$menu;->my_favorite_folders_menu:I

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 385
    sget p0, Lfast/dic/dict/R$id;->editItem:I

    invoke-interface {p1, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    xor-int/lit8 p1, v0, 0x1

    .line 386
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void

    .line 389
    :cond_1
    sget p0, Lfast/dic/dict/R$menu;->my_favorite_words_on_edit_mode_menu:I

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 72
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    .line 74
    const-string p2, "binding"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->setAdapter(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;)V

    .line 75
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 76
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->myWordsDirectoryView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 77
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->getState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda9;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V

    new-instance v4, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v4, v3}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v4, Landroidx/lifecycle/Observer;

    invoke-virtual {p1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 90
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/common/SyncViewModel;->isSyncEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getConnectivityHelper()Lfast/dic/dict/helpers/FDConnectivityHelper;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/helpers/FDConnectivityHelper;->isInternetAvailable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 91
    :cond_3
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewModel()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;->getFolders()V

    .line 93
    :cond_4
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->syncCouchBaseData()V

    .line 95
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_5

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_5
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->addDirectoryFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v2, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda10;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V

    invoke-virtual {p1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/common/SyncViewModel;->isAppLanguageIsPersian()Z

    move-result p1

    .line 109
    iget-object v2, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    .line 99
    const-string v3, "syncIv"

    const-string v4, "settingBtn"

    const-string v5, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    const/16 v6, 0x15

    const/16 v7, 0x14

    if-eqz p1, :cond_a

    if-nez v2, :cond_6

    .line 100
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_6
    iget-object p1, v2, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->settingBtn:Landroid/widget/Button;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    .line 443
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_9

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 444
    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 101
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 102
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 445
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_7

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_7
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncIv:Landroid/widget/ImageView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    .line 447
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_8

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 448
    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 105
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 106
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 449
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 447
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 443
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez v2, :cond_b

    .line 109
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_b
    iget-object p1, v2, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->settingBtn:Landroid/widget/Button;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1b

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 452
    move-object v4, v2

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 110
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 111
    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 453
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_c

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_c
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncIv:Landroid/widget/ImageView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1a

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    .line 456
    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 115
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 457
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    :goto_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p1

    instance-of v2, p1, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v2, :cond_d

    check-cast p1, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_1

    :cond_d
    move-object p1, v0

    .line 121
    :goto_1
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/presentation/common/SyncViewModel;->isSyncEnabled()Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result p1

    if-ne p1, v1, :cond_f

    .line 125
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_e

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_e
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/common/SyncViewModel;->isSyncEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    goto :goto_2

    .line 122
    :cond_f
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/common/SyncViewModel;->disableSync()V

    .line 123
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_10

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_10
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 128
    :goto_2
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/common/SyncViewModel;->isSyncEnabled()Z

    move-result p1

    .line 133
    iget-object v1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-eqz p1, :cond_14

    if-nez v1, :cond_11

    .line 129
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_11
    iget-object p1, v1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->settingBtn:Landroid/widget/Button;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_12

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_12
    sget p3, Lfast/dic/dict/R$string;->sync_enabled_state_title:I

    invoke-virtual {p0, p3}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->setStateTitle(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_13

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_13
    sget p3, Lfast/dic/dict/R$string;->not_synced_yet_message:I

    invoke-virtual {p0, p3}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->setStateMessage(Ljava/lang/String;)V

    goto :goto_3

    :cond_14
    if-nez v1, :cond_15

    .line 133
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_15
    iget-object p1, v1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->settingBtn:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_16

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_16
    sget p3, Lfast/dic/dict/R$string;->sync_disabled_state_title:I

    invoke-virtual {p0, p3}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->setStateTitle(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_17

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_17
    sget p3, Lfast/dic/dict/R$string;->sync_disabled_state_message:I

    invoke-virtual {p0, p3}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->setStateMessage(Ljava/lang/String;)V

    .line 138
    :goto_3
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p1, :cond_18

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_18
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p3, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda11;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V

    invoke-virtual {p1, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 148
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p0, :cond_19

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_19
    move-object v0, p0

    :goto_4
    invoke-virtual {v0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 455
    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 451
    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroy()V
    .locals 1

    .line 277
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getSyncViewModel()Lfast/dic/dict/presentation/common/SyncViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/common/SyncViewModel;->onDestroy()V

    .line 279
    invoke-super {p0}, Lfast/dic/dict/presentation/favorite_screen/Hilt_FavoritesFragment;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 395
    sget v0, Lfast/dic/dict/R$id;->editItem:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 396
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->updateEditMode()V

    .line 398
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lfast/dic/dict/utils/ContextExtKt;->requestForNewMenu(Landroidx/fragment/app/Fragment;)V

    return v1

    .line 402
    :cond_0
    sget v0, Lfast/dic/dict/R$id;->okayItem:I

    if-ne p1, v0, :cond_1

    .line 403
    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->updateEditMode()V

    .line 405
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lfast/dic/dict/utils/ContextExtKt;->requestForNewMenu(Landroidx/fragment/app/Fragment;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_screen/Hilt_FavoritesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 154
    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-static {p1}, Lfast/dic/dict/utils/ContextExtKt;->requestForNewMenu(Landroidx/fragment/app/Fragment;)V

    .line 155
    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    const-string p2, "binding"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->settingBtn:Landroid/widget/Button;

    new-instance v1, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda12;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object p1

    new-instance v1, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V

    invoke-virtual {p1, v1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->setOnItemClickListener(Lkotlin/jvm/functions/Function1;)V

    .line 166
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object p1

    new-instance v1, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V

    invoke-virtual {p1, v1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->setOnEditListener(Lkotlin/jvm/functions/Function1;)V

    .line 169
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object p1

    new-instance v1, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V

    invoke-virtual {p1, v1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->setOnDeleteListener(Lkotlin/jvm/functions/Function1;)V

    .line 174
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    const-string v1, "getViewLifecycleOwner(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance p1, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$onViewCreated$5;

    invoke-direct {p1, p0, v0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment$onViewCreated$5;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 196
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v1, Lfast/dic/dict/helpers/ItemTouchHelperCallback;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    move-result-object v2

    check-cast v2, Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v8}, Lfast/dic/dict/helpers/ItemTouchHelperCallback;-><init>(Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 195
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 197
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->binding:Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    if-nez p0, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    iget-object p0, v0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->myWordsDirectoryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final setAdapter(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->adapter:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    return-void
.end method

.method public final setConnectivityHelper(Lfast/dic/dict/helpers/FDConnectivityHelper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;->connectivityHelper:Lfast/dic/dict/helpers/FDConnectivityHelper;

    return-void
.end method
