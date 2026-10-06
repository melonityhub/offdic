.class public Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;
.super Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;
.source "FragmentWodYearHistoryBindingSw600dpImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 27
    sget-object v0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    .line 30
    aget-object v0, p3, v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v2, -0x1

    .line 108
    iput-wide v2, p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->mDirtyFlags:J

    .line 33
    aget-object p1, p3, v1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->mboundView0:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    .line 34
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->setRootTag(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 7

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 92
    iput-wide v2, p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->mAdapter:Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 102
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 93
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 53
    monitor-exit p0

    return v0

    .line 55
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

    .line 43
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 44
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->mDirtyFlags:J

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 45
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

.method public setAdapter(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;)V
    .locals 4

    .line 72
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->mAdapter:Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->mDirtyFlags:J

    .line 75
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 76
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->notifyPropertyChanged(I)V

    .line 77
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 75
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 63
    check-cast p2, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentWodYearHistoryBindingSw600dpImpl;->setAdapter(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
