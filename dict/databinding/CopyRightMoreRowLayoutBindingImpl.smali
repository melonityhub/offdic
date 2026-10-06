.class public Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;
.super Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;
.source "CopyRightMoreRowLayoutBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 27
    sget-object v0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 106
    iput-wide v1, p0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->mDirtyFlags:J

    .line 32
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->mboundView0:Landroid/widget/TextView;

    const/4 p3, 0x0

    .line 33
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 36
    invoke-virtual {p0}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 7

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 90
    iput-wide v2, p0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v4, p0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->mTitle:Ljava/lang/String;

    const-wide/16 v5, 0x3

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->mboundView0:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 49
    monitor-enter p0

    .line 50
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 51
    monitor-exit p0

    return v0

    .line 53
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

    .line 41
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 42
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->mDirtyFlags:J

    .line 43
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {p0}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 43
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

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .line 70
    iput-object p1, p0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->mTitle:Ljava/lang/String;

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->mDirtyFlags:J

    .line 73
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x34

    .line 74
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 75
    invoke-super {p0}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 73
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x34

    if-ne v0, p1, :cond_0

    .line 61
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBindingImpl;->setTitle(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
