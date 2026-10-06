.class public Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;
.super Lfast/dic/dict/databinding/FragmentSortDialogBinding;
.source "FragmentSortDialogBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback21:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->app_bar:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->toolbar:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lfast/dic/dict/R$id;->toolbar_title:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 32
    sget-object v0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x3

    .line 35
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lfast/dic/dict/databinding/FragmentSortDialogBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/Toolbar;Landroid/widget/TextView;)V

    const-wide/16 p0, -0x1

    .line 153
    iput-wide p0, v1, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mDirtyFlags:J

    .line 42
    iget-object p0, v1, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->backToolbarButton:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 43
    aget-object p0, p3, p0

    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object p0, v1, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->sortRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mCallback21:Landroid/view/View$OnClickListener;

    .line 49
    invoke-virtual {v1}, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mDoneClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 149
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 8

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 114
    iput-wide v2, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mDirtyFlags:J

    .line 115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mDoneClickListener:Landroid/view/View$OnClickListener;

    .line 117
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mAdapter:Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;

    const-wide/16 v5, 0x6

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    const-wide/16 v6, 0x4

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->backToolbarButton:Landroid/widget/TextView;

    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mCallback21:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v5, :cond_1

    .line 130
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->sortRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 115
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    monitor-exit p0

    return v0

    .line 66
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 54
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 55
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mDirtyFlags:J

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAdapter(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;)V
    .locals 4

    .line 94
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mAdapter:Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mDirtyFlags:J

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 98
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->notifyPropertyChanged(I)V

    .line 99
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 97
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDoneClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 86
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mDoneClickListener:Landroid/view/View$OnClickListener;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->mDirtyFlags:J

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x8

    .line 90
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->notifyPropertyChanged(I)V

    .line 91
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentSortDialogBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 89
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 74
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->setDoneClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_0
    if-ne v1, p1, :cond_1

    .line 77
    check-cast p2, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentSortDialogBindingImpl;->setAdapter(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
