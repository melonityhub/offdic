.class public final Lfast/dic/dict/presentation/sort_screen/SortDialog;
.super Lfast/dic/dict/presentation/sort_screen/Hilt_SortDialog;
.source "SortDialog.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/sort_screen/SortDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSortDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SortDialog.kt\nfast/dic/dict/presentation/sort_screen/SortDialog\n+ 2 FragmentNavArgsLazy.kt\nandroidx/navigation/fragment/FragmentNavArgsLazyKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n42#2,3:79\n12836#3:82\n12949#3,4:83\n296#4,2:87\n*S KotlinDebug\n*F\n+ 1 SortDialog.kt\nfast/dic/dict/presentation/sort_screen/SortDialog\n*L\n19#1:79,3\n38#1:82\n38#1:83,4\n60#1:87,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\n\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008 \u00a8\u0006\u001f"
    }
    d2 = {
        "Lfast/dic/dict/presentation/sort_screen/SortDialog;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "<init>",
        "()V",
        "adapter",
        "Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;",
        "getAdapter",
        "()Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;",
        "setAdapter",
        "(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;)V",
        "Ljavax/inject/Inject;",
        "args",
        "Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;",
        "getArgs",
        "()Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;",
        "args$delegate",
        "Landroidx/navigation/NavArgsLazy;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentSortDialogBinding;",
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
        "Companion",
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


# static fields
.field public static final Companion:Lfast/dic/dict/presentation/sort_screen/SortDialog$Companion;

.field public static final DIALOG_STATUS_KEY:Ljava/lang/String; = "sort_result"


# instance fields
.field public adapter:Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final args$delegate:Landroidx/navigation/NavArgsLazy;

.field private binding:Lfast/dic/dict/databinding/FragmentSortDialogBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/presentation/sort_screen/SortDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/presentation/sort_screen/SortDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/presentation/sort_screen/SortDialog;->Companion:Lfast/dic/dict/presentation/sort_screen/SortDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 14
    invoke-direct {p0}, Lfast/dic/dict/presentation/sort_screen/Hilt_SortDialog;-><init>()V

    .line 19
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 79
    new-instance v1, Landroidx/navigation/NavArgsLazy;

    const-class v2, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/presentation/sort_screen/SortDialog$special$$inlined$navArgs$1;

    invoke-direct {v3, v0}, Lfast/dic/dict/presentation/sort_screen/SortDialog$special$$inlined$navArgs$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v2, v3}, Landroidx/navigation/NavArgsLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    .line 19
    iput-object v1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialog;->args$delegate:Landroidx/navigation/NavArgsLazy;

    return-void
.end method

.method private final getArgs()Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialog;->args$delegate:Landroidx/navigation/NavArgsLazy;

    check-cast p0, Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    return-object p0
.end method

.method static final onViewCreated$lambda$1(Lfast/dic/dict/presentation/sort_screen/SortDialog;Landroid/view/View;)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog;->getAdapter()Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p1

    const-string v0, "getCurrentList(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 87
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;

    .line 60
    invoke-virtual {v1}, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 62
    :cond_2
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 63
    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 64
    const-string v0, "sort_result"

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static final onViewCreated$lambda$2(Lfast/dic/dict/presentation/sort_screen/SortDialog;Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public final getAdapter()Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;
    .locals 0

    .line 17
    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialog;->adapter:Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;

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

    .line 26
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentSortDialogBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialog;->binding:Lfast/dic/dict/databinding/FragmentSortDialogBinding;

    const/4 p2, 0x0

    .line 28
    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog;->getAdapter()Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->setAdapter(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;)V

    .line 29
    iget-object p1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialog;->binding:Lfast/dic/dict/databinding/FragmentSortDialogBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 31
    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialog;->binding:Lfast/dic/dict/databinding/FragmentSortDialogBinding;

    if-nez p0, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1, p2}, Lfast/dic/dict/presentation/sort_screen/Hilt_SortDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    invoke-direct {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog;->getArgs()Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->getSelectedIndex()I

    move-result p1

    .line 38
    invoke-direct {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog;->getArgs()Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    move-result-object p2

    invoke-virtual {p2}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->getItems()[Ljava/lang/String;

    move-result-object p2

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 84
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, p2, v3

    add-int/lit8 v6, v4, 0x1

    .line 39
    invoke-direct {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog;->getArgs()Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    move-result-object v7

    invoke-virtual {v7}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->getSelectedIndex()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-le v7, v8, :cond_1

    .line 40
    new-instance v7, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    move v9, v2

    :goto_1
    invoke-direct {v7, v5, v9}, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    .line 44
    :cond_1
    invoke-direct {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog;->getArgs()Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    move-result-object v4

    invoke-virtual {v4}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->getSelectedItem()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 45
    new-instance v7, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;

    .line 47
    invoke-direct {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog;->getArgs()Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    move-result-object v4

    invoke-virtual {v4}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->getSelectedItem()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v4, v8, v9}, Lkotlin/text/StringsKt;->contentEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    .line 45
    invoke-direct {v7, v5, v4}, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;-><init>(Ljava/lang/String;Z)V

    goto :goto_2

    .line 50
    :cond_2
    new-instance v7, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;

    invoke-direct {v7, v5, v2}, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;-><init>(Ljava/lang/String;Z)V

    .line 85
    :goto_2
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 86
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 57
    invoke-virtual {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog;->getAdapter()Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;->submitList(Ljava/util/List;)V

    .line 58
    invoke-virtual {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog;->getAdapter()Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;

    move-result-object p1

    new-instance p2, Lfast/dic/dict/presentation/sort_screen/SortDialog$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/sort_screen/SortDialog;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;->setSelectedItemListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialog;->binding:Lfast/dic/dict/databinding/FragmentSortDialogBinding;

    if-nez p1, :cond_4

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_4
    new-instance p2, Lfast/dic/dict/presentation/sort_screen/SortDialog$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/sort_screen/SortDialog;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->setDoneClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setAdapter(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialog;->adapter:Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;

    return-void
.end method
