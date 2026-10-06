.class public Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;
.super Lfast/dic/dict/databinding/FragmentWodHistoryBinding;
.source "FragmentWodHistoryBindingImpl.java"


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

    sput-object v0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->loading_spinner:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 28
    sget-object v0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 31
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lfast/dic/dict/views/CustomProgressbar;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/databinding/FragmentWodHistoryBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILfast/dic/dict/views/CustomProgressbar;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 p0, -0x1

    .line 110
    iput-wide p0, v1, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->mDirtyFlags:J

    const/4 p0, 0x0

    .line 35
    aget-object p0, p3, p0

    check-cast p0, Landroid/widget/FrameLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p0, v1, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {v1}, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 7

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 94
    iput-wide v2, p0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->mAdapter:Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 95
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 55
    monitor-exit p0

    return v0

    .line 57
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

    .line 45
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 46
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 47
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

.method public setAdapter(Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;)V
    .locals 4

    .line 74
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->mAdapter:Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->mDirtyFlags:J

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 78
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->notifyPropertyChanged(I)V

    .line 79
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentWodHistoryBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 77
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

    .line 65
    check-cast p2, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentWodHistoryBindingImpl;->setAdapter(Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
