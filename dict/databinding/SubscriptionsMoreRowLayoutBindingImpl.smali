.class public Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;
.super Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;
.source "SubscriptionsMoreRowLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback6:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 151
    iput-wide v1, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mDirtyFlags:J

    .line 34
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mboundView0:Landroid/widget/Button;

    const/4 p3, 0x0

    .line 35
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 38
    new-instance p1, Lfast/dic/dict/generated/callback/OnClickListener;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mCallback6:Landroid/view/View$OnClickListener;

    .line 39
    invoke-virtual {p0}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mOnSubscriptionClick:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 147
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 7

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 104
    iput-wide v2, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v4, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mModel:Lfast/dic/dict/adapters/MoreRowModel;

    .line 107
    iget-object v5, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mOnSubscriptionClick:Landroid/view/View$OnClickListener;

    const-wide/16 v5, 0x5

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 116
    invoke-virtual {v4}, Lfast/dic/dict/adapters/MoreRowModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 123
    iget-object v5, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mboundView0:Landroid/widget/Button;

    invoke-static {v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mboundView0:Landroid/widget/Button;

    iget-object p0, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mCallback6:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 105
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 54
    monitor-exit p0

    return v0

    .line 56
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

    .line 44
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 45
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mDirtyFlags:J

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {p0}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 46
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

.method public setModel(Lfast/dic/dict/adapters/MoreRowModel;)V
    .locals 4

    .line 76
    iput-object p1, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mModel:Lfast/dic/dict/adapters/MoreRowModel;

    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mDirtyFlags:J

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 80
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 81
    invoke-super {p0}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 79
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOnSubscriptionClick(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 84
    iput-object p1, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mOnSubscriptionClick:Landroid/view/View$OnClickListener;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x25

    .line 88
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 87
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

    .line 64
    check-cast p2, Lfast/dic/dict/adapters/MoreRowModel;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->setModel(Lfast/dic/dict/adapters/MoreRowModel;)V

    return v1

    :cond_0
    const/16 v0, 0x25

    if-ne v0, p1, :cond_1

    .line 67
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBindingImpl;->setOnSubscriptionClick(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
