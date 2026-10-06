.class public final Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FavoriteFoldersAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HistoryFolderViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;)V",
        "setBind",
        "",
        "model",
        "Lfast/dic/dict/models/database/FolderModel;",
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
.field private final binding:Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;->this$0:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;->binding:Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;

    .line 138
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;)V

    invoke-virtual {p2, v0}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;Landroid/view/View;)V
    .locals 0

    .line 139
    invoke-static {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->access$getEditMode$p(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 140
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->getOnItemClickListener()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    iget-object p1, p1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;->binding:Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;->getModel()Lfast/dic/dict/models/database/FolderModel;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final setBind(Lfast/dic/dict/models/database/FolderModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;->binding:Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;->setModel(Lfast/dic/dict/models/database/FolderModel;)V

    return-void
.end method
