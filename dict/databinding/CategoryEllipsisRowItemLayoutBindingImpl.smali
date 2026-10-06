.class public Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;
.source "CategoryEllipsisRowItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback4:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->words_count_label_parent:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 30
    sget-object v0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x2

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ProgressBar;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    const/4 v1, 0x6

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/card/MaterialCardView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;)V

    const-wide/16 p0, -0x1

    .line 273
    iput-wide p0, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 41
    iget-object p0, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object p0, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p0, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p0, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->lockIv:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 45
    aget-object p0, p3, p0

    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    iput-object p0, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p0, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 50
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    .line 51
    invoke-virtual {v1}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 258
    iget-object p0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 269
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 23

    move-object/from16 v1, p0

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-wide v2, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 138
    iput-wide v4, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 139
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v0, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/WordCategoryModel;

    .line 145
    iget-object v6, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 147
    iget-object v6, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mIsPersianLanguage:Ljava/lang/Boolean;

    .line 150
    iget-object v7, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mLocked:Ljava/lang/Boolean;

    const-wide/16 v8, 0x11

    and-long v10, v2, v8

    cmp-long v10, v10, v4

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz v10, :cond_9

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lfast/dic/dict/models/WordCategoryModel;->getIcon()Ljava/lang/String;

    move-result-object v12

    .line 164
    invoke-virtual {v0}, Lfast/dic/dict/models/WordCategoryModel;->getCount()Ljava/lang/Integer;

    move-result-object v14

    .line 166
    invoke-virtual {v0}, Lfast/dic/dict/models/WordCategoryModel;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v22, v14

    move-object v14, v0

    move-object v0, v12

    move-object/from16 v12, v22

    goto :goto_0

    :cond_0
    move-object v0, v12

    move-object v14, v0

    .line 171
    :goto_0
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v15

    const/16 v16, 0x1

    if-lez v15, :cond_1

    move/from16 v17, v16

    goto :goto_1

    :cond_1
    move/from16 v17, v13

    :goto_1
    if-nez v15, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v16, v13

    :goto_2
    if-eqz v10, :cond_4

    if-eqz v17, :cond_3

    const-wide/16 v18, 0x40

    goto :goto_3

    :cond_3
    const-wide/16 v18, 0x20

    :goto_3
    or-long v2, v2, v18

    :cond_4
    and-long v18, v2, v8

    cmp-long v10, v18, v4

    if-eqz v10, :cond_6

    if-eqz v16, :cond_5

    const-wide/16 v18, 0x100

    goto :goto_4

    :cond_5
    const-wide/16 v18, 0x80

    :goto_4
    or-long v2, v2, v18

    :cond_6
    if-eqz v17, :cond_7

    move v10, v13

    goto :goto_5

    :cond_7
    move v10, v11

    :goto_5
    if-eqz v16, :cond_8

    move v15, v13

    goto :goto_6

    :cond_8
    move v15, v11

    :goto_6
    move-object/from16 v22, v12

    move-object v12, v0

    move-object/from16 v0, v22

    goto :goto_7

    :cond_9
    move-object v0, v12

    move-object v14, v0

    move v10, v13

    move v15, v10

    :goto_7
    const-wide/16 v16, 0x14

    and-long v18, v2, v16

    cmp-long v18, v18, v4

    if-eqz v18, :cond_a

    .line 206
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    goto :goto_8

    :cond_a
    move v6, v13

    :goto_8
    const-wide/16 v18, 0x18

    and-long v20, v2, v18

    cmp-long v20, v20, v4

    if-eqz v20, :cond_e

    .line 213
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v20, :cond_c

    if-eqz v7, :cond_b

    const-wide/16 v20, 0x400

    goto :goto_9

    :cond_b
    const-wide/16 v20, 0x200

    :goto_9
    or-long v2, v2, v20

    :cond_c
    if-eqz v7, :cond_d

    move v11, v13

    :cond_d
    move v13, v11

    :cond_e
    and-long v16, v2, v16

    cmp-long v7, v16, v4

    if-eqz v7, :cond_f

    .line 231
    iget-object v7, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    invoke-static {v7, v6}, Lfast/dic/dict/BindingAdapters;->setPersianAlignment(Landroid/widget/TextView;Z)V

    :cond_f
    and-long v6, v2, v8

    cmp-long v6, v6, v4

    if-eqz v6, :cond_10

    .line 236
    iget-object v6, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    invoke-static {v6, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 237
    iget-object v6, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->ivIcon:Landroid/widget/ImageView;

    invoke-static {v6, v12}, Lfast/dic/dict/BindingAdapters;->setImageCatId(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 238
    iget-object v6, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 239
    iget-object v6, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-static {v6, v0}, Lfast/dic/dict/BindingAdapters;->setLocalizedNumber(Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 240
    iget-object v0, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    and-long v6, v2, v18

    cmp-long v0, v6, v4

    if-eqz v0, :cond_11

    .line 245
    iget-object v0, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->lockIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_11
    const-wide/16 v6, 0x10

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_12

    .line 250
    iget-object v0, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, v1, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mCallback4:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    return-void

    :catchall_0
    move-exception v0

    .line 139
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 66
    monitor-exit p0

    return v0

    .line 68
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

    .line 56
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 57
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 58
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

.method public setIsPersianLanguage(Ljava/lang/Boolean;)V
    .locals 4

    .line 110
    iput-object p1, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mIsPersianLanguage:Ljava/lang/Boolean;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x16

    .line 114
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 115
    invoke-super {p0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->requestRebind()V

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

.method public setLocked(Ljava/lang/Boolean;)V
    .locals 4

    .line 118
    iput-object p1, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mLocked:Ljava/lang/Boolean;

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x19

    .line 122
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 123
    invoke-super {p0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->requestRebind()V

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

.method public setModel(Lfast/dic/dict/models/WordCategoryModel;)V
    .locals 4

    .line 94
    iput-object p1, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/WordCategoryModel;

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 98
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 99
    invoke-super {p0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->requestRebind()V

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

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 102
    iput-object p1, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 106
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 107
    invoke-super {p0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->requestRebind()V

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

    const/16 v0, 0x1e

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 76
    check-cast p2, Lfast/dic/dict/models/WordCategoryModel;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->setModel(Lfast/dic/dict/models/WordCategoryModel;)V

    return v1

    :cond_0
    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 79
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/16 v0, 0x16

    if-ne v0, p1, :cond_2

    .line 82
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->setIsPersianLanguage(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/16 v0, 0x19

    if-ne v0, p1, :cond_3

    .line 85
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBindingImpl;->setLocked(Ljava/lang/Boolean;)V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
