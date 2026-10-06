.class public abstract Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "WodDirectoriesItemLayoutBinding.java"


# instance fields
.field public final directoryNameLabel:Landroid/widget/TextView;

.field public final ivIcon:Landroid/widget/ImageView;

.field protected mCount:Ljava/lang/Integer;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mIsPersianLanguage:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mOnClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final wordsCountLabel:Landroid/widget/TextView;

.field public final wordsCountLabelParent:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 45
    iput-object p4, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->directoryNameLabel:Landroid/widget/TextView;

    .line 46
    iput-object p5, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->ivIcon:Landroid/widget/ImageView;

    .line 47
    iput-object p6, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->wordsCountLabel:Landroid/widget/TextView;

    .line 48
    iput-object p7, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->wordsCountLabelParent:Lcom/google/android/material/card/MaterialCardView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;
    .locals 1

    .line 112
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    sget v0, Lfast/dic/dict/R$layout;->wod_directories_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;
    .locals 1

    .line 94
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;
    .locals 1

    .line 75
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    sget v0, Lfast/dic/dict/R$layout;->wod_directories_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    sget v0, Lfast/dic/dict/R$layout;->wod_directories_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getCount()Ljava/lang/Integer;
    .locals 0

    .line 62
    iget-object p0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->mCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public getIsPersianLanguage()Ljava/lang/Boolean;
    .locals 0

    .line 69
    iget-object p0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->mIsPersianLanguage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public abstract setCount(Ljava/lang/Integer;)V
.end method

.method public abstract setIsPersianLanguage(Ljava/lang/Boolean;)V
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method
