.class public final Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "FavoriteWordAdapter.kt"

# interfaces
.implements Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$Companion;,
        Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$EditModeViewHolder;,
        Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lfast/dic/dict/models/database/ListModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0003\u001f !B\r\u0008\u0007\u001a\u0002\u0008\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\nH\u0016J\u0018\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\nH\u0016J\u0010\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\nH\u0016J\u0018\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0016J\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\nH\u0016R.\u0010\u0008\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR.\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000f\u00a8\u0006\""
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lfast/dic/dict/models/database/ListModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "onDeletedAction",
        "Lkotlin/Function2;",
        "",
        "",
        "getOnDeletedAction",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnDeletedAction",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onSelectedAction",
        "getOnSelectedAction",
        "setOnSelectedAction",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "position",
        "onItemDismiss",
        "onItemMove",
        "fromPosition",
        "toPosition",
        "onSwiped",
        "EditModeViewHolder",
        "ViewHolder",
        "Companion",
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


# static fields
.field public static final Companion:Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$Companion;

.field private static final DiffCallback:Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$Companion$DiffCallback$1;


# instance fields
.field private onDeletedAction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/database/ListModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onSelectedAction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/database/ListModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->Companion:Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$Companion;

    .line 141
    new-instance v0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$Companion$DiffCallback$1;

    invoke-direct {v0}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$Companion$DiffCallback$1;-><init>()V

    sput-object v0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->DiffCallback:Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$Companion$DiffCallback$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 19
    sget-object v0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->DiffCallback:Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$Companion$DiffCallback$1;

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 18
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method


# virtual methods
.method public final getOnDeletedAction()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lfast/dic/dict/models/database/ListModel;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->onDeletedAction:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOnSelectedAction()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lfast/dic/dict/models/database/ListModel;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p1, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$EditModeViewHolder;

    const-string v1, "getItem(...)"

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$EditModeViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$EditModeViewHolder;->setBind(Lfast/dic/dict/models/database/ListModel;)V

    return-void

    .line 34
    :cond_0
    instance-of v0, p1, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;

    if-eqz v0, :cond_1

    .line 35
    check-cast p1, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;->setBind(Lfast/dic/dict/models/database/ListModel;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 27
    invoke-static {p2, p1, v0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance p2, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;-><init>(Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2
.end method

.method public onItemDismiss(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->notifyItemChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->onDeletedAction:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "get(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 48
    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onItemMove(II)V
    .locals 0

    return-void
.end method

.method public onSwiped(I)V
    .locals 0

    return-void
.end method

.method public final setOnDeletedAction(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/database/ListModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->onDeletedAction:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnSelectedAction(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/database/ListModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    return-void
.end method
