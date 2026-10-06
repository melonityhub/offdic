.class public Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;
.super Lfast/dic/dict/databinding/FragmentCategoriesBinding;
.source "FragmentCategoriesBindingSw600dpImpl.java"


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

    sput-object v0, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->loading_spinner:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 28
    sget-object v0, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x2

    .line 31
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lfast/dic/dict/views/CustomProgressbar;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lfast/dic/dict/databinding/FragmentCategoriesBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILfast/dic/dict/views/CustomProgressbar;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 p0, -0x1

    .line 111
    iput-wide p0, v1, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->mDirtyFlags:J

    const/4 p0, 0x0

    .line 36
    aget-object p0, p3, p0

    check-cast p0, Landroid/widget/FrameLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->mboundView0:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 38
    iget-object p0, v1, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->myWordsDirectoryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->setRootTag(Landroid/view/View;)V

    .line 41
    invoke-virtual {v1}, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 7

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 95
    iput-wide v2, p0, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->mAdapter:Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->myWordsDirectoryView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 56
    monitor-exit p0

    return v0

    .line 58
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

    .line 46
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 47
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->mDirtyFlags:J

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 48
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

.method public setAdapter(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;)V
    .locals 4

    .line 75
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->mAdapter:Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->mDirtyFlags:J

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->notifyPropertyChanged(I)V

    .line 80
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentCategoriesBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 78
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

    .line 66
    check-cast p2, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentCategoriesBindingSw600dpImpl;->setAdapter(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
