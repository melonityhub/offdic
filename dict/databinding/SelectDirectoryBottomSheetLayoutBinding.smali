.class public abstract Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SelectDirectoryBottomSheetLayoutBinding.java"


# instance fields
.field public final addDirectoryFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final closeButton:Landroid/widget/Button;

.field public final editButton:Landroid/widget/Button;

.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field protected mAdapter:Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final placeholderLabel:Landroid/widget/TextView;

.field public final recyclerViewBottomSheet:Landroidx/recyclerview/widget/RecyclerView;

.field public final topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/floatingactionbutton/FloatingActionButton;Landroid/widget/Button;Landroid/widget/Button;Lfast/dic/dict/views/CustomProgressbar;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 53
    iput-object p4, p0, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;->addDirectoryFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 54
    iput-object p5, p0, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;->closeButton:Landroid/widget/Button;

    .line 55
    iput-object p6, p0, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;->editButton:Landroid/widget/Button;

    .line 56
    iput-object p7, p0, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 57
    iput-object p8, p0, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;->placeholderLabel:Landroid/widget/TextView;

    .line 58
    iput-object p9, p0, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;->recyclerViewBottomSheet:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    iput-object p10, p0, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;
    .locals 1

    .line 109
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    sget v0, Lfast/dic/dict/R$layout;->select_directory_bottom_sheet_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;
    .locals 1

    .line 91
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;
    .locals 1

    .line 72
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    sget v0, Lfast/dic/dict/R$layout;->select_directory_bottom_sheet_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    sget v0, Lfast/dic/dict/R$layout;->select_directory_bottom_sheet_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getAdapter()Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;->mAdapter:Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;

    return-object p0
.end method

.method public abstract setAdapter(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;)V
.end method
