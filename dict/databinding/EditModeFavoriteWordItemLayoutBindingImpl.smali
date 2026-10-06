.class public Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBinding;
.source "EditModeFavoriteWordItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback17:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->suggestion_word_parent:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 30
    sget-object v0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x3

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageButton;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageButton;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V

    const-wide/16 p0, -0x1

    .line 213
    iput-wide p0, v1, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const/4 p0, 0x0

    .line 39
    aget-object p0, p3, p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p0, v1, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object p0, v1, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->removeIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p0, v1, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 46
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mCallback17:Landroid/view/View$OnClickListener;

    .line 47
    invoke-virtual {v1}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 200
    iget-object p0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 209
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 13

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 134
    iput-wide v2, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 135
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v4, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/ListModel;

    .line 139
    iget-object v5, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mIsMeaningEnglish:Ljava/lang/Boolean;

    .line 140
    iget-object v6, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mIsWordEnglish:Ljava/lang/Boolean;

    .line 143
    iget-object v7, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    const-wide/16 v7, 0x11

    and-long/2addr v7, v0

    cmp-long v7, v7, v2

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {v4}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v8

    .line 153
    invoke-virtual {v4}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move-object v4, v8

    :goto_0
    const-wide/16 v9, 0x12

    and-long/2addr v9, v0

    cmp-long v9, v9, v2

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    .line 161
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v10

    :goto_1
    const-wide/16 v11, 0x14

    and-long/2addr v11, v0

    cmp-long v11, v11, v2

    if-eqz v11, :cond_2

    .line 168
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    :cond_2
    if-eqz v7, :cond_3

    .line 174
    iget-object v6, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-static {v6, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 175
    iget-object v6, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-static {v6, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v9, :cond_4

    .line 180
    iget-object v4, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lfast/dic/dict/BindingAdapters;->setIsEnglishMeaningForFont(Landroid/widget/TextView;Z)V

    :cond_4
    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 185
    iget-object v0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->removeIcon:Landroid/widget/ImageButton;

    iget-object v1, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mCallback17:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v11, :cond_6

    .line 190
    iget-object p0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-static {p0, v10}, Lfast/dic/dict/BindingAdapters;->setIsEnglishWordForFont(Landroid/widget/TextView;Z)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 135
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 62
    monitor-exit p0

    return v0

    .line 64
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

    .line 52
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 53
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
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

.method public setIsMeaningEnglish(Ljava/lang/Boolean;)V
    .locals 4

    .line 98
    iput-object p1, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mIsMeaningEnglish:Ljava/lang/Boolean;

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x15

    .line 102
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 103
    invoke-super {p0}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 101
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIsWordEnglish(Ljava/lang/Boolean;)V
    .locals 4

    .line 106
    iput-object p1, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mIsWordEnglish:Ljava/lang/Boolean;

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x17

    .line 110
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 111
    invoke-super {p0}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 109
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setModel(Lfast/dic/dict/models/database/ListModel;)V
    .locals 4

    .line 90
    iput-object p1, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/ListModel;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 94
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 95
    invoke-super {p0}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 93
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOnDeleteListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 114
    iput-object p1, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mOnDeleteListener:Landroid/view/View$OnClickListener;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x22

    .line 118
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 119
    invoke-super {p0}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 117
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

    .line 72
    check-cast p2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->setModel(Lfast/dic/dict/models/database/ListModel;)V

    return v1

    :cond_0
    const/16 v0, 0x15

    if-ne v0, p1, :cond_1

    .line 75
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->setIsMeaningEnglish(Ljava/lang/Boolean;)V

    return v1

    :cond_1
    const/16 v0, 0x17

    if-ne v0, p1, :cond_2

    .line 78
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->setIsWordEnglish(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/16 v0, 0x22

    if-ne v0, p1, :cond_3

    .line 81
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBindingImpl;->setOnDeleteListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
