.class public abstract Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentPaymentMethodBinding.java"


# instance fields
.field public final actionButtonContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final backButton:Landroid/widget/ImageButton;

.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field protected mDataAdapter:Lfast/dic/dict/adapters/PaymentMethodAdapter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mDecorator:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final methodsRv:Landroidx/recyclerview/widget/RecyclerView;

.field public final purchaseButton:Landroid/widget/Button;

.field public final restoreButton:Landroid/widget/Button;

.field public final toolbarTitle:Landroid/widget/TextView;

.field public final topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageButton;Lfast/dic/dict/views/CustomProgressbar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 59
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->actionButtonContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->backButton:Landroid/widget/ImageButton;

    .line 61
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 62
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->methodsRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 63
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->purchaseButton:Landroid/widget/Button;

    .line 64
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->restoreButton:Landroid/widget/Button;

    .line 65
    iput-object p10, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->toolbarTitle:Landroid/widget/TextView;

    .line 66
    iput-object p11, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->topToolbarContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;
    .locals 1

    .line 123
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    sget v0, Lfast/dic/dict/R$layout;->fragment_payment_method:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;
    .locals 1

    .line 105
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;
    .locals 1

    .line 86
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    sget v0, Lfast/dic/dict/R$layout;->fragment_payment_method:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    sget v0, Lfast/dic/dict/R$layout;->fragment_payment_method:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    return-object p0
.end method


# virtual methods
.method public getDataAdapter()Lfast/dic/dict/adapters/PaymentMethodAdapter;
    .locals 0

    .line 73
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->mDataAdapter:Lfast/dic/dict/adapters/PaymentMethodAdapter;

    return-object p0
.end method

.method public getDecorator()Ljava/lang/Boolean;
    .locals 0

    .line 80
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->mDecorator:Ljava/lang/Boolean;

    return-object p0
.end method

.method public abstract setDataAdapter(Lfast/dic/dict/adapters/PaymentMethodAdapter;)V
.end method

.method public abstract setDecorator(Ljava/lang/Boolean;)V
.end method
