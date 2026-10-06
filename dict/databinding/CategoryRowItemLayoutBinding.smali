.class public abstract Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CategoryRowItemLayoutBinding.java"


# instance fields
.field public final directoryNameLabel:Landroid/widget/TextView;

.field public final ivIcon:Landroid/widget/ImageView;

.field public final loadingSpinner:Landroid/widget/ProgressBar;

.field public final lockIv:Landroid/widget/ImageView;

.field protected mLocked:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mModel:Lfast/dic/dict/models/WordCategoryModel;
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
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 53
    iput-object p4, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->directoryNameLabel:Landroid/widget/TextView;

    .line 54
    iput-object p5, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->ivIcon:Landroid/widget/ImageView;

    .line 55
    iput-object p6, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 56
    iput-object p7, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->lockIv:Landroid/widget/ImageView;

    .line 57
    iput-object p8, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->wordsCountLabel:Landroid/widget/TextView;

    .line 58
    iput-object p9, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->wordsCountLabelParent:Lcom/google/android/material/card/MaterialCardView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;
    .locals 1

    .line 122
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    sget v0, Lfast/dic/dict/R$layout;->category_row_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;
    .locals 1

    .line 104
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;
    .locals 1

    .line 85
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    sget v0, Lfast/dic/dict/R$layout;->category_row_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    sget v0, Lfast/dic/dict/R$layout;->category_row_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getLocked()Ljava/lang/Boolean;
    .locals 0

    .line 79
    iget-object p0, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->mLocked:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getModel()Lfast/dic/dict/models/WordCategoryModel;
    .locals 0

    .line 72
    iget-object p0, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->mModel:Lfast/dic/dict/models/WordCategoryModel;

    return-object p0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lfast/dic/dict/databinding/CategoryRowItemLayoutBinding;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public abstract setLocked(Ljava/lang/Boolean;)V
.end method

.method public abstract setModel(Lfast/dic/dict/models/WordCategoryModel;)V
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method
