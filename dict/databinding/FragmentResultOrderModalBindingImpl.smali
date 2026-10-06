.class public Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;
.super Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;
.source "FragmentResultOrderModalBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback1:Landroid/view/View$OnClickListener;

.field private final mCallback2:Landroid/view/View$OnClickListener;

.field private final mCallback3:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->app_bar:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->toolbar:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lfast/dic/dict/R$id;->toolbar_title:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lfast/dic/dict/R$id;->subtitle_tv:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lfast/dic/dict/R$id;->cta_layout:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 38
    sget-object v0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 16

    const/4 v0, 0x5

    .line 41
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v13, 0x1

    aget-object v0, p3, v13

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v14, 0x2

    aget-object v0, p3, v14

    move-object v7, v0

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v15, 0x3

    aget-object v0, p3, v15

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v12}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/appbar/AppBarLayout;Landroid/widget/Button;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroidx/appcompat/widget/Toolbar;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 234
    iput-wide v1, v0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    .line 52
    iget-object v1, v0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->backToolbarButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 53
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v1, v0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->orderRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v1, v0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v1, v0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->secondaryBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    move-object/from16 v2, p2

    .line 58
    invoke-virtual {v0, v2}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 60
    new-instance v1, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {v1, v0, v15}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    .line 61
    new-instance v1, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {v1, v0, v13}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    .line 62
    new-instance v1, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {v1, v0, v14}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    .line 63
    invoke-virtual {v0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mRestoreClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    .line 191
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void

    .line 216
    :cond_2
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mSaveClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_3

    .line 227
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    return-void

    .line 200
    :cond_4
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDismissClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_5

    .line 209
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method protected executeBindings()V
    .locals 8

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 150
    iput-wide v2, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mRestoreClickListener:Landroid/view/View$OnClickListener;

    .line 153
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mSaveClickListener:Landroid/view/View$OnClickListener;

    .line 154
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDismissClickListener:Landroid/view/View$OnClickListener;

    .line 155
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mAdapter:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    const-wide/16 v5, 0x18

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    const-wide/16 v6, 0x10

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->backToolbarButton:Landroid/widget/Button;

    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->primaryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->secondaryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mCallback3:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v5, :cond_1

    .line 170
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->orderRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 151
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 78
    monitor-exit p0

    return v0

    .line 80
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

    .line 68
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 69
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    .line 70
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 70
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

.method public setAdapter(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;)V
    .locals 4

    .line 130
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mAdapter:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 134
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->notifyPropertyChanged(I)V

    .line 135
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 133
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDismissClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 122
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDismissClickListener:Landroid/view/View$OnClickListener;

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

    .line 126
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->notifyPropertyChanged(I)V

    .line 127
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 125
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setRestoreClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 106
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mRestoreClickListener:Landroid/view/View$OnClickListener;

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2b

    .line 110
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->notifyPropertyChanged(I)V

    .line 111
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->requestRebind()V

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

.method public setSaveClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 114
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mSaveClickListener:Landroid/view/View$OnClickListener;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

    .line 118
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->notifyPropertyChanged(I)V

    .line 119
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;->requestRebind()V

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

    const/16 v0, 0x2b

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 88
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->setRestoreClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_0
    const/16 v0, 0x2d

    if-ne v0, p1, :cond_1

    .line 91
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->setSaveClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/4 v0, 0x7

    if-ne v0, p1, :cond_2

    .line 94
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->setDismissClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_2
    if-ne v1, p1, :cond_3

    .line 97
    check-cast p2, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentResultOrderModalBindingImpl;->setAdapter(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;)V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
