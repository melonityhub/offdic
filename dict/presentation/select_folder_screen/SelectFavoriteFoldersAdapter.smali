.class public final Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SelectFavoriteFoldersAdapter.kt"

# interfaces
.implements Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$DiffCallback;,
        Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$EditFavoriteFolderViewHolder;,
        Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;,
        Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFoldersViewType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lfast/dic/dict/models/database/FolderModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0004789:B\r\u0008\u0007\u001a\u0002\u0008\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0011J\u0006\u0010\'\u001a\u00020\u001bJ\u0006\u0010(\u001a\u00020\u001bJ\u0018\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0016J\u0018\u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u00020-H\u0016J\u0010\u00101\u001a\u00020-2\u0006\u00100\u001a\u00020-H\u0016J\u0018\u00102\u001a\u00020\u001b2\u0006\u00103\u001a\u00020-2\u0006\u00104\u001a\u00020-H\u0016J\u0010\u00105\u001a\u00020\u001b2\u0006\u00100\u001a\u00020-H\u0016J\u0010\u00106\u001a\u00020\u001b2\u0006\u00100\u001a\u00020-H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR \u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R7\u0010\u0016\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0002\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u001b0\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR&\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u001b0\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001d\"\u0004\u0008\"\u0010\u001fR&\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u001b0\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001d\"\u0004\u0008%\u0010\u001f\u00a8\u0006;"
    }
    d2 = {
        "Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lfast/dic/dict/models/database/FolderModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "editMode",
        "",
        "selectedId",
        "",
        "getSelectedId",
        "()Ljava/lang/String;",
        "setSelectedId",
        "(Ljava/lang/String;)V",
        "reorderedList",
        "",
        "getReorderedList",
        "()Ljava/util/List;",
        "setReorderedList",
        "(Ljava/util/List;)V",
        "onSelectedListener",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "model",
        "",
        "getOnSelectedListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnSelectedListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onEditListener",
        "getOnEditListener",
        "setOnEditListener",
        "onDeleteListener",
        "getOnDeleteListener",
        "setOnDeleteListener",
        "getNewReorderedList",
        "enableEditMode",
        "disableEditMode",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "getItemViewType",
        "onItemMove",
        "fromPosition",
        "toPosition",
        "onItemDismiss",
        "onSwiped",
        "FavoriteFolderViewHolder",
        "EditFavoriteFolderViewHolder",
        "DiffCallback",
        "FavoriteFoldersViewType",
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
.field private editMode:Z

.field private onDeleteListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/models/database/FolderModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onEditListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/models/database/FolderModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSelectedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/models/database/FolderModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private reorderedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/FolderModel;",
            ">;"
        }
    .end annotation
.end field

.field private selectedId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 18
    new-instance v0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$DiffCallback;

    invoke-direct {v0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 17
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 22
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    .line 23
    new-instance v0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->onSelectedListener:Lkotlin/jvm/functions/Function1;

    .line 24
    new-instance v0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->onEditListener:Lkotlin/jvm/functions/Function1;

    .line 25
    new-instance v0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->onDeleteListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method static final onDeleteListener$lambda$0(Lfast/dic/dict/models/database/FolderModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onEditListener$lambda$0(Lfast/dic/dict/models/database/FolderModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onSelectedListener$lambda$0(Lfast/dic/dict/models/database/FolderModel;)Lkotlin/Unit;
    .locals 0

    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final disableEditMode()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->editMode:Z

    return-void
.end method

.method public final enableEditMode()V
    .locals 1

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->editMode:Z

    .line 35
    invoke-virtual {p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 68
    iget-boolean p0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->editMode:Z

    if-eqz p0, :cond_0

    .line 69
    sget-object p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFoldersViewType;->EDIT_MODE:Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFoldersViewType;->getValue()I

    move-result p0

    return p0

    .line 72
    :cond_0
    sget-object p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFoldersViewType;->FAVORITE:Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFoldersViewType;->getValue()I

    move-result p0

    return p0
.end method

.method public final getNewReorderedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/FolderModel;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    return-object v0
.end method

.method public final getOnDeleteListener()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lfast/dic/dict/models/database/FolderModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->onDeleteListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnEditListener()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lfast/dic/dict/models/database/FolderModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->onEditListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnSelectedListener()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lfast/dic/dict/models/database/FolderModel;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->onSelectedListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getReorderedList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/FolderModel;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    return-object p0
.end method

.method public final getSelectedId()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->selectedId:Ljava/lang/String;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/models/database/FolderModel;

    .line 56
    instance-of v1, p1, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;

    if-eqz v1, :cond_0

    .line 57
    check-cast p1, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;->setBind(Lfast/dic/dict/models/database/FolderModel;)V

    .line 58
    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfast/dic/dict/models/database/FolderModel;

    invoke-virtual {p2}, Lfast/dic/dict/models/database/FolderModel;->getDocumentId()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->selectedId:Ljava/lang/String;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;->setSelected(Z)V

    return-void

    .line 60
    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$EditFavoriteFolderViewHolder;

    if-eqz v1, :cond_1

    .line 61
    check-cast p1, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$EditFavoriteFolderViewHolder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$EditFavoriteFolderViewHolder;->setBind(Lfast/dic/dict/models/database/FolderModel;)V

    .line 62
    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfast/dic/dict/models/database/FolderModel;

    invoke-virtual {p2}, Lfast/dic/dict/models/database/FolderModel;->getDocumentId()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->selectedId:Ljava/lang/String;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$EditFavoriteFolderViewHolder;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    sget-object v1, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFoldersViewType;->FAVORITE:Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFoldersViewType;->getValue()I

    move-result v1

    const-string v2, "inflate(...)"

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    .line 45
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance p2, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;-><init>(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 49
    :cond_0
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance p2, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$EditFavoriteFolderViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$EditFavoriteFolderViewHolder;-><init>(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2
.end method

.method public onItemDismiss(I)V
    .locals 0

    return-void
.end method

.method public onItemMove(II)V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->editMode:Z

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    .line 157
    :cond_1
    iget-object v0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 159
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onSwiped(I)V
    .locals 0

    return-void
.end method

.method public final setOnDeleteListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/models/database/FolderModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->onDeleteListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnEditListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/models/database/FolderModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->onEditListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnSelectedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/models/database/FolderModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->onSelectedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setReorderedList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/FolderModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    return-void
.end method

.method public final setSelectedId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;->selectedId:Ljava/lang/String;

    return-void
.end method
