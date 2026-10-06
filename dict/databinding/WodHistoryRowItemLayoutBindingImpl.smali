.class public Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;
.source "WodHistoryRowItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback11:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 p0, -0x1

    .line 166
    iput-wide p0, v1, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    const/4 p0, 0x0

    .line 36
    aget-object p0, p3, p0

    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    iput-object p0, v1, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    .line 38
    iget-object p0, v1, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object p0, v1, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 42
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mCallback11:Landroid/view/View$OnClickListener;

    .line 43
    invoke-virtual {v1}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 151
    iget-object p0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 162
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 10

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 119
    iput-wide v2, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v4, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDate:Ljava/lang/String;

    .line 122
    iget-object v5, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 123
    iget-object v5, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mWord:Ljava/lang/String;

    const-wide/16 v6, 0x9

    and-long/2addr v6, v0

    cmp-long v6, v6, v2

    const-wide/16 v7, 0xc

    and-long/2addr v7, v0

    cmp-long v7, v7, v2

    const-wide/16 v8, 0x8

    and-long/2addr v0, v8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mCallback11:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v6, :cond_1

    .line 138
    iget-object v0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v7, :cond_2

    .line 143
    iget-object p0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-static {p0, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 120
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 58
    monitor-exit p0

    return v0

    .line 60
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

    .line 48
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 49
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 50
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

.method public setDate(Ljava/lang/String;)V
    .locals 4

    .line 83
    iput-object p1, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDate:Ljava/lang/String;

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 86
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 87
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 88
    invoke-super {p0}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->requestRebind()V

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

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 91
    iput-object p1, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 94
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 95
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 96
    invoke-super {p0}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->requestRebind()V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 68
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->setDate(Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 71
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/16 v0, 0x36

    if-ne v0, p1, :cond_2

    .line 74
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->setWord(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setWord(Ljava/lang/String;)V
    .locals 4

    .line 99
    iput-object p1, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mWord:Ljava/lang/String;

    .line 100
    monitor-enter p0

    .line 101
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x36

    .line 103
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 104
    invoke-super {p0}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->requestRebind()V

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
