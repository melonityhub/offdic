.class public Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;
.source "PricingHeaderItemLayoutBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 27
    sget-object v0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    .line 30
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;)V

    const-wide/16 v2, -0x1

    .line 127
    iput-wide v2, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mDirtyFlags:J

    .line 33
    aget-object p1, p3, v1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    .line 34
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->packageTitleTv:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 9

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 103
    iput-wide v2, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v4, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mTitle:Ljava/lang/String;

    .line 106
    iget-object v5, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mIcon:Ljava/lang/Integer;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v0

    cmp-long v6, v6, v2

    const-wide/16 v7, 0x6

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-eqz v6, :cond_0

    .line 116
    iget-object v1, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->packageTitleTv:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 121
    iget-object p0, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->packageTitleTv:Landroid/widget/TextView;

    invoke-static {p0, v5}, Lfast/dic/dict/BindingAdapters;->setLeftIcon(Landroid/widget/TextView;Ljava/lang/Integer;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 104
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
    iget-wide v0, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4

    .line 44
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mDirtyFlags:J

    .line 45
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {p0}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->requestRebind()V

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

.method public setIcon(Ljava/lang/Integer;)V
    .locals 4

    .line 83
    iput-object p1, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mIcon:Ljava/lang/Integer;

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mDirtyFlags:J

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x13

    .line 87
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 88
    invoke-super {p0}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 86
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .line 75
    iput-object p1, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mTitle:Ljava/lang/String;

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->mDirtyFlags:J

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x34

    .line 79
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 80
    invoke-super {p0}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;->requestRebind()V

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
    .locals 2

    const/16 v0, 0x34

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 63
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->setTitle(Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0x13

    if-ne v0, p1, :cond_1

    .line 66
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PricingHeaderItemLayoutBindingImpl;->setIcon(Ljava/lang/Integer;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
