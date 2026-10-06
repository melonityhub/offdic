.class public Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;
.source "WodDirectoriesItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback25:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->iv_icon:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->words_count_label_parent:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 31
    sget-object v0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x1

    .line 34
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Lcom/google/android/material/card/MaterialCardView;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;)V

    const-wide/16 p0, -0x1

    .line 176
    iput-wide p0, v2, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 40
    iget-object p0, v2, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 41
    aget-object p0, p3, p0

    check-cast p0, Lcom/google/android/material/card/MaterialCardView;

    iput-object p0, v2, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p0, v2, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v2, v4}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 46
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v2, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v2, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mCallback25:Landroid/view/View$OnClickListener;

    .line 47
    invoke-virtual {v2}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 161
    iget-object p0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 172
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 9

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 123
    iput-wide v2, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v4, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mCount:Ljava/lang/Integer;

    .line 127
    iget-object v5, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 128
    iget-object v5, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mIsPersianLanguage:Ljava/lang/Boolean;

    const-wide/16 v6, 0x9

    and-long/2addr v6, v0

    cmp-long v6, v6, v2

    const-wide/16 v7, 0xc

    and-long/2addr v7, v0

    cmp-long v7, v7, v2

    if-eqz v7, :cond_0

    .line 137
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 143
    iget-object v7, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->directoryNameLabel:Landroid/widget/TextView;

    invoke-static {v7, v5}, Lfast/dic/dict/BindingAdapters;->setPersianAlignment(Landroid/widget/TextView;Z)V

    :cond_1
    const-wide/16 v7, 0x8

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mboundView0:Lcom/google/android/material/card/MaterialCardView;

    iget-object v1, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mCallback25:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/card/MaterialCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v6, :cond_3

    .line 153
    iget-object p0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->wordsCountLabel:Landroid/widget/TextView;

    invoke-static {p0, v4}, Lfast/dic/dict/BindingAdapters;->setLocalizedNumber(Landroid/widget/TextView;Ljava/lang/Integer;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 124
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 62
    monitor-exit p0

    return v0

    .line 64
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

    .line 52
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 53
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
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

.method public setCount(Ljava/lang/Integer;)V
    .locals 4

    .line 87
    iput-object p1, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mCount:Ljava/lang/Integer;

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 90
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 91
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 92
    invoke-super {p0}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 90
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIsPersianLanguage(Ljava/lang/Boolean;)V
    .locals 4

    .line 103
    iput-object p1, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mIsPersianLanguage:Ljava/lang/Boolean;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x16

    .line 107
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 108
    invoke-super {p0}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 95
    iput-object p1, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->mDirtyFlags:J

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 99
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 100
    invoke-super {p0}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 98
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 72
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->setCount(Ljava/lang/Integer;)V

    return v1

    :cond_0
    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 75
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/16 v0, 0x16

    if-ne v0, p1, :cond_2

    .line 78
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBindingImpl;->setIsPersianLanguage(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
