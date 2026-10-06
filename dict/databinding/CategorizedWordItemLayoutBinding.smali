.class public abstract Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CategorizedWordItemLayoutBinding.java"


# instance fields
.field protected mIsMeaningEnglish:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mIsWordEnglish:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mModel:Lfast/dic/dict/models/database/CategorizedWordDto;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final meaningTitle:Landroid/widget/TextView;

.field public final posContainer:Lcom/google/android/flexbox/FlexboxLayout;

.field public final wordTitle:Landroid/widget/TextView;

.field public final wordTitleContainer:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 46
    iput-object p4, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->meaningTitle:Landroid/widget/TextView;

    .line 47
    iput-object p5, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->posContainer:Lcom/google/android/flexbox/FlexboxLayout;

    .line 48
    iput-object p6, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->wordTitle:Landroid/widget/TextView;

    .line 49
    iput-object p7, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->wordTitleContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;
    .locals 1

    .line 113
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    sget v0, Lfast/dic/dict/R$layout;->categorized_word_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;
    .locals 1

    .line 95
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;
    .locals 1

    .line 76
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    sget v0, Lfast/dic/dict/R$layout;->categorized_word_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    sget v0, Lfast/dic/dict/R$layout;->categorized_word_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getIsMeaningEnglish()Ljava/lang/Boolean;
    .locals 0

    .line 63
    iget-object p0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->mIsMeaningEnglish:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getIsWordEnglish()Ljava/lang/Boolean;
    .locals 0

    .line 56
    iget-object p0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->mIsWordEnglish:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getModel()Lfast/dic/dict/models/database/CategorizedWordDto;
    .locals 0

    .line 70
    iget-object p0, p0, Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;->mModel:Lfast/dic/dict/models/database/CategorizedWordDto;

    return-object p0
.end method

.method public abstract setIsMeaningEnglish(Ljava/lang/Boolean;)V
.end method

.method public abstract setIsWordEnglish(Ljava/lang/Boolean;)V
.end method

.method public abstract setModel(Lfast/dic/dict/models/database/CategorizedWordDto;)V
.end method
