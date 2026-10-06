.class public Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;
.source "EditFavoriteDirectoriesItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback12:Landroid/view/View$OnClickListener;

.field private final mCallback13:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView3:Lcom/google/android/material/card/MaterialCardView;

.field private final mboundView6:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->words_count_label_parent:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->reorder_image:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 37
    sget-object v0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x4

    .line 40
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    const/4 v11, 0x2

    aget-object v1, p3, v11

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageButton;

    const/16 v1, 0x8

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    const/4 v1, 0x7

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Lcom/google/android/material/card/MaterialCardView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;)V

    const-wide/16 p0, -0x1

    .line 253
    iput-wide p0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 48
    iget-object p0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object p0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->editIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 50
    aget-object p0, p3, p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x3

    .line 52
    aget-object p0, p3, p0

    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    iput-object p0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mboundView3:Lcom/google/android/material/card/MaterialCardView;

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x6

    .line 54
    aget-object p0, p3, p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mboundView6:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object p0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->removeIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object p0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 60
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mCallback12:Landroid/view/View$OnClickListener;

    .line 61
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v11}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mCallback13:Landroid/view/View$OnClickListener;

    .line 62
    invoke-virtual {v1}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mOnDeleteClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    .line 246
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void

    .line 219
    :cond_2
    iget-object p0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mOnEditClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_3

    .line 228
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method protected executeBindings()V
    .locals 17

    move-object/from16 v1, p0

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide v2, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 149
    iput-wide v4, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/FolderModel;

    .line 156
    iget-object v6, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mOnDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 157
    iget-object v6, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mOnEditClickListener:Landroid/view/View$OnClickListener;

    .line 158
    iget-object v6, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mSelected:Ljava/lang/Boolean;

    const-wide/16 v7, 0x11

    and-long v9, v2, v7

    cmp-long v9, v9, v4

    if-eqz v9, :cond_0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lfast/dic/dict/models/database/FolderModel;->getCount()Ljava/lang/Integer;

    move-result-object v9

    .line 168
    invoke-virtual {v0}, Lfast/dic/dict/models/database/FolderModel;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    move-object v0, v9

    :goto_0
    const-wide/16 v10, 0x18

    and-long v12, v2, v10

    cmp-long v12, v12, v4

    const/4 v13, 0x0

    if-eqz v12, :cond_4

    .line 176
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v12, :cond_2

    if-eqz v6, :cond_1

    const-wide/16 v14, 0x40

    goto :goto_1

    :cond_1
    const-wide/16 v14, 0x20

    :goto_1
    or-long/2addr v2, v14

    :cond_2
    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/16 v12, 0x8

    move v13, v12

    :goto_2
    move/from16 v16, v13

    move v13, v6

    move/from16 v6, v16

    goto :goto_3

    :cond_4
    move v6, v13

    :goto_3
    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    if-eqz v7, :cond_5

    .line 194
    iget-object v7, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    invoke-static {v7, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lfast/dic/dict/BindingAdapters;->setLocalizedNumber(Landroid/widget/TextView;Ljava/lang/Integer;)V

    :cond_5
    const-wide/16 v7, 0x10

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_6

    .line 200
    iget-object v0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->editIcon:Landroid/widget/ImageView;

    iget-object v7, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mCallback12:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->removeIcon:Landroid/widget/ImageButton;

    iget-object v7, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mCallback13:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    and-long/2addr v2, v10

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 206
    iget-object v0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mboundView3:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v0, v13}, Lfast/dic/dict/BindingAdapters;->setSelectedState(Lcom/google/android/material/card/MaterialCardView;Z)V

    .line 207
    iget-object v0, v1, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mboundView6:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 150
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 77
    monitor-exit p0

    return v0

    .line 79
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

    .line 67
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 68
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 69
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {p0}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 69
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

.method public setModel(Lfast/dic/dict/models/database/FolderModel;)V
    .locals 4

    .line 105
    iput-object p1, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/FolderModel;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 109
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 110
    invoke-super {p0}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOnDeleteClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 113
    iput-object p1, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mOnDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x21

    .line 117
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 118
    invoke-super {p0}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 116
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOnEditClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 121
    iput-object p1, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mOnEditClickListener:Landroid/view/View$OnClickListener;

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x23

    .line 125
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 126
    invoke-super {p0}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 124
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSelected(Ljava/lang/Boolean;)V
    .locals 4

    .line 129
    iput-object p1, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mSelected:Ljava/lang/Boolean;

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 132
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2f

    .line 133
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 134
    invoke-super {p0}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 132
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

    .line 87
    check-cast p2, Lfast/dic/dict/models/database/FolderModel;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->setModel(Lfast/dic/dict/models/database/FolderModel;)V

    return v1

    :cond_0
    const/16 v0, 0x21

    if-ne v0, p1, :cond_1

    .line 90
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->setOnDeleteClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/16 v0, 0x23

    if-ne v0, p1, :cond_2

    .line 93
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->setOnEditClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_2
    const/16 v0, 0x2f

    if-ne v0, p1, :cond_3

    .line 96
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBindingImpl;->setSelected(Ljava/lang/Boolean;)V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
