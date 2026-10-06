.class public abstract Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FavoriteWordItemLayoutBinding.java"


# instance fields
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

.field public final suggestionWordParent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final wordTitle:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 45
    iput-object p4, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->meaningTitle:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->suggestionWordParent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    iput-object p6, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->wordTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;
    .locals 1

    .line 118
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    sget v0, Lfast/dic/dict/R$layout;->favorite_word_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;
    .locals 1

    .line 100
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;
    .locals 1

    .line 81
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    sget v0, Lfast/dic/dict/R$layout;->favorite_word_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    sget v0, Lfast/dic/dict/R$layout;->favorite_word_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getIsMeaningEnglish()Ljava/lang/Boolean;
    .locals 0

    .line 61
    iget-object p0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->mIsMeaningEnglish:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getIsWordEnglish()Ljava/lang/Boolean;
    .locals 0

    .line 54
    iget-object p0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->mIsWordEnglish:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getModel()Lfast/dic/dict/models/database/ListModel;
    .locals 0

    .line 75
    iget-object p0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->mModel:Lfast/dic/dict/models/database/ListModel;

    return-object p0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 68
    iget-object p0, p0, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->mOnClickListener:Landroid/view/View$OnClickListener;

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
