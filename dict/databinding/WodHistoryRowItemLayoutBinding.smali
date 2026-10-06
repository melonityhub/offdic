.class public abstract Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "WodHistoryRowItemLayoutBinding.java"


# instance fields
.field protected mDate:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mOnClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mWord:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final meaningTitle:Landroid/widget/TextView;

.field public final wordTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 36
    iput-object p4, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->meaningTitle:Landroid/widget/TextView;

    .line 37
    iput-object p5, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->wordTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;
    .locals 1

    .line 101
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    sget v0, Lfast/dic/dict/R$layout;->wod_history_row_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;
    .locals 1

    .line 83
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;
    .locals 1

    .line 64
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    sget v0, Lfast/dic/dict/R$layout;->wod_history_row_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    sget v0, Lfast/dic/dict/R$layout;->wod_history_row_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->mDate:Ljava/lang/String;

    return-object p0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getWord()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;->mWord:Ljava/lang/String;

    return-object p0
.end method

.method public abstract setDate(Ljava/lang/String;)V
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setWord(Ljava/lang/String;)V
.end method
