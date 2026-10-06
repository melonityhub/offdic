.class public Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;
.super Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;
.source "FragmentCameraPermissionBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback18:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->toolbar_view:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->toolbar:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lfast/dic/dict/R$id;->not_logged_in_view:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lfast/dic/dict/R$id;->title_label:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lfast/dic/dict/R$id;->description_label:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lfast/dic/dict/R$id;->continue_button:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 37
    sget-object v0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x7

    .line 40
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;)V

    const-wide/16 p0, -0x1

    .line 139
    iput-wide p0, v1, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mDirtyFlags:J

    const/4 p0, 0x0

    .line 48
    aget-object p0, p3, p0

    check-cast p0, Landroid/widget/RelativeLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x1

    .line 50
    aget-object p2, p3, p0

    check-cast p2, Landroid/widget/Button;

    iput-object p2, v1, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mboundView1:Landroid/widget/Button;

    .line 51
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 54
    new-instance p1, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p1, v1, p0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, v1, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mCallback18:Landroid/view/View$OnClickListener;

    .line 55
    invoke-virtual {v1}, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mOnBackListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 135
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 6

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 109
    iput-wide v2, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mDirtyFlags:J

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mOnBackListener:Landroid/view/View$OnClickListener;

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mboundView1:Landroid/widget/Button;

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mCallback18:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 110
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 70
    monitor-exit p0

    return v0

    .line 72
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

    .line 60
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 61
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mDirtyFlags:J

    .line 62
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 62
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

.method public setOnBackListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 89
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mOnBackListener:Landroid/view/View$OnClickListener;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1f

    .line 93
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->notifyPropertyChanged(I)V

    .line 94
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentCameraPermissionBinding;->requestRebind()V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x1f

    if-ne v0, p1, :cond_0

    .line 80
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentCameraPermissionBindingImpl;->setOnBackListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
