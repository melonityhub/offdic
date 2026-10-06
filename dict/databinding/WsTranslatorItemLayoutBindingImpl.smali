.class public Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/WsTranslatorItemLayoutBinding;
.source "WsTranslatorItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback31:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->history_icon_imageview:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->translator_text_view:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lfast/dic/dict/R$id;->back_icon_imageview:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 32
    sget-object v0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x3

    .line 35
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    const-wide/16 p0, -0x1

    .line 135
    iput-wide p0, v1, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mDirtyFlags:J

    const/4 p0, 0x0

    .line 40
    aget-object p0, p3, p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 44
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mCallback31:Landroid/view/View$OnClickListener;

    .line 45
    invoke-virtual {v1}, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 120
    iget-object p0, p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 131
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 6

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 105
    iput-wide v2, p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v4, p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object p0, p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mCallback31:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 106
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
    iget-wide v0, p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mDirtyFlags:J

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {p0}, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->requestRebind()V

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

.method public setModel(Lfast/dic/dict/models/database/ListModel;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/ListModel;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 85
    iput-object p1, p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->mDirtyFlags:J

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 89
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 90
    invoke-super {p0}, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 88
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

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->setModel(Lfast/dic/dict/models/database/ListModel;)V

    return v1

    :cond_0
    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 73
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBindingImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
