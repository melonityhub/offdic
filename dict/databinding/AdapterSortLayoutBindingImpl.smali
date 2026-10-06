.class public Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;
.super Lfast/dic/dict/databinding/AdapterSortLayoutBinding;
.source "AdapterSortLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback26:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->my_words_inside_of_container:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 30
    sget-object v0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x2

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v7, v1

    check-cast v7, Lcom/google/android/material/card/MaterialCardView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/card/MaterialCardView;)V

    const-wide/16 p0, -0x1

    .line 162
    iput-wide p0, v1, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mDirtyFlags:J

    .line 38
    iget-object p0, v1, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->languageTitleLabel:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 39
    aget-object p0, p3, p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 40
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p0, v1, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->rowContainerCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 44
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mCallback26:Landroid/view/View$OnClickListener;

    .line 45
    invoke-virtual {v1}, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mOnSelectListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 158
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
    iget-wide v0, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 110
    iput-wide v2, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v4, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mOnSelectListener:Landroid/view/View$OnClickListener;

    .line 113
    iget-object v4, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mModel:Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;

    const-wide/16 v5, 0x6

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {v4}, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-virtual {v4}, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;->getSelected()Z

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz v5, :cond_1

    .line 132
    iget-object v5, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->languageTitleLabel:Landroid/widget/TextView;

    invoke-static {v5, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 133
    iget-object v5, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->languageTitleLabel:Landroid/widget/TextView;

    invoke-static {v5, v4}, Lfast/dic/dict/presentation/sort_screen/BindingAdapters;->bindingSelectedTextView(Landroid/widget/TextView;Z)V

    .line 134
    iget-object v5, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->rowContainerCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v5, v4}, Lfast/dic/dict/presentation/sort_screen/BindingAdapters;->bindingSelectedCardView(Lcom/google/android/material/card/MaterialCardView;Z)V

    :cond_1
    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->rowContainerCard:Lcom/google/android/material/card/MaterialCardView;

    iget-object p0, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mCallback26:Landroid/view/View$OnClickListener;

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
    iget-wide v0, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mDirtyFlags:J

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {p0}, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->requestRebind()V

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

.method public setModel(Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;)V
    .locals 4

    .line 90
    iput-object p1, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mModel:Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 94
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 95
    invoke-super {p0}, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->requestRebind()V

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

.method public setOnSelectListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 82
    iput-object p1, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mOnSelectListener:Landroid/view/View$OnClickListener;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->mDirtyFlags:J

    .line 85
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x24

    .line 86
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 87
    invoke-super {p0}, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->requestRebind()V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x24

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 70
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->setOnSelectListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_0
    const/16 v0, 0x1e

    if-ne v0, p1, :cond_1

    .line 73
    check-cast p2, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/AdapterSortLayoutBindingImpl;->setModel(Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
