.class public final Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelectFavoriteFoldersAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FavoriteFolderViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;)V",
        "setBind",
        "",
        "model",
        "Lfast/dic/dict/models/database/FolderModel;",
        "setSelected",
        "state",
        "",
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
.field private final binding:Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;->this$0:Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;

    .line 76
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;->binding:Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    .line 79
    new-instance v0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;)V

    invoke-virtual {p2, v0}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;Landroid/view/View;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->getSelectedId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;->binding:Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    invoke-virtual {v0}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->getModel()Lfast/dic/dict/models/database/FolderModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfast/dic/dict/models/database/FolderModel;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 81
    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->setSelectedId(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->getOnSelectedListener()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 84
    :cond_1
    iget-object p2, p1, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;->binding:Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->getModel()Lfast/dic/dict/models/database/FolderModel;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lfast/dic/dict/models/database/FolderModel;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->setSelectedId(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->getOnSelectedListener()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    iget-object p1, p1, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;->binding:Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->getModel()Lfast/dic/dict/models/database/FolderModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :goto_1
    invoke-virtual {p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final setBind(Lfast/dic/dict/models/database/FolderModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;->binding:Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->setModel(Lfast/dic/dict/models/database/FolderModel;)V

    return-void
.end method

.method public final setSelected(Z)V
    .locals 0

    .line 96
    iget-object p0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;->binding:Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->setSelected(Ljava/lang/Boolean;)V

    return-void
.end method
