.class public Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;
.source "FavoriteWordItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback27:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 27
    sget-object v0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x2

    .line 30
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    move-object v7, p3

    check-cast v7, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V

    const-wide/16 p0, -0x1

    .line 207
    iput-wide p0, v1, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 35
    iget-object p0, v1, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 36
    iget-object p0, v1, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->suggestionWordParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p0, v1, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 40
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mCallback27:Landroid/view/View$OnClickListener;

    .line 41
    invoke-virtual {v1}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 192
    iget-object p0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 203
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 13

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 128
    iput-wide v2, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v4, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/ListModel;

    .line 133
    iget-object v5, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mIsMeaningEnglish:Ljava/lang/Boolean;

    .line 134
    iget-object v6, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mIsWordEnglish:Ljava/lang/Boolean;

    .line 137
    iget-object v7, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-wide/16 v7, 0x11

    and-long/2addr v7, v0

    cmp-long v7, v7, v2

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {v4}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v8

    .line 147
    invoke-virtual {v4}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move-object v4, v8

    :goto_0
    const-wide/16 v9, 0x12

    and-long/2addr v9, v0

    cmp-long v9, v9, v2

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    .line 155
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v10

    :goto_1
    const-wide/16 v11, 0x14

    and-long/2addr v11, v0

    cmp-long v11, v11, v2

    if-eqz v11, :cond_2

    .line 162
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    :cond_2
    if-eqz v7, :cond_3

    .line 168
    iget-object v6, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-static {v6, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 169
    iget-object v6, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-static {v6, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v9, :cond_4

    .line 174
    iget-object v4, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lfast/dic/dict/BindingAdapters;->setIsEnglishMeaningForFont(Landroid/widget/TextView;Z)V

    :cond_4
    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 179
    iget-object v0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->suggestionWordParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mCallback27:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    if-eqz v11, :cond_6

    .line 184
    iget-object p0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-static {p0, v10}, Lfast/dic/dict/BindingAdapters;->setIsEnglishWordForFont(Landroid/widget/TextView;Z)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 129
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 56
    monitor-exit p0

    return v0

    .line 58
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

    .line 46
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 47
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 48
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

.method public setIsMeaningEnglish(Ljava/lang/Boolean;)V
    .locals 4

    .line 92
    iput-object p1, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mIsMeaningEnglish:Ljava/lang/Boolean;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x15

    .line 96
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 97
    invoke-super {p0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 95
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIsWordEnglish(Ljava/lang/Boolean;)V
    .locals 4

    .line 100
    iput-object p1, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mIsWordEnglish:Ljava/lang/Boolean;

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x17

    .line 104
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 105
    invoke-super {p0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 103
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setModel(Lfast/dic/dict/models/database/ListModel;)V
    .locals 4

    .line 84
    iput-object p1, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/ListModel;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 88
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->requestRebind()V

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

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 108
    iput-object p1, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 112
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 113
    invoke-super {p0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 111
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

    .line 66
    check-cast p2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->setModel(Lfast/dic/dict/models/database/ListModel;)V

    return v1

    :cond_0
    const/16 v0, 0x15

    if-ne v0, p1, :cond_1

    .line 69
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->setIsMeaningEnglish(Ljava/lang/Boolean;)V

    return v1

    :cond_1
    const/16 v0, 0x17

    if-ne v0, p1, :cond_2

    .line 72
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->setIsWordEnglish(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/16 v0, 0x20

    if-ne v0, p1, :cond_3

    .line 75
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBindingImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
