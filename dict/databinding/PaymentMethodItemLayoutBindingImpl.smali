.class public Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;
.super Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;
.source "PaymentMethodItemLayoutBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 27
    sget-object v0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x4

    .line 30
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 p0, -0x1

    .line 170
    iput-wide p0, v1, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mDirtyFlags:J

    .line 36
    iget-object p0, v1, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->arrowIconImageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 37
    iget-object p0, v1, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->logoIv:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {p0, p1}, Lcom/google/android/material/imageview/ShapeableImageView;->setTag(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 38
    aget-object p0, p3, p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p0, v1, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    .line 40
    iget-object p0, v1, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->methodTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p0, v1, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->priceTv:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v1, v3}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 44
    invoke-virtual {v1}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 15

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 116
    iput-wide v2, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v4, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mPayment:Lfast/dic/dict/adapters/PaymentMethod;

    const-wide/16 v5, 0x12

    and-long v7, v0, v5

    cmp-long v7, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v7, :cond_5

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {v4}, Lfast/dic/dict/adapters/PaymentMethod;->getPlatformDescription()Ljava/lang/String;

    move-result-object v8

    .line 134
    invoke-virtual {v4}, Lfast/dic/dict/adapters/PaymentMethod;->getPrice()Ljava/lang/String;

    move-result-object v10

    .line 136
    invoke-virtual {v4}, Lfast/dic/dict/adapters/PaymentMethod;->getLogo()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 138
    invoke-virtual {v4}, Lfast/dic/dict/adapters/PaymentMethod;->getSelected()Z

    move-result v4

    goto :goto_0

    :cond_0
    move-object v10, v8

    move-object v11, v10

    move v4, v9

    :goto_0
    const/4 v12, 0x1

    if-ne v4, v12, :cond_1

    goto :goto_1

    :cond_1
    move v12, v9

    :goto_1
    if-eqz v7, :cond_3

    if-eqz v12, :cond_2

    const-wide/16 v13, 0x40

    goto :goto_2

    :cond_2
    const-wide/16 v13, 0x20

    :goto_2
    or-long/2addr v0, v13

    :cond_3
    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x4

    move v9, v4

    :goto_3
    move-object v4, v8

    move-object v8, v11

    goto :goto_4

    :cond_5
    move-object v4, v8

    move-object v10, v4

    :goto_4
    and-long/2addr v0, v5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 161
    iget-object v0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->arrowIconImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->logoIv:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->methodTv:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 164
    iget-object p0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->priceTv:Landroid/widget/TextView;

    invoke-static {p0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 117
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
    iget-wide v0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x10

    .line 50
    :try_start_0
    iput-wide v0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mDirtyFlags:J

    .line 51
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p0}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->requestRebind()V

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

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mLogo:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mMethod:Ljava/lang/String;

    return-void
.end method

.method public setPayment(Lfast/dic/dict/adapters/PaymentMethod;)V
    .locals 4

    .line 90
    iput-object p1, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mPayment:Lfast/dic/dict/adapters/PaymentMethod;

    .line 91
    monitor-enter p0

    .line 92
    :try_start_0
    iget-wide v0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mDirtyFlags:J

    .line 93
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x26

    .line 94
    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->notifyPropertyChanged(I)V

    .line 95
    invoke-super {p0}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->requestRebind()V

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

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->mPrice:Ljava/lang/String;

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x1a

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 69
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return v1

    :cond_0
    const/16 v0, 0x26

    if-ne v0, p1, :cond_1

    .line 72
    check-cast p2, Lfast/dic/dict/adapters/PaymentMethod;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->setPayment(Lfast/dic/dict/adapters/PaymentMethod;)V

    return v1

    :cond_1
    const/16 v0, 0x1d

    if-ne v0, p1, :cond_2

    .line 75
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->setMethod(Ljava/lang/String;)V

    return v1

    :cond_2
    const/16 v0, 0x2a

    if-ne v0, p1, :cond_3

    .line 78
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBindingImpl;->setPrice(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
