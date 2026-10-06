.class public Lfast/dic/dict/databinding/FragmentPricingBindingImpl;
.super Lfast/dic/dict/databinding/FragmentPricingBinding;
.source "FragmentPricingBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    .line 16
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pricing_sticky_header_layout"

    aput-object v4, v2, v3

    const/4 v5, 0x5

    filled-new-array {v5}, [I

    move-result-object v5

    sget v6, Lfast/dic/dict/R$layout;->pricing_sticky_header_layout:I

    filled-new-array {v6}, [I

    move-result-object v6

    invoke-virtual {v0, v3, v2, v5, v6}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v2, 0x4

    filled-new-array {v2}, [I

    move-result-object v2

    sget v3, Lfast/dic/dict/R$layout;->pricing_sticky_header_layout:I

    filled-new-array {v3}, [I

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 24
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 25
    sget v1, Lfast/dic/dict/R$id;->scrollview:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v1, Lfast/dic/dict/R$id;->restore_purchase_button:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget v1, Lfast/dic/dict/R$id;->loading_spinner:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 38
    sget-object v0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 12

    const/4 v0, 0x2

    .line 41
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lfast/dic/dict/views/CustomProgressbar;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/Button;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/core/widget/NestedScrollView;

    const/4 v3, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lfast/dic/dict/databinding/FragmentPricingBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lfast/dic/dict/views/CustomProgressbar;Landroidx/recyclerview/widget/RecyclerView;Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;Landroid/widget/Button;Landroidx/core/widget/NestedScrollView;)V

    const-wide/16 v1, -0x1

    .line 194
    iput-wide v1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    .line 51
    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->featuresLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->featuresRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 53
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 54
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->planRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-virtual {p0, v1}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 57
    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-virtual {p0, v1}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 58
    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangePricingHeaderLayout(Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-wide p1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    .line 157
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangePricingStickyHeaderLayout(Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-wide p1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    .line 148
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 9

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 168
    iput-wide v2, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    .line 169
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mFeatureAdapter:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    .line 171
    iget-object v5, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mPlanAdapter:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    const-wide/16 v6, 0x28

    and-long/2addr v6, v0

    cmp-long v6, v6, v2

    const-wide/16 v7, 0x30

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-eqz v6, :cond_0

    .line 181
    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->featuresRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->planRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 188
    :cond_1
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-static {v0}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 189
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-static {p0}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 169
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 77
    monitor-exit p0

    return v1

    .line 79
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-virtual {v0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 83
    :cond_1
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-virtual {p0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->hasPendingBindings()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    .line 79
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 65
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 66
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-virtual {v0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->invalidateAll()V

    .line 69
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-virtual {v0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->invalidateAll()V

    .line 70
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 67
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 140
    :cond_0
    check-cast p2, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-direct {p0, p2, p3}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->onChangePricingHeaderLayout(Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;I)Z

    move-result p0

    return p0

    .line 138
    :cond_1
    check-cast p2, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-direct {p0, p2, p3}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->onChangePricingStickyHeaderLayout(Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;I)Z

    move-result p0

    return p0
.end method

.method public setFeatureAdapter(Lfast/dic/dict/adapters/PricingFeatureListAdapter;)V
    .locals 4

    .line 111
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mFeatureAdapter:Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xb

    .line 115
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->notifyPropertyChanged(I)V

    .line 116
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentPricingBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 114
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lfast/dic/dict/databinding/FragmentPricingBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 130
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-virtual {v0, p1}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 131
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mModel:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    return-void
.end method

.method public setPlanAdapter(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V
    .locals 4

    .line 119
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mPlanAdapter:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->mDirtyFlags:J

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x27

    .line 123
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->notifyPropertyChanged(I)V

    .line 124
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentPricingBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 122
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

    .line 93
    check-cast p2, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;)V

    return v1

    :cond_0
    const/16 v0, 0xb

    if-ne v0, p1, :cond_1

    .line 96
    check-cast p2, Lfast/dic/dict/adapters/PricingFeatureListAdapter;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->setFeatureAdapter(Lfast/dic/dict/adapters/PricingFeatureListAdapter;)V

    return v1

    :cond_1
    const/16 v0, 0x27

    if-ne v0, p1, :cond_2

    .line 99
    check-cast p2, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentPricingBindingImpl;->setPlanAdapter(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
