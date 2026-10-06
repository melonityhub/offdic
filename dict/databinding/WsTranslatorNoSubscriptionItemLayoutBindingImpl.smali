.class public Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;
.source "WsTranslatorNoSubscriptionItemLayoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback10:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->history_icon_imageview:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->translator_text_sub_view:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lfast/dic/dict/R$id;->back_icon_imageview:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 32
    sget-object v0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x4

    .line 35
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 p0, -0x1

    .line 167
    iput-wide p0, v1, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mDirtyFlags:J

    const/4 p0, 0x0

    .line 41
    aget-object p0, p3, p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p0, v1, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->translatorTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 46
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v1, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mCallback10:Landroid/view/View$OnClickListener;

    .line 47
    invoke-virtual {v1}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 163
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected executeBindings()V
    .locals 9

    .line 110
    monitor-enter p0

    .line 111
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 112
    iput-wide v2, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mDirtyFlags:J

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v4, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/ListModel;

    .line 118
    iget-object v5, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-wide/16 v5, 0x5

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    if-eqz v5, :cond_1

    if-eqz v4, :cond_0

    .line 126
    invoke-virtual {v4}, Lfast/dic/dict/models/database/ListModel;->getTranslatorCount()I

    move-result v6

    .line 128
    invoke-virtual {v4}, Lfast/dic/dict/models/database/ListModel;->getMaxTranslatorLength()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move v4, v6

    .line 133
    :goto_0
    iget-object v7, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->translatorTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lfast/dic/dict/R$string;->word_limitation_for_translate:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v6, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-wide/16 v6, 0x4

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mCallback10:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v5, :cond_3

    .line 144
    iget-object p0, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->translatorTextView:Landroid/widget/TextView;

    invoke-static {p0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 113
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
    iget-wide v0, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4

    .line 53
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->requestRebind()V

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

.method public setModel(Lfast/dic/dict/models/database/ListModel;)V
    .locals 4

    .line 84
    iput-object p1, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mModel:Lfast/dic/dict/models/database/ListModel;

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mDirtyFlags:J

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 88
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 89
    invoke-super {p0}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->requestRebind()V

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

    .line 92
    iput-object p1, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 96
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 97
    invoke-super {p0}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->requestRebind()V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 72
    check-cast p2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->setModel(Lfast/dic/dict/models/database/ListModel;)V

    return v1

    :cond_0
    const/16 v0, 0x20

    if-ne v0, p1, :cond_1

    .line 75
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBindingImpl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
