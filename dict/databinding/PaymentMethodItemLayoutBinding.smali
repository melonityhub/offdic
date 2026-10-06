.class public abstract Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "PaymentMethodItemLayoutBinding.java"


# instance fields
.field public final arrowIconImageView:Landroid/widget/ImageView;

.field public final logoIv:Lcom/google/android/material/imageview/ShapeableImageView;

.field protected mLogo:Landroid/graphics/drawable/Drawable;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mMethod:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mPayment:Lfast/dic/dict/adapters/PaymentMethod;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mPrice:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final methodTv:Landroid/widget/TextView;

.field public final priceTv:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 50
    iput-object p4, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->arrowIconImageView:Landroid/widget/ImageView;

    .line 51
    iput-object p5, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->logoIv:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 52
    iput-object p6, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->methodTv:Landroid/widget/TextView;

    .line 53
    iput-object p7, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->priceTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;
    .locals 1

    .line 124
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    sget v0, Lfast/dic/dict/R$layout;->payment_method_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;
    .locals 1

    .line 106
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;
    .locals 1

    .line 87
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    sget v0, Lfast/dic/dict/R$layout;->payment_method_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    sget v0, Lfast/dic/dict/R$layout;->payment_method_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 74
    iget-object p0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->mLogo:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method public getPayment()Lfast/dic/dict/adapters/PaymentMethod;
    .locals 0

    .line 81
    iget-object p0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->mPayment:Lfast/dic/dict/adapters/PaymentMethod;

    return-object p0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->mPrice:Ljava/lang/String;

    return-object p0
.end method

.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setMethod(Ljava/lang/String;)V
.end method

.method public abstract setPayment(Lfast/dic/dict/adapters/PaymentMethod;)V
.end method

.method public abstract setPrice(Ljava/lang/String;)V
.end method
