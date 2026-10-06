.class public Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;
.source "WodHistoryYearRowItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback29:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Lcom/google/android/material/card/MaterialCardView;

.field private final mboundView1:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 31
    sget-object v0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 147
    iput-wide v1, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 36
    aget-object p1, p3, v0

    check-cast p1, Lcom/google/android/material/card/MaterialCardView;

    iput-object p1, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 38
    aget-object p3, p3, p1

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mboundView1:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 42
    new-instance p2, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p2, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mCallback29:Landroid/view/View$OnClickListener;

    .line 43
    invoke-virtual {p0}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 132
    iget-object p0, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 143
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 8

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 108
    iput-wide v2, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v4, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mYear:Ljava/lang/String;

    .line 111
    iget-object v5, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-wide/16 v5, 0x5

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    const-wide/16 v6, 0x4

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mCallback29:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v5, :cond_1

    .line 124
    iget-object p0, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mboundView1:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 109
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
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4

    .line 49
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->requestRebind()V

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

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 88
    iput-object p1, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 92
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 93
    invoke-super {p0}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;->requestRebind()V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x37

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 68
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->setYear(Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 71
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 4

    .line 80
    iput-object p1, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mYear:Ljava/lang/String;

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 84
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 85
    invoke-super {p0}, Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
