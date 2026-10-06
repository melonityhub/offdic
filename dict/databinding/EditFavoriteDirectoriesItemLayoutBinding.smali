.class public abstract Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "EditFavoriteDirectoriesItemLayoutBinding.java"


# instance fields
.field public final directoryNameLabel:Landroid/widget/TextView;

.field public final editIcon:Landroid/widget/ImageView;

.field protected mModel:Lfast/dic/dict/models/database/FolderModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mOnDeleteClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mOnEditClickListener:Landroid/view/View$OnClickListener;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSelected:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final removeIcon:Landroid/widget/ImageButton;

.field public final reorderImage:Landroid/widget/ImageView;

.field public final wordsCountLabel:Landroid/widget/TextView;

.field public final wordsCountLabelParent:Lcom/google/android/material/card/MaterialCardView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 56
    iput-object p4, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->directoryNameLabel:Landroid/widget/TextView;

    .line 57
    iput-object p5, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->editIcon:Landroid/widget/ImageView;

    .line 58
    iput-object p6, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->removeIcon:Landroid/widget/ImageButton;

    .line 59
    iput-object p7, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->reorderImage:Landroid/widget/ImageView;

    .line 60
    iput-object p8, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->wordsCountLabel:Landroid/widget/TextView;

    .line 61
    iput-object p9, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->wordsCountLabelParent:Lcom/google/android/material/card/MaterialCardView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;
    .locals 1

    .line 133
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    sget v0, Lfast/dic/dict/R$layout;->edit_favorite_directories_item_layout:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;
    .locals 1

    .line 115
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;
    .locals 1

    .line 96
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    sget v0, Lfast/dic/dict/R$layout;->edit_favorite_directories_item_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 129
    sget v0, Lfast/dic/dict/R$layout;->edit_favorite_directories_item_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

    return-object p0
.end method


# virtual methods
.method public getModel()Lfast/dic/dict/models/database/FolderModel;
    .locals 0

    .line 90
    iget-object p0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->mModel:Lfast/dic/dict/models/database/FolderModel;

    return-object p0
.end method

.method public getOnDeleteClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 69
    iget-object p0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->mOnDeleteClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getOnEditClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 76
    iget-object p0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->mOnEditClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getSelected()Ljava/lang/Boolean;
    .locals 0

    .line 83
    iget-object p0, p0, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->mSelected:Ljava/lang/Boolean;

    return-object p0
.end method

.method public abstract setModel(Lfast/dic/dict/models/database/FolderModel;)V
.end method

.method public abstract setOnDeleteClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnEditClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setSelected(Ljava/lang/Boolean;)V
.end method
