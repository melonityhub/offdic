.class public abstract Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ResultOrderItemLayoutBinding.java"


# instance fields
.field public final directoryNameLabel:Landroid/widget/TextView;

.field protected mIndex:Ljava/lang/Integer;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mTitle:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final reorderImage:Landroid/widget/ImageView;

.field public final titleContainerCard:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Lcom/google/android/material/card/MaterialCardView;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 38
    iput-object p4, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->directoryNameLabel:Landroid/widget/TextView;

    .line 39
    iput-object p5, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->reorderImage:Landroid/widget/ImageView;

    .line 40
    iput-object p6, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->titleContainerCard:Lcom/google/android/material/card/MaterialCardView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;
    .locals 1

    .line 97
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    sget v0, Lfast/dic/dict/R$layout;->result_order_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;
    .locals 1

    .line 79
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;
    .locals 1

    .line 60
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    sget v0, Lfast/dic/dict/R$layout;->result_order_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    sget v0, Lfast/dic/dict/R$layout;->result_order_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getIndex()Ljava/lang/Integer;
    .locals 0

    .line 47
    iget-object p0, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->mIndex:Ljava/lang/Integer;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public abstract setIndex(Ljava/lang/Integer;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method
