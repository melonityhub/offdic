.class public final Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "FavoriteFoldersAdapter.kt"

# interfaces
.implements Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$DiffCallback;,
        Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;,
        Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFolderViewHolder;,
        Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;,
        Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;,
        Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$WordCategoryFolderViewHolder;
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
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0006123456B\r\u0008\u0007\u001a\u0002\u0008\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00020\tJ\u0006\u0010!\u001a\u00020\u0015J\u0006\u0010\"\u001a\u00020\u0015J\u0018\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'H\u0016J\u0018\u0010(\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020\'H\u0016J\u0010\u0010+\u001a\u00020\'2\u0006\u0010*\u001a\u00020\'H\u0016J\u0018\u0010,\u001a\u00020\u00152\u0006\u0010-\u001a\u00020\'2\u0006\u0010.\u001a\u00020\'H\u0016J\u0010\u0010/\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\'H\u0016J\u0010\u00100\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\'H\u0016R \u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R5\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0012\u0012\u0008\u0008\u0013\u0012\u0004\u0008\u0008(\u0014\u0012\u0004\u0012\u00020\u00150\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R&\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00150\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017\"\u0004\u0008\u001c\u0010\u0019R&\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00150\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0017\"\u0004\u0008\u001f\u0010\u0019\u00a8\u00067"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lfast/dic/dict/models/database/FolderModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "reorderedList",
        "",
        "getReorderedList",
        "()Ljava/util/List;",
        "setReorderedList",
        "(Ljava/util/List;)V",
        "editMode",
        "",
        "onItemClickListener",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "model",
        "",
        "getOnItemClickListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnItemClickListener",
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
        "HistoryFolderViewHolder",
        "WordCategoryFolderViewHolder",
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

.field private onItemClickListener:Lkotlin/jvm/functions/Function1;
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


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 21
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$DiffCallback;

    invoke-direct {v0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    .line 26
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function1;

    .line 27
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->onEditListener:Lkotlin/jvm/functions/Function1;

    .line 28
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->onDeleteListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getEditMode$p(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->editMode:Z

    return p0
.end method

.method static final onDeleteListener$lambda$0(Lfast/dic/dict/models/database/FolderModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onEditListener$lambda$0(Lfast/dic/dict/models/database/FolderModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onItemClickListener$lambda$0(Lfast/dic/dict/models/database/FolderModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final disableEditMode()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->editMode:Z

    return-void
.end method

.method public final enableEditMode()V
    .locals 1

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->editMode:Z

    .line 37
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 87
    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/models/database/FolderModel;

    invoke-virtual {v0}, Lfast/dic/dict/models/database/FolderModel;->isHistory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    sget-object p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->HISTORY:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->getValue()I

    move-result p0

    return p0

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfast/dic/dict/models/database/FolderModel;

    invoke-virtual {p1}, Lfast/dic/dict/models/database/FolderModel;->isWordCategory()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    sget-object p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->WORD_CATEGORY:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->getValue()I

    move-result p0

    return p0

    .line 93
    :cond_1
    iget-boolean p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->editMode:Z

    if-eqz p0, :cond_2

    .line 94
    sget-object p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->EDIT_MODE:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->getValue()I

    move-result p0

    return p0

    .line 97
    :cond_2
    sget-object p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->FAVORITE:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->getValue()I

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

    .line 31
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

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

    .line 28
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->onDeleteListener:Lkotlin/jvm/functions/Function1;

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

    .line 27
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->onEditListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnItemClickListener()Lkotlin/jvm/functions/Function1;
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

    .line 26
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function1;

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

    .line 24
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/models/database/FolderModel;

    .line 66
    instance-of p2, p1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFolderViewHolder;

    if-eqz p2, :cond_0

    .line 67
    check-cast p1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFolderViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFolderViewHolder;->setBind(Lfast/dic/dict/models/database/FolderModel;)V

    return-void

    .line 70
    :cond_0
    instance-of p2, p1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;

    if-eqz p2, :cond_1

    .line 71
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lfast/dic/dict/R$string;->history_actionbar_title:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lfast/dic/dict/models/database/FolderModel;->setName(Ljava/lang/String;)V

    .line 72
    check-cast p1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;->setBind(Lfast/dic/dict/models/database/FolderModel;)V

    return-void

    .line 75
    :cond_1
    instance-of p2, p1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;

    if-eqz p2, :cond_2

    .line 76
    check-cast p1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;->setBind(Lfast/dic/dict/models/database/FolderModel;)V

    return-void

    .line 79
    :cond_2
    instance-of p2, p1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$WordCategoryFolderViewHolder;

    if-eqz p2, :cond_3

    .line 80
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lfast/dic/dict/R$string;->word_category_title:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lfast/dic/dict/models/database/FolderModel;->setName(Ljava/lang/String;)V

    .line 81
    check-cast p1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$WordCategoryFolderViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$WordCategoryFolderViewHolder;->setBind(Lfast/dic/dict/models/database/FolderModel;)V

    :cond_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    sget-object v1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->FAVORITE:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->getValue()I

    move-result v1

    const-string v2, "inflate(...)"

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    .line 47
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance p2, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFolderViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFolderViewHolder;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 50
    :cond_0
    sget-object v1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->EDIT_MODE:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 51
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance p2, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 54
    :cond_1
    sget-object v1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->HISTORY:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 55
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance p2, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 59
    :cond_2
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/WordCategoryDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WordCategoryDirectoriesItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance p2, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$WordCategoryFolderViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$WordCategoryFolderViewHolder;-><init>(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/databinding/WordCategoryDirectoriesItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2
.end method

.method public onItemDismiss(I)V
    .locals 0

    return-void
.end method

.method public onItemMove(II)V
    .locals 2

    .line 187
    iget-boolean v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->editMode:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    :cond_2
    if-ltz p1, :cond_3

    .line 194
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-ltz p2, :cond_3

    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 197
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->notifyItemMoved(II)V

    .line 198
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    invoke-static {p0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :cond_3
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

    .line 28
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->onDeleteListener:Lkotlin/jvm/functions/Function1;

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

    .line 27
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->onEditListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnItemClickListener(Lkotlin/jvm/functions/Function1;)V
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

    .line 26
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->onItemClickListener:Lkotlin/jvm/functions/Function1;

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

    .line 24
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;->reorderedList:Ljava/util/List;

    return-void
.end method
