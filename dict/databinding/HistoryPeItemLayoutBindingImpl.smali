.class public Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;
.source "HistoryPeItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback20:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->history_icon:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 30
    sget-object v0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x3

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 p0, -0x1

    .line 211
    iput-wide p0, v1, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    const/4 p0, 0x0

    .line 38
    aget-object p0, p3, p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object p0, v1, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p0, v1, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 44
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mCallback20:Landroid/view/View$OnClickListener;

    .line 45
    invoke-virtual {v1}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 207
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 14

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 132
    iput-wide v2, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v4, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/ListModel;

    .line 137
    iget-object v5, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mIsMeaningEnglish:Ljava/lang/Boolean;

    .line 138
    iget-object v6, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mIsWordEnglish:Ljava/lang/Boolean;

    .line 141
    iget-object v7, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-wide/16 v7, 0x11

    and-long/2addr v7, v0

    cmp-long v7, v7, v2

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 149
    invoke-virtual {v4}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v8

    .line 151
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

    .line 159
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

    .line 166
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    :cond_2
    const-wide/16 v12, 0x10

    and-long/2addr v0, v12

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 172
    iget-object v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mCallback20:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v9, :cond_4

    .line 177
    iget-object v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lfast/dic/dict/BindingAdapters;->setIsEnglishMeaningForFont(Landroid/widget/TextView;Z)V

    :cond_4
    if-eqz v7, :cond_5

    .line 182
    iget-object v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz v11, :cond_6

    .line 188
    iget-object p0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-static {p0, v10}, Lfast/dic/dict/BindingAdapters;->setIsEnglishWordForFont(Landroid/widget/TextView;Z)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 133
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 60
    monitor-exit p0

    return v0

    .line 62
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

    .line 50
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 51
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {p0}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 52
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

    .line 96
    iput-object p1, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mIsMeaningEnglish:Ljava/lang/Boolean;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x15

    .line 100
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 101
    invoke-super {p0}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 99
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIsWordEnglish(Ljava/lang/Boolean;)V
    .locals 4

    .line 104
    iput-object p1, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mIsWordEnglish:Ljava/lang/Boolean;

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x17

    .line 108
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 109
    invoke-super {p0}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setModel(Lfast/dic/dict/models/database/ListModel;)V
    .locals 4

    .line 88
    iput-object p1, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/ListModel;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 92
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 93
    invoke-super {p0}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 112
    iput-object p1, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->mDirtyFlags:J

    .line 115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 116
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 117
    invoke-super {p0}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 115
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

    .line 70
    check-cast p2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->setModel(Lfast/dic/dict/models/database/ListModel;)V

    return v1

    :cond_0
    const/16 v0, 0x15

    if-ne v0, p1, :cond_1

    .line 73
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->setIsMeaningEnglish(Ljava/lang/Boolean;)V

    return v1

    :cond_1
    const/16 v0, 0x17

    if-ne v0, p1, :cond_2

    .line 76
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->setIsWordEnglish(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/16 v0, 0x20

    if-ne v0, p1, :cond_3

    .line 79
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBindingImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
