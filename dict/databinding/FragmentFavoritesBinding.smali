.class public abstract Lfast/dic/dict/databinding/FragmentFavoritesBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentFavoritesBinding.java"


# instance fields
.field public final addDirectoryFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

.field protected mAdapter:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mStateMessage:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mStateTitle:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final myWordsDirectoryView:Landroidx/recyclerview/widget/RecyclerView;

.field public final settingBtn:Landroid/widget/Button;

.field public final swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public final syncDateContainer:Landroid/widget/RelativeLayout;

.field public final syncDateTv:Landroid/widget/TextView;

.field public final syncIv:Landroid/widget/ImageView;

.field public final syncStateTv:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/floatingactionbutton/FloatingActionButton;Lfast/dic/dict/views/CustomProgressbar;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Button;Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 68
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->addDirectoryFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 69
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 70
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->myWordsDirectoryView:Landroidx/recyclerview/widget/RecyclerView;

    .line 71
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->settingBtn:Landroid/widget/Button;

    .line 72
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 73
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncDateContainer:Landroid/widget/RelativeLayout;

    .line 74
    iput-object p10, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncDateTv:Landroid/widget/TextView;

    .line 75
    iput-object p11, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncIv:Landroid/widget/ImageView;

    .line 76
    iput-object p12, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->syncStateTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentFavoritesBinding;
    .locals 1

    .line 140
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentFavoritesBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    sget v0, Lfast/dic/dict/R$layout;->fragment_favorites:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentFavoritesBinding;
    .locals 1

    .line 122
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentFavoritesBinding;
    .locals 1

    .line 103
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentFavoritesBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    sget v0, Lfast/dic/dict/R$layout;->fragment_favorites:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentFavoritesBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    sget v0, Lfast/dic/dict/R$layout;->fragment_favorites:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;

    return-object p0
.end method


# virtual methods
.method public getAdapter()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;
    .locals 0

    .line 97
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->mAdapter:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    return-object p0
.end method

.method public getStateMessage()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->mStateMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getStateTitle()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentFavoritesBinding;->mStateTitle:Ljava/lang/String;

    return-object p0
.end method

.method public abstract setAdapter(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;)V
.end method

.method public abstract setStateMessage(Ljava/lang/String;)V
.end method

.method public abstract setStateTitle(Ljava/lang/String;)V
.end method
