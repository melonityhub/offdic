.class public Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;
.source "PricingFeatureItemLayoutBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView3:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->right_view:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->left_view:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 31
    sget-object v0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x2

    .line 34
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-wide/16 p0, -0x1

    .line 228
    iput-wide p0, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    .line 40
    iget-object p0, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->featureDescTv:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p0, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->featureTitleTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 42
    aget-object p0, p3, p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x3

    .line 44
    aget-object p0, p3, p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mboundView3:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    invoke-virtual {v1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 17

    move-object/from16 v1, p0

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide v2, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 146
    iput-wide v4, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    .line 147
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mFeatureTitle:Ljava/lang/String;

    .line 149
    iget-object v6, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mFeatureDescription:Ljava/lang/String;

    .line 150
    iget-object v7, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mFeatureColor:Ljava/lang/Integer;

    .line 151
    iget-object v8, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mFeatureStatusIcon:Ljava/lang/Integer;

    .line 152
    iget-object v9, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mFeatureStatusText:Ljava/lang/String;

    const-wide/16 v10, 0x22

    and-long v12, v2, v10

    cmp-long v12, v12, v4

    const/4 v13, 0x0

    if-eqz v12, :cond_4

    if-eqz v6, :cond_0

    .line 166
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    goto :goto_0

    :cond_0
    move v14, v13

    :goto_0
    if-eqz v12, :cond_2

    if-nez v14, :cond_1

    const-wide/16 v15, 0x80

    goto :goto_1

    :cond_1
    const-wide/16 v15, 0x40

    :goto_1
    or-long/2addr v2, v15

    :cond_2
    if-nez v14, :cond_3

    goto :goto_2

    :cond_3
    const/16 v12, 0x8

    goto :goto_3

    :cond_4
    :goto_2
    move v12, v13

    :goto_3
    const-wide/16 v14, 0x24

    and-long/2addr v14, v2

    cmp-long v14, v14, v4

    if-eqz v14, :cond_5

    .line 190
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v13

    :cond_5
    const-wide/16 v15, 0x28

    and-long/2addr v15, v2

    cmp-long v7, v15, v4

    const-wide/16 v15, 0x30

    and-long/2addr v15, v2

    cmp-long v15, v15, v4

    and-long/2addr v10, v2

    cmp-long v10, v10, v4

    if-eqz v10, :cond_6

    .line 200
    iget-object v10, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->featureDescTv:Landroid/widget/TextView;

    invoke-static {v10, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 201
    iget-object v6, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->featureDescTv:Landroid/widget/TextView;

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    const-wide/16 v10, 0x21

    and-long/2addr v2, v10

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 206
    iget-object v2, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->featureTitleTv:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v15, :cond_8

    .line 211
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_8
    if-eqz v14, :cond_9

    .line 216
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v0, v13}, Lfast/dic/dict/BindingAdapters;->setTextColor(Landroid/widget/TextView;I)V

    .line 217
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v0, v13}, Lfast/dic/dict/BindingAdapters;->setIconTintColorTextView(Landroid/widget/TextView;I)V

    :cond_9
    if-eqz v7, :cond_a

    .line 222
    iget-object v0, v1, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lfast/dic/dict/BindingAdapters;->setRightIcon(Landroid/widget/TextView;Ljava/lang/Integer;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    .line 147
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    monitor-exit p0

    return v0

    .line 65
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

    .line 53
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 54
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 55
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

.method public setFeatureColor(Ljava/lang/Integer;)V
    .locals 4

    .line 110
    iput-object p1, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mFeatureColor:Ljava/lang/Integer;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xc

    .line 114
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 115
    invoke-super {p0}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->requestRebind()V

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

.method public setFeatureDescription(Ljava/lang/String;)V
    .locals 4

    .line 102
    iput-object p1, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mFeatureDescription:Ljava/lang/String;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 106
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 107
    invoke-super {p0}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->requestRebind()V

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

.method public setFeatureStatusIcon(Ljava/lang/Integer;)V
    .locals 4

    .line 118
    iput-object p1, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mFeatureStatusIcon:Ljava/lang/Integer;

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xe

    .line 122
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 123
    invoke-super {p0}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 121
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFeatureStatusText(Ljava/lang/String;)V
    .locals 4

    .line 126
    iput-object p1, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mFeatureStatusText:Ljava/lang/String;

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xf

    .line 130
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 131
    invoke-super {p0}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 129
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFeatureTitle(Ljava/lang/String;)V
    .locals 4

    .line 94
    iput-object p1, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mFeatureTitle:Ljava/lang/String;

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->mDirtyFlags:J

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

    .line 98
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 99
    invoke-super {p0}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;->requestRebind()V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 73
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->setFeatureTitle(Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0xd

    if-ne v0, p1, :cond_1

    .line 76
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->setFeatureDescription(Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v0, 0xc

    if-ne v0, p1, :cond_2

    .line 79
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->setFeatureColor(Ljava/lang/Integer;)V

    return v1

    :cond_2
    const/16 v0, 0xe

    if-ne v0, p1, :cond_3

    .line 82
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->setFeatureStatusIcon(Ljava/lang/Integer;)V

    return v1

    :cond_3
    const/16 v0, 0xf

    if-ne v0, p1, :cond_4

    .line 85
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PricingFeatureItemLayoutBindingImpl;->setFeatureStatusText(Ljava/lang/String;)V

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
