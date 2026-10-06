.class public Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;
.source "WordSuggestionItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback5:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 p0, -0x1

    .line 209
    iput-wide p0, v1, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    const/4 p0, 0x0

    .line 36
    aget-object p0, p3, p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 38
    iget-object p0, v1, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 39
    iget-object p0, v1, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 42
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mCallback5:Landroid/view/View$OnClickListener;

    .line 43
    invoke-virtual {v1}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 194
    iget-object p0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 205
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 14

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 130
    iput-wide v2, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    .line 131
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v4, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/ListModel;

    .line 135
    iget-object v5, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mIsMeaningEnglish:Ljava/lang/Boolean;

    .line 136
    iget-object v6, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mIsWordEnglish:Ljava/lang/Boolean;

    .line 139
    iget-object v7, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-wide/16 v7, 0x11

    and-long/2addr v7, v0

    cmp-long v7, v7, v2

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 147
    invoke-virtual {v4}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v8

    .line 149
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

    .line 157
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

    .line 164
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    :cond_2
    const-wide/16 v12, 0x10

    and-long/2addr v0, v12

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mCallback5:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz v9, :cond_4

    .line 175
    iget-object v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-static {v0, v5}, Lfast/dic/dict/BindingAdapters;->setIsEnglishMeaningForFont(Landroid/widget/TextView;Z)V

    :cond_4
    if-eqz v7, :cond_5

    .line 180
    iget-object v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz v11, :cond_6

    .line 186
    iget-object p0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-static {p0, v10}, Lfast/dic/dict/BindingAdapters;->setIsEnglishWordForFont(Landroid/widget/TextView;Z)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 131
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 58
    monitor-exit p0

    return v0

    .line 60
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

    .line 48
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 49
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    .line 50
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 50
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

    .line 94
    iput-object p1, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mIsMeaningEnglish:Ljava/lang/Boolean;

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x15

    .line 98
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 99
    invoke-super {p0}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 97
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIsWordEnglish(Ljava/lang/Boolean;)V
    .locals 4

    .line 102
    iput-object p1, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mIsWordEnglish:Ljava/lang/Boolean;

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x17

    .line 106
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 107
    invoke-super {p0}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 105
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setModel(Lfast/dic/dict/models/database/ListModel;)V
    .locals 4

    .line 86
    iput-object p1, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/ListModel;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 90
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 91
    invoke-super {p0}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 89
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 110
    iput-object p1, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->mDirtyFlags:J

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 114
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 115
    invoke-super {p0}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 113
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

    .line 68
    check-cast p2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->setModel(Lfast/dic/dict/models/database/ListModel;)V

    return v1

    :cond_0
    const/16 v0, 0x15

    if-ne v0, p1, :cond_1

    .line 71
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->setIsMeaningEnglish(Ljava/lang/Boolean;)V

    return v1

    :cond_1
    const/16 v0, 0x17

    if-ne v0, p1, :cond_2

    .line 74
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->setIsWordEnglish(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/16 v0, 0x20

    if-ne v0, p1, :cond_3

    .line 77
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBindingImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
