.class public abstract Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CategoryEllipsisRowItemLayoutBinding.java"


# instance fields
.field public final directoryNameLabel:Landroid/widget/TextView;

.field public final ivIcon:Landroid/widget/ImageView;

.field public final loadingSpinner:Landroid/widget/ProgressBar;

.field public final lockIv:Landroid/widget/ImageView;

.field protected mIsPersianLanguage:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

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

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 57
    iput-object p4, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->directoryNameLabel:Landroid/widget/TextView;

    .line 58
    iput-object p5, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->ivIcon:Landroid/widget/ImageView;

    .line 59
    iput-object p6, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 60
    iput-object p7, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->lockIv:Landroid/widget/ImageView;

    .line 61
    iput-object p8, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->wordsCountLabel:Landroid/widget/TextView;

    .line 62
    iput-object p9, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->wordsCountLabelParent:Lcom/google/android/material/card/MaterialCardView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;
    .locals 1

    .line 133
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    sget v0, Lfast/dic/dict/R$layout;->category_ellipsis_row_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;
    .locals 1

    .line 115
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;
    .locals 1

    .line 96
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    sget v0, Lfast/dic/dict/R$layout;->category_ellipsis_row_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    sget v0, Lfast/dic/dict/R$layout;->category_ellipsis_row_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getIsPersianLanguage()Ljava/lang/Boolean;
    .locals 0

    .line 90
    iget-object p0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->mIsPersianLanguage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getLocked()Ljava/lang/Boolean;
    .locals 0

    .line 83
    iget-object p0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->mLocked:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getModel()Lfast/dic/dict/models/WordCategoryModel;
    .locals 0

    .line 76
    iget-object p0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->mModel:Lfast/dic/dict/models/WordCategoryModel;

    return-object p0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 69
    iget-object p0, p0, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public abstract setIsPersianLanguage(Ljava/lang/Boolean;)V
.end method

.method public abstract setLocked(Ljava/lang/Boolean;)V
.end method

.method public abstract setModel(Lfast/dic/dict/models/WordCategoryModel;)V
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method
