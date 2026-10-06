.class public Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;
.source "FavoriteDirectoriesItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback30:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Lcom/google/android/material/card/MaterialCardView;

.field private final mboundView3:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->words_count_label_parent:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 32
    sget-object v0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x1

    .line 35
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/card/MaterialCardView;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;)V

    const-wide/16 p0, -0x1

    .line 204
    iput-wide p0, v2, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 40
    iget-object p0, v2, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 41
    aget-object p0, p3, p0

    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    iput-object p0, v2, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x3

    .line 43
    aget-object p0, p3, p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v2, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mboundView3:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object p0, v2, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v2, v4}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v2, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v2, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mCallback30:Landroid/view/View$OnClickListener;

    .line 49
    invoke-virtual {v2}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 189
    iget-object p0, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 200
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 17

    move-object/from16 v1, p0

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide v2, v1, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 125
    iput-wide v4, v1, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v0, v1, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/FolderModel;

    .line 132
    iget-object v6, v1, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 133
    iget-object v6, v1, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mSelected:Ljava/lang/Boolean;

    const-wide/16 v7, 0x9

    and-long v9, v2, v7

    cmp-long v9, v9, v4

    if-eqz v9, :cond_0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lfast/dic/dict/models/database/FolderModel;->getCount()Ljava/lang/Integer;

    move-result-object v9

    .line 143
    invoke-virtual {v0}, Lfast/dic/dict/models/database/FolderModel;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    move-object v0, v9

    :goto_0
    const-wide/16 v10, 0xc

    and-long v12, v2, v10

    cmp-long v12, v12, v4

    const/4 v13, 0x0

    if-eqz v12, :cond_4

    .line 151
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v12, :cond_2

    if-eqz v6, :cond_1

    const-wide/16 v14, 0x20

    goto :goto_1

    :cond_1
    const-wide/16 v14, 0x10

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

    .line 169
    iget-object v7, v1, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    invoke-static {v7, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, v1, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-static {v0, v9}, Lfast/dic/dict/BindingAdapters;->setLocalizedNumber(Landroid/widget/TextView;Ljava/lang/Integer;)V

    :cond_5
    const-wide/16 v7, 0x8

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_6

    .line 175
    iget-object v0, v1, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    iget-object v7, v1, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mCallback30:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    and-long/2addr v2, v10

    cmp-long v0, v2, v4

    if-eqz v0, :cond_7

    .line 180
    iget-object v0, v1, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v0, v13}, Lfast/dic/dict/BindingAdapters;->setSelectedState(Lcom/google/android/material/card/MaterialCardView;Z)V

    .line 181
    iget-object v0, v1, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mboundView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    monitor-exit p0

    return v0

    .line 66
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

    .line 54
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 55
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 56
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

    .line 89
    iput-object p1, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/FolderModel;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 93
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 94
    invoke-super {p0}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 92
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 97
    iput-object p1, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 101
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 102
    invoke-super {p0}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 100
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSelected(Ljava/lang/Boolean;)V
    .locals 4

    .line 105
    iput-object p1, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mSelected:Ljava/lang/Boolean;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2f

    .line 109
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 110
    invoke-super {p0}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->requestRebind()V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 74
    check-cast p2, Lfast/dic/dict/models/database/FolderModel;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->setModel(Lfast/dic/dict/models/database/FolderModel;)V

    return v1

    :cond_0
    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 77
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/16 v0, 0x2f

    if-ne v0, p1, :cond_2

    .line 80
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBindingImpl;->setSelected(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
