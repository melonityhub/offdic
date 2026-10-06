.class public Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;
.source "CategoryRowItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback22:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->words_count_label_parent:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 30
    sget-object v0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    invoke-direct/range {v1 .. v10}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;)V

    const-wide/16 p0, -0x1

    .line 248
    iput-wide p0, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 41
    iget-object p0, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object p0, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p0, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p0, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->lockIv:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 45
    aget-object p0, p3, p0

    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    iput-object p0, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p0, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 50
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mCallback22:Landroid/view/View$OnClickListener;

    .line 51
    invoke-virtual {v1}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 233
    iget-object p0, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 244
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 20

    move-object/from16 v1, p0

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide v2, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 127
    iput-wide v4, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/WordCategoryModel;

    .line 134
    iget-object v6, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 138
    iget-object v6, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mLocked:Ljava/lang/Boolean;

    const-wide/16 v7, 0x9

    and-long v9, v2, v7

    cmp-long v9, v9, v4

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v9, :cond_9

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lfast/dic/dict/models/WordCategoryModel;->getIcon()Ljava/lang/String;

    move-result-object v11

    .line 151
    invoke-virtual {v0}, Lfast/dic/dict/models/WordCategoryModel;->getCount()Ljava/lang/Integer;

    move-result-object v13

    .line 153
    invoke-virtual {v0}, Lfast/dic/dict/models/WordCategoryModel;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v13

    move-object v13, v0

    move-object v0, v11

    move-object/from16 v11, v19

    goto :goto_0

    :cond_0
    move-object v0, v11

    move-object v13, v0

    .line 158
    :goto_0
    invoke-static {v11}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v14

    const/4 v15, 0x1

    if-lez v14, :cond_1

    move/from16 v16, v15

    goto :goto_1

    :cond_1
    move/from16 v16, v12

    :goto_1
    if-nez v14, :cond_2

    goto :goto_2

    :cond_2
    move v15, v12

    :goto_2
    if-eqz v9, :cond_4

    if-eqz v16, :cond_3

    const-wide/16 v17, 0x20

    goto :goto_3

    :cond_3
    const-wide/16 v17, 0x10

    :goto_3
    or-long v2, v2, v17

    :cond_4
    and-long v17, v2, v7

    cmp-long v9, v17, v4

    if-eqz v9, :cond_6

    if-eqz v15, :cond_5

    const-wide/16 v17, 0x80

    goto :goto_4

    :cond_5
    const-wide/16 v17, 0x40

    :goto_4
    or-long v2, v2, v17

    :cond_6
    if-eqz v16, :cond_7

    move v9, v12

    goto :goto_5

    :cond_7
    move v9, v10

    :goto_5
    if-eqz v15, :cond_8

    move v14, v12

    goto :goto_6

    :cond_8
    move v14, v10

    :goto_6
    move-object/from16 v19, v11

    move-object v11, v0

    move-object/from16 v0, v19

    goto :goto_7

    :cond_9
    move-object v0, v11

    move-object v13, v0

    move v9, v12

    move v14, v9

    :goto_7
    const-wide/16 v15, 0xc

    and-long v17, v2, v15

    cmp-long v17, v17, v4

    if-eqz v17, :cond_d

    .line 193
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v17, :cond_b

    if-eqz v6, :cond_a

    const-wide/16 v17, 0x200

    goto :goto_8

    :cond_a
    const-wide/16 v17, 0x100

    :goto_8
    or-long v2, v2, v17

    :cond_b
    if-eqz v6, :cond_c

    move v10, v12

    :cond_c
    move v12, v10

    :cond_d
    and-long v6, v2, v7

    cmp-long v6, v6, v4

    if-eqz v6, :cond_e

    .line 211
    iget-object v6, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    invoke-static {v6, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 212
    iget-object v6, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->ivIcon:Landroid/widget/ImageView;

    invoke-static {v6, v11}, Lfast/dic/dict/BindingAdapters;->setImageCatId(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 213
    iget-object v6, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 214
    iget-object v6, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-static {v6, v0}, Lfast/dic/dict/BindingAdapters;->setLocalizedNumber(Landroid/widget/TextView;Ljava/lang/Integer;)V

    .line 215
    iget-object v0, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    and-long v6, v2, v15

    cmp-long v0, v6, v4

    if-eqz v0, :cond_f

    .line 220
    iget-object v0, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->lockIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    const-wide/16 v6, 0x8

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_10

    .line 225
    iget-object v0, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, v1, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mCallback22:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_10
    return-void

    :catchall_0
    move-exception v0

    .line 128
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
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x8

    .line 57
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 58
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p0}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->requestRebind()V

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

.method public setLocked(Ljava/lang/Boolean;)V
    .locals 4

    .line 107
    iput-object p1, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mLocked:Ljava/lang/Boolean;

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x19

    .line 111
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 112
    invoke-super {p0}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 110
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setModel(Lfast/dic/dict/models/WordCategoryModel;)V
    .locals 4

    .line 91
    iput-object p1, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/WordCategoryModel;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 95
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 96
    invoke-super {p0}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 94
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 99
    iput-object p1, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 103
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 104
    invoke-super {p0}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 102
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

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->setModel(Lfast/dic/dict/models/WordCategoryModel;)V

    return v1

    :cond_0
    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 79
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/16 v0, 0x19

    if-ne v0, p1, :cond_2

    .line 82
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBindingImpl;->setLocked(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
