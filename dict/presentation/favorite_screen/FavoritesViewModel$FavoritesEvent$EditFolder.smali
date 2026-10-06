.class public final Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;
.super Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;
.source "FavoritesViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditFolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fH\u00d6\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;",
        "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;",
        "folder",
        "Lfast/dic/dict/models/database/FolderModel;",
        "<init>",
        "(Lfast/dic/dict/models/database/FolderModel;)V",
        "getFolder",
        "()Lfast/dic/dict/models/database/FolderModel;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final folder:Lfast/dic/dict/models/database/FolderModel;


# direct methods
.method public constructor <init>(Lfast/dic/dict/models/database/FolderModel;)V
    .locals 1

    const-string v0, "folder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;->folder:Lfast/dic/dict/models/database/FolderModel;

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;Lfast/dic/dict/models/database/FolderModel;ILjava/lang/Object;)Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;->folder:Lfast/dic/dict/models/database/FolderModel;

    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;->copy(Lfast/dic/dict/models/database/FolderModel;)Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lfast/dic/dict/models/database/FolderModel;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;->folder:Lfast/dic/dict/models/database/FolderModel;

    return-object p0
.end method

.method public final copy(Lfast/dic/dict/models/database/FolderModel;)Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;
    .locals 0

    const-string p0, "folder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;

    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;-><init>(Lfast/dic/dict/models/database/FolderModel;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;->folder:Lfast/dic/dict/models/database/FolderModel;

    iget-object p1, p1, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;->folder:Lfast/dic/dict/models/database/FolderModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getFolder()Lfast/dic/dict/models/database/FolderModel;
    .locals 0

    .line 36
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;->folder:Lfast/dic/dict/models/database/FolderModel;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;->folder:Lfast/dic/dict/models/database/FolderModel;

    invoke-virtual {p0}, Lfast/dic/dict/models/database/FolderModel;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent$EditFolder;->folder:Lfast/dic/dict/models/database/FolderModel;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EditFolder(folder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
