.class public Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;
.super Lfast/dic/dict/databinding/FragmentLogoutBinding;
.source "FragmentLogoutBindingImpl.java"

# interfaces
.implements Lfast/dic/dict/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private final mCallback15:Landroid/view/View$OnClickListener;

.field private final mCallback16:Landroid/view/View$OnClickListener;

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lfast/dic/dict/R$id;->not_logged_in_view:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lfast/dic/dict/R$id;->title_label:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 33
    sget-object v0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x1

    .line 36
    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    aget-object v2, p3, v1

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    const/4 v2, 0x3

    aget-object v2, p3, v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    const/4 v2, 0x5

    aget-object v2, p3, v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lfast/dic/dict/databinding/FragmentLogoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V

    const-wide/16 p0, -0x1

    .line 192
    iput-wide p0, v2, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mDirtyFlags:J

    .line 43
    iget-object p0, v2, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->descriptionLabel:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 44
    aget-object p0, p3, p0

    check-cast p0, Landroid/widget/RelativeLayout;

    iput-object p0, v2, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 46
    iget-object p0, v2, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 47
    iget-object p0, v2, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->secondaryBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v2, v4}, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 50
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v2, v1}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v2, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mCallback16:Landroid/view/View$OnClickListener;

    .line 51
    new-instance p0, Lfast/dic/dict/generated/callback/OnClickListener;

    invoke-direct {p0, v2, v0}, Lfast/dic/dict/generated/callback/OnClickListener;-><init>(Lfast/dic/dict/generated/callback/OnClickListener$Listener;I)V

    iput-object p0, v2, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mCallback15:Landroid/view/View$OnClickListener;

    .line 52
    invoke-virtual {v2}, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mCloseAction:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_1

    .line 167
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void

    .line 174
    :cond_2
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mLogoutAction:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_3

    .line 185
    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method protected executeBindings()V
    .locals 7

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 128
    iput-wide v2, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mDirtyFlags:J

    .line 129
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mLogoutAction:Landroid/view/View$OnClickListener;

    .line 131
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mCloseAction:Landroid/view/View$OnClickListener;

    .line 132
    iget-object v4, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mLogoutBody:Ljava/lang/String;

    const-wide/16 v5, 0xc

    and-long/2addr v5, v0

    cmp-long v5, v5, v2

    if-eqz v5, :cond_0

    .line 140
    iget-object v5, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->descriptionLabel:Landroid/widget/TextView;

    invoke-static {v5, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_0
    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->primaryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mCallback15:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->secondaryBtn:Landroid/widget/Button;

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mCallback16:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
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

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x8

    .line 58
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mDirtyFlags:J

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->requestRebind()V

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

.method public setCloseAction(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 100
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mCloseAction:Landroid/view/View$OnClickListener;

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mDirtyFlags:J

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 104
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->notifyPropertyChanged(I)V

    .line 105
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->requestRebind()V

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

.method public setLogoutAction(Landroid/view/View$OnClickListener;)V
    .locals 4

    .line 92
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mLogoutAction:Landroid/view/View$OnClickListener;

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mDirtyFlags:J

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1b

    .line 96
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->notifyPropertyChanged(I)V

    .line 97
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->requestRebind()V

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

.method public setLogoutBody(Ljava/lang/String;)V
    .locals 4

    .line 108
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mLogoutBody:Ljava/lang/String;

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->mDirtyFlags:J

    .line 111
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1c

    .line 112
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->notifyPropertyChanged(I)V

    .line 113
    invoke-super {p0}, Lfast/dic/dict/databinding/FragmentLogoutBinding;->requestRebind()V

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

    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 77
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->setLogoutAction(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 80
    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->setCloseAction(Landroid/view/View$OnClickListener;)V

    return v1

    :cond_1
    const/16 v0, 0x1c

    if-ne v0, p1, :cond_2

    .line 83
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/FragmentLogoutBindingImpl;->setLogoutBody(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
