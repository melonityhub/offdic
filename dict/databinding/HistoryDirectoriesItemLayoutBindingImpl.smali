.class public Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;
.source "HistoryDirectoriesItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback14:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->words_count_label_parent:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 30
    sget-object v0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x1

    .line 33
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/material/card/MaterialCardView;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;)V

    const-wide/16 p0, -0x1

    .line 161
    iput-wide p0, v2, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 38
    iget-object p0, v2, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 39
    aget-object p0, p3, p0

    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    iput-object p0, v2, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p0, v2, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v2, v4}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 44
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v2, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v2, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mCallback14:Landroid/view/View$OnClickListener;

    .line 45
    invoke-virtual {v2}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 146
    iget-object p0, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 157
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 7

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 110
    iput-wide v2, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v4, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/FolderModel;

    .line 114
    iget-object v5, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-wide/16 v5, 0x5

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {v4}, Lfast/dic/dict/models/database/FolderModel;->getName()Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-virtual {v4}, Lfast/dic/dict/models/database/FolderModel;->getCount()Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v4, v6

    :goto_0
    if-eqz v5, :cond_1

    .line 132
    iget-object v5, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    invoke-static {v5, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 133
    iget-object v5, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lfast/dic/dict/BindingAdapters;->setLocalizedNumber(Landroid/widget/TextView;Ljava/lang/Integer;)V

    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    iget-object p0, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mCallback14:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 111
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
    iget-wide v0, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4

    .line 51
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {p0}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->requestRebind()V

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

.method public setModel(Lfast/dic/dict/models/database/FolderModel;)V
    .locals 4

    .line 82
    iput-object p1, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/FolderModel;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 86
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 87
    invoke-super {p0}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 85
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 90
    iput-object p1, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 94
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 95
    invoke-super {p0}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;->requestRebind()V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 70
    check-cast p2, Lfast/dic/dict/models/database/FolderModel;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->setModel(Lfast/dic/dict/models/database/FolderModel;)V

    return v1

    :cond_0
    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 73
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBindingImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
