.class public abstract Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SubscriptionsMoreRowLayoutBinding.java"


# instance fields
.field protected mModel:Lfast/dic/dict/adapters/MoreRowModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mOnSubscriptionClick:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;
    .locals 1

    .line 83
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    sget v0, Lfast/dic/dict/R$layout;->subscriptions_more_row_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;
    .locals 1

    .line 65
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;
    .locals 1

    .line 46
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    sget v0, Lfast/dic/dict/R$layout;->subscriptions_more_row_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    sget v0, Lfast/dic/dict/R$layout;->subscriptions_more_row_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lfast/dic/dict/adapters/MoreRowModel;
    .locals 0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;->mModel:Lfast/dic/dict/adapters/MoreRowModel;

    return-object p0
.end method

.method public getOnSubscriptionClick()Landroid/view/View$OnClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;->mOnSubscriptionClick:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public abstract setModel(Lfast/dic/dict/adapters/MoreRowModel;)V
.end method

.method public abstract setOnSubscriptionClick(Landroid/view/View$OnClickListener;)V
.end method
