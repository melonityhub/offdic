.class public final Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FavoriteFoldersAdapter.kt"

# interfaces
.implements Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EditFavoriteFolderViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u0008\u0010\u000b\u001a\u00020\u0008H\u0016J\u0008\u0010\u000c\u001a\u00020\u0008H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;)V",
        "setBind",
        "",
        "model",
        "Lfast/dic/dict/models/database/FolderModel;",
        "onItemSelected",
        "onItemClear",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final binding:Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;->this$0:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;->binding:Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

    .line 115
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;)V

    invoke-virtual {p2, v0}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->setOnDeleteClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;)V

    invoke-virtual {p2, v0}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->setOnEditClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;Landroid/view/View;)V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->getOnDeleteListener()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    iget-object p1, p1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;->binding:Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->getModel()Lfast/dic/dict/models/database/FolderModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static final _init_$lambda$1(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;Landroid/view/View;)V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->getOnEditListener()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    iget-object p1, p1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;->binding:Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->getModel()Lfast/dic/dict/models/database/FolderModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onItemClear()V
    .locals 1

    .line 131
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onItemSelected()V
    .locals 1

    .line 127
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;->itemView:Landroid/view/View;

    const v0, -0x333334

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final setBind(Lfast/dic/dict/models/database/FolderModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;->binding:Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->setModel(Lfast/dic/dict/models/database/FolderModel;)V

    return-void
.end method
