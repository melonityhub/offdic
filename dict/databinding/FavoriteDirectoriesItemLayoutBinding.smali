.class public abstract Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FavoriteDirectoriesItemLayoutBinding.java"


# instance fields
.field public final directoryNameLabel:Landroid/widget/TextView;

.field protected mModel:Lfast/dic/dict/models/database/FolderModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mOnClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSelected:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final wordsCountLabel:Landroid/widget/TextView;

.field public final wordsCountLabelParent:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 42
    iput-object p4, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->directoryNameLabel:Landroid/widget/TextView;

    .line 43
    iput-object p5, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->wordsCountLabel:Landroid/widget/TextView;

    .line 44
    iput-object p6, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->wordsCountLabelParent:Lcom/google/android/material/card/MaterialCardView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;
    .locals 1

    .line 108
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 121
    sget v0, Lfast/dic/dict/R$layout;->favorite_directories_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;
    .locals 1

    .line 90
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;
    .locals 1

    .line 71
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    sget v0, Lfast/dic/dict/R$layout;->favorite_directories_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    sget v0, Lfast/dic/dict/R$layout;->favorite_directories_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lfast/dic/dict/models/database/FolderModel;
    .locals 0

    .line 65
    iget-object p0, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->mModel:Lfast/dic/dict/models/database/FolderModel;

    return-object p0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getSelected()Ljava/lang/Boolean;
    .locals 0

    .line 58
    iget-object p0, p0, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->mSelected:Ljava/lang/Boolean;

    return-object p0
.end method

.method public abstract setModel(Lfast/dic/dict/models/database/FolderModel;)V
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setSelected(Ljava/lang/Boolean;)V
.end method
