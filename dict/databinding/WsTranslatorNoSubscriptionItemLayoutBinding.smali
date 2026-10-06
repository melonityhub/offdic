.class public abstract Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "WsTranslatorNoSubscriptionItemLayoutBinding.java"


# instance fields
.field public final backIconImageview:Landroid/widget/ImageView;

.field public final historyIconImageview:Landroid/widget/ImageView;

.field protected mModel:Lfast/dic/dict/models/database/ListModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mOnClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final translatorTextSubView:Landroid/widget/TextView;

.field public final translatorTextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 42
    iput-object p4, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->backIconImageview:Landroid/widget/ImageView;

    .line 43
    iput-object p5, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->historyIconImageview:Landroid/widget/ImageView;

    .line 44
    iput-object p6, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->translatorTextSubView:Landroid/widget/TextView;

    .line 45
    iput-object p7, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->translatorTextView:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;
    .locals 1

    .line 104
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    sget v0, Lfast/dic/dict/R$layout;->ws_translator_no_subscription_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;
    .locals 1

    .line 86
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;
    .locals 1

    .line 65
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    sget v0, Lfast/dic/dict/R$layout;->ws_translator_no_subscription_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    sget v0, Lfast/dic/dict/R$layout;->ws_translator_no_subscription_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lfast/dic/dict/models/database/ListModel;
    .locals 0

    .line 59
    iget-object p0, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->mModel:Lfast/dic/dict/models/database/ListModel;

    return-object p0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public abstract setModel(Lfast/dic/dict/models/database/ListModel;)V
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method
