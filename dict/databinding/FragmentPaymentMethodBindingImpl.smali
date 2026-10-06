.class public Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;
.super Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;
.source "FragmentPaymentMethodBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->top_toolbar_container:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->toolbar_title:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lfast/dic/dict/R$id;->back_button:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lfast/dic/dict/R$id;->action_button_container:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lfast/dic/dict/R$id;->purchase_button:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lfast/dic/dict/R$id;->restore_button:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v1, Lfast/dic/dict/R$id;->loading_spinner:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 34
    sget-object v0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x5

    .line 37
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageButton;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lfast/dic/dict/views/CustomProgressbar;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/Button;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageButton;Lfast/dic/dict/views/CustomProgressbar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-wide/16 v1, -0x1

    .line 147
    iput-wide v1, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDirtyFlags:J

    const/4 v1, 0x0

    .line 47
    aget-object v1, p3, v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->methodsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 9

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 117
    iput-wide v2, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDirtyFlags:J

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDecorator:Ljava/lang/Boolean;

    .line 121
    iget-object v5, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDataAdapter:Lfast/dic/dict/adapters/PaymentMethodAdapter;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v0

    cmp-long v6, v6, v2

    if-eqz v6, :cond_0

    .line 128
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v7, 0x6

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-eqz v6, :cond_1

    .line 136
    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->methodsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1, v4}, Lfast/dic/dict/BindingAdapters;->setEnableDecorator(Landroidx/recyclerview/widget/RecyclerView;Z)V

    :cond_1
    if-eqz v0, :cond_2

    .line 141
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->methodsRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, v5}, Lfast/dic/dict/BindingAdapters;->setAdapter(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 118
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 67
    monitor-exit p0

    return v0

    .line 69
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

    .line 57
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 58
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDirtyFlags:J

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 59
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

.method public setDataAdapter(Lfast/dic/dict/adapters/PaymentMethodAdapter;)V
    .locals 4

    .line 97
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDataAdapter:Lfast/dic/dict/adapters/PaymentMethodAdapter;

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDirtyFlags:J

    .line 100
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    .line 101
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->notifyPropertyChanged(I)V

    .line 102
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 100
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDecorator(Ljava/lang/Boolean;)V
    .locals 4

    .line 89
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDecorator:Ljava/lang/Boolean;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->mDirtyFlags:J

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 93
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->notifyPropertyChanged(I)V

    .line 94
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->requestRebind()V

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
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 77
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->setDecorator(Ljava/lang/Boolean;)V

    return v1

    :cond_0
    const/4 v0, 0x4

    if-ne v0, p1, :cond_1

    .line 80
    check-cast p2, Lfast/dic/dict/adapters/PaymentMethodAdapter;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentPaymentMethodBindingImpl;->setDataAdapter(Lfast/dic/dict/adapters/PaymentMethodAdapter;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
