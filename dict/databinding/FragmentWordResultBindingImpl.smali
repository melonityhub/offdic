.class public Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;
.super Lfast/dic/dict/databinding/FragmentWordResultBinding;
.source "FragmentWordResultBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->toolbar_title:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->web_view_container:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x3

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lfast/dic/dict/views/CustomProgressbar;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lfast/dic/dict/views/SearchBarView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lfast/dic/dict/databinding/FragmentWordResultBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILfast/dic/dict/views/CustomProgressbar;Lfast/dic/dict/views/SearchBarView;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;Landroid/widget/FrameLayout;)V

    const-wide/16 p0, -0x1

    .line 211
    iput-wide p0, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mDirtyFlags:J

    .line 39
    iget-object p0, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lfast/dic/dict/views/CustomProgressbar;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 40
    aget-object p0, p3, p0

    check-cast p0, Landroid/widget/FrameLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object p0, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {p0, p1}, Lfast/dic/dict/views/SearchBarView;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p0, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->toolbarTop:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 46
    invoke-virtual {v1}, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 19

    move-object/from16 v1, p0

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide v2, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 122
    iput-wide v4, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mDirtyFlags:J

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mLoading:Ljava/lang/Boolean;

    .line 125
    iget-object v6, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mEnableSearchBar:Ljava/lang/Boolean;

    .line 131
    iget-object v7, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mEnableToolbar:Ljava/lang/Boolean;

    const-wide/16 v8, 0x9

    and-long v10, v2, v8

    cmp-long v10, v10, v4

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-eqz v10, :cond_3

    .line 139
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v10, :cond_1

    if-eqz v0, :cond_0

    const-wide/16 v13, 0x20

    goto :goto_0

    :cond_0
    const-wide/16 v13, 0x10

    :goto_0
    or-long/2addr v2, v13

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v11

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v12

    :goto_2
    const-wide/16 v13, 0xa

    and-long v15, v2, v13

    cmp-long v10, v15, v4

    if-eqz v10, :cond_7

    .line 158
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v10, :cond_5

    if-eqz v6, :cond_4

    const-wide/16 v15, 0x200

    goto :goto_3

    :cond_4
    const-wide/16 v15, 0x100

    :goto_3
    or-long/2addr v2, v15

    :cond_5
    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move v6, v11

    goto :goto_5

    :cond_7
    :goto_4
    move v6, v12

    :goto_5
    const-wide/16 v15, 0xc

    and-long v17, v2, v15

    cmp-long v10, v17, v4

    if-eqz v10, :cond_b

    .line 177
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v10, :cond_9

    if-eqz v7, :cond_8

    const-wide/16 v17, 0x80

    goto :goto_6

    :cond_8
    const-wide/16 v17, 0x40

    :goto_6
    or-long v2, v2, v17

    :cond_9
    if-eqz v7, :cond_a

    move v11, v12

    :cond_a
    move v12, v11

    :cond_b
    and-long v7, v2, v8

    cmp-long v7, v7, v4

    if-eqz v7, :cond_c

    .line 195
    iget-object v7, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-virtual {v7, v0}, Lfast/dic/dict/views/CustomProgressbar;->setVisibility(I)V

    :cond_c
    and-long v7, v2, v13

    cmp-long v0, v7, v4

    if-eqz v0, :cond_d

    .line 200
    iget-object v0, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {v0, v6}, Lfast/dic/dict/views/SearchBarView;->setVisibility(I)V

    :cond_d
    and-long/2addr v2, v15

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e

    .line 205
    iget-object v0, v1, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->toolbarTop:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/Toolbar;->setVisibility(I)V

    :cond_e
    return-void

    :catchall_0
    move-exception v0

    .line 123
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 61
    monitor-exit p0

    return v0

    .line 63
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

    .line 51
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 52
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mDirtyFlags:J

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 53
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

.method public setEnableSearchBar(Ljava/lang/Boolean;)V
    .locals 4

    .line 94
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mEnableSearchBar:Ljava/lang/Boolean;

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mDirtyFlags:J

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x9

    .line 98
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->notifyPropertyChanged(I)V

    .line 99
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->requestRebind()V

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

.method public setEnableToolbar(Ljava/lang/Boolean;)V
    .locals 4

    .line 102
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mEnableToolbar:Ljava/lang/Boolean;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xa

    .line 106
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->notifyPropertyChanged(I)V

    .line 107
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->requestRebind()V

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

.method public setLoading(Ljava/lang/Boolean;)V
    .locals 4

    .line 86
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mLoading:Ljava/lang/Boolean;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->mDirtyFlags:J

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 90
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->notifyPropertyChanged(I)V

    .line 91
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->requestRebind()V

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

    const/16 v0, 0x18

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 71
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->setLoading(Ljava/lang/Boolean;)V

    return v1

    :cond_0
    const/16 v0, 0x9

    if-ne v0, p1, :cond_1

    .line 74
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->setEnableSearchBar(Ljava/lang/Boolean;)V

    return v1

    :cond_1
    const/16 v0, 0xa

    if-ne v0, p1, :cond_2

    .line 77
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentWordResultBindingImpl;->setEnableToolbar(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
