.class public Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;
.super Lfast/dic/dict/databinding/FragmentFavoritesBinding;
.source "FragmentFavoritesBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->sync_date_container:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->setting_btn:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lfast/dic/dict/R$id;->sync_iv:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lfast/dic/dict/R$id;->swipe_refresh:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lfast/dic/dict/R$id;->add_directory_fab:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lfast/dic/dict/R$id;->loading_spinner:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 33
    sget-object v0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 13

    const/16 v0, 0x8

    .line 36
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lfast/dic/dict/views/CustomProgressbar;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/Button;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/RelativeLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v12}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/floatingactionbutton/FloatingActionButton;Lfast/dic/dict/views/CustomProgressbar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Button;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 162
    iput-wide v1, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mDirtyFlags:J

    const/4 v1, 0x0

    .line 47
    aget-object v1, p3, v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->myWordsDirectoryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->syncDateTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->syncStateTv:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 11

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 130
    iput-wide v2, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mDirtyFlags:J

    .line 131
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mStateMessage:Ljava/lang/String;

    .line 133
    iget-object v5, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mStateTitle:Ljava/lang/String;

    .line 134
    iget-object v6, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mAdapter:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    const-wide/16 v7, 0x9

    and-long/2addr v7, v0

    cmp-long v7, v7, v2

    const-wide/16 v8, 0xa

    and-long/2addr v8, v0

    cmp-long v8, v8, v2

    const-wide/16 v9, 0xc

    and-long/2addr v0, v9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->myWordsDirectoryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    if-eqz v7, :cond_1

    .line 151
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->syncDateTv:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v8, :cond_2

    .line 156
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->syncStateTv:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 131
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 69
    monitor-exit p0

    return v0

    .line 71
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

    .line 59
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 60
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mDirtyFlags:J

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 61
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

.method public setAdapter(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;)V
    .locals 4

    .line 110
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mAdapter:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mDirtyFlags:J

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->notifyPropertyChanged(I)V

    .line 115
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 113
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setStateMessage(Ljava/lang/String;)V
    .locals 4

    .line 94
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mStateMessage:Ljava/lang/String;

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mDirtyFlags:J

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x32

    .line 98
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->notifyPropertyChanged(I)V

    .line 99
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->requestRebind()V

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

.method public setStateTitle(Ljava/lang/String;)V
    .locals 4

    .line 102
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mStateTitle:Ljava/lang/String;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x33

    .line 106
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->notifyPropertyChanged(I)V

    .line 107
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 105
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x32

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 79
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->setStateMessage(Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0x33

    if-ne v0, p1, :cond_1

    .line 82
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->setStateTitle(Ljava/lang/String;)V

    return v1

    :cond_1
    if-ne v1, p1, :cond_2

    .line 85
    check-cast p2, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentFavoritesBindingImpl;->setAdapter(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
