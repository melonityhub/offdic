.class public abstract Lfast/dic/dict/databinding/FragmentSortDialogBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentSortDialogBinding.java"


# instance fields
.field public final appBar:Lcom/google/android/material/appbar/AppBarLayout;

.field public final backToolbarButton:Landroid/widget/TextView;

.field protected mAdapter:Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mDoneClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final sortRv:Landroidx/recyclerview/widget/RecyclerView;

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;

.field public final toolbarTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/Toolbar;Landroid/widget/TextView;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 47
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->appBar:Lcom/google/android/material/appbar/AppBarLayout;

    .line 48
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->backToolbarButton:Landroid/widget/TextView;

    .line 49
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->sortRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 50
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 51
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->toolbarTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentSortDialogBinding;
    .locals 1

    .line 108
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentSortDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentSortDialogBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    sget v0, Lfast/dic/dict/R$layout;->fragment_sort_dialog:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentSortDialogBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentSortDialogBinding;
    .locals 1

    .line 90
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentSortDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentSortDialogBinding;
    .locals 1

    .line 71
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentSortDialogBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentSortDialogBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    sget v0, Lfast/dic/dict/R$layout;->fragment_sort_dialog:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentSortDialogBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentSortDialogBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    sget v0, Lfast/dic/dict/R$layout;->fragment_sort_dialog:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentSortDialogBinding;

    return-object p0
.end method


# virtual methods
.method public getAdapter()Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->mAdapter:Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;

    return-object p0
.end method

.method public getDoneClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->mDoneClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public abstract setAdapter(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;)V
.end method

.method public abstract setDoneClickListener(Landroid/view/View$OnClickListener;)V
.end method
