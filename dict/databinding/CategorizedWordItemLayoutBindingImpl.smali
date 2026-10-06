.class public Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;
.source "CategorizedWordItemLayoutBindingImpl.java"


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

    sput-object v0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->word_title_container:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->pos_container:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x2

    .line 32
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/flexbox/FlexboxLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const-wide/16 p0, -0x1

    .line 176
    iput-wide p0, v1, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mDirtyFlags:J

    const/4 p0, 0x0

    .line 38
    aget-object p0, p3, p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object p0, v1, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p0, v1, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 44
    invoke-virtual {v1}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 13

    .line 118
    monitor-enter p0

    .line 119
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 120
    iput-wide v2, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v4, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/CategorizedWordDto;

    .line 125
    iget-object v5, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mIsMeaningEnglish:Ljava/lang/Boolean;

    .line 126
    iget-object v6, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mIsWordEnglish:Ljava/lang/Boolean;

    const-wide/16 v7, 0x9

    and-long/2addr v7, v0

    cmp-long v7, v7, v2

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v4}, Lfast/dic/dict/models/database/CategorizedWordDto;->getMeaning()Ljava/lang/String;

    move-result-object v8

    .line 138
    invoke-virtual {v4}, Lfast/dic/dict/models/database/CategorizedWordDto;->getWord()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move-object v4, v8

    :goto_0
    const-wide/16 v9, 0xa

    and-long/2addr v9, v0

    cmp-long v9, v9, v2

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    .line 146
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v10

    :goto_1
    const-wide/16 v11, 0xc

    and-long/2addr v0, v11

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 153
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    :cond_2
    if-eqz v9, :cond_3

    .line 159
    iget-object v1, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-static {v1, v5}, Lfast/dic/dict/BindingAdapters;->setIsEnglishMeaningForFont(Landroid/widget/TextView;Z)V

    :cond_3
    if-eqz v7, :cond_4

    .line 164
    iget-object v1, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->meaningTitle:Landroid/widget/TextView;

    invoke-static {v1, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 170
    iget-object p0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->wordTitle:Landroid/widget/TextView;

    invoke-static {p0, v10}, Lfast/dic/dict/BindingAdapters;->setIsEnglishWordForFont(Landroid/widget/TextView;Z)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 121
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 59
    monitor-exit p0

    return v0

    .line 61
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

    .line 49
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 50
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 51
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
    iput-object p1, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mIsMeaningEnglish:Ljava/lang/Boolean;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x15

    .line 96
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 97
    invoke-super {p0}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->requestRebind()V

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
    iput-object p1, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mIsWordEnglish:Ljava/lang/Boolean;

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x17

    .line 104
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 105
    invoke-super {p0}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->requestRebind()V

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

.method public setModel(Lfast/dic/dict/models/database/CategorizedWordDto;)V
    .locals 4

    .line 84
    iput-object p1, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/CategorizedWordDto;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 88
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->requestRebind()V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 69
    check-cast p2, Lfast/dic/dict/models/database/CategorizedWordDto;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->setModel(Lfast/dic/dict/models/database/CategorizedWordDto;)V

    return v1

    :cond_0
    const/16 v0, 0x15

    if-ne v0, p1, :cond_1

    .line 72
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->setIsMeaningEnglish(Ljava/lang/Boolean;)V

    return v1

    :cond_1
    const/16 v0, 0x17

    if-ne v0, p1, :cond_2

    .line 75
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBindingImpl;->setIsWordEnglish(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
