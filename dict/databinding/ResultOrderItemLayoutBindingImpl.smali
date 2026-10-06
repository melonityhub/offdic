.class public Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;
.source "ResultOrderItemLayoutBindingImpl.java"


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

    sput-object v0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->title_container_card:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->reorder_image:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x1

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/material/card/MaterialCardView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;)V

    const-wide/16 p0, -0x1

    .line 118
    iput-wide p0, v1, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->mDirtyFlags:J

    .line 37
    iget-object p0, v1, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 38
    aget-object p0, p3, p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 42
    invoke-virtual {v1}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 7

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 102
    iput-wide v2, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->mDirtyFlags:J

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v4, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->mTitle:Ljava/lang/String;

    const-wide/16 v5, 0x5

    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 112
    iget-object p0, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 103
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 57
    monitor-exit p0

    return v0

    .line 59
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

    .line 47
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 48
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->mDirtyFlags:J

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {p0}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 49
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

.method public setIndex(Ljava/lang/Integer;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->mIndex:Ljava/lang/Integer;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .line 79
    iput-object p1, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->mTitle:Ljava/lang/String;

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->mDirtyFlags:J

    .line 82
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x34

    .line 83
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 84
    invoke-super {p0}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 82
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

    .line 67
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->setTitle(Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0x14

    if-ne v0, p1, :cond_1

    .line 70
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBindingImpl;->setIndex(Ljava/lang/Integer;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
