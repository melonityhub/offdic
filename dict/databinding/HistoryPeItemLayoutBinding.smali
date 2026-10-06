.class public abstract Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "HistoryPeItemLayoutBinding.java"


# instance fields
.field public final historyIcon:Landroid/widget/ImageView;

.field protected mIsMeaningEnglish:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mIsWordEnglish:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mModel:Lfast/dic/dict/models/database/ListModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mOnClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final meaningTitle:Landroid/widget/TextView;

.field public final wordTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 44
    iput-object p4, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->historyIcon:Landroid/widget/ImageView;

    .line 45
    iput-object p5, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->meaningTitle:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->wordTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;
    .locals 1

    .line 117
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    sget v0, Lfast/dic/dict/R$layout;->history_pe_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;
    .locals 1

    .line 99
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;
    .locals 1

    .line 80
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    sget v0, Lfast/dic/dict/R$layout;->history_pe_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    sget v0, Lfast/dic/dict/R$layout;->history_pe_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getIsMeaningEnglish()Ljava/lang/Boolean;
    .locals 0

    .line 60
    iget-object p0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->mIsMeaningEnglish:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getIsWordEnglish()Ljava/lang/Boolean;
    .locals 0

    .line 53
    iget-object p0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->mIsWordEnglish:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getModel()Lfast/dic/dict/models/database/ListModel;
    .locals 0

    .line 74
    iget-object p0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->mModel:Lfast/dic/dict/models/database/ListModel;

    return-object p0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 67
    iget-object p0, p0, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public abstract setIsMeaningEnglish(Ljava/lang/Boolean;)V
.end method

.method public abstract setIsWordEnglish(Ljava/lang/Boolean;)V
.end method

.method public abstract setModel(Lfast/dic/dict/models/database/ListModel;)V
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method
