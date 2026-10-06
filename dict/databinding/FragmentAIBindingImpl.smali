.class public Lfast/dic/dict/databinding/FragmentAIBindingImpl;
.super Lfast/dic/dict/databinding/FragmentAIBinding;
.source "FragmentAIBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 27
    sget-object v0, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentAIBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 30
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Lfast/dic/dict/views/CustomProgressbar;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lim/delight/android/webview/AdvancedWebView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/databinding/FragmentAIBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILfast/dic/dict/views/CustomProgressbar;Lim/delight/android/webview/AdvancedWebView;)V

    const-wide/16 p0, -0x1

    .line 135
    iput-wide p0, v1, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->mDirtyFlags:J

    .line 34
    iget-object p0, v1, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lfast/dic/dict/views/CustomProgressbar;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 35
    aget-object p0, p3, p0

    check-cast p0, Landroid/widget/FrameLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p0, v1, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->webView:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {p0, p1}, Lim/delight/android/webview/AdvancedWebView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {v1}, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 11

    .line 92
    monitor-enter p0

    .line 93
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 94
    iput-wide v2, p0, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->mLoading:Ljava/lang/Boolean;

    const-wide/16 v5, 0x3

    and-long v7, v0, v5

    cmp-long v7, v7, v2

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    .line 106
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v7, :cond_1

    if-eqz v4, :cond_0

    const-wide/16 v9, 0x28

    goto :goto_0

    :cond_0
    const-wide/16 v9, 0x14

    :goto_0
    or-long/2addr v0, v9

    :cond_1
    if-eqz v4, :cond_2

    const/4 v7, 0x4

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/16 v4, 0x8

    move v8, v4

    goto :goto_2

    :cond_4
    move v7, v8

    :goto_2
    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 128
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    invoke-virtual {v0, v8}, Lfast/dic/dict/views/CustomProgressbar;->setVisibility(I)V

    .line 129
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->webView:Lim/delight/android/webview/AdvancedWebView;

    invoke-virtual {p0, v7}, Lim/delight/android/webview/AdvancedWebView;->setVisibility(I)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 95
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 55
    monitor-exit p0

    return v0

    .line 57
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

    .line 45
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 46
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 47
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

.method public setLoading(Ljava/lang/Boolean;)V
    .locals 4

    .line 74
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->mLoading:Ljava/lang/Boolean;

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->mDirtyFlags:J

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 78
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->notifyPropertyChanged(I)V

    .line 79
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentAIBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 77
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x18

    if-ne v0, p1, :cond_0

    .line 65
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentAIBindingImpl;->setLoading(Ljava/lang/Boolean;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
