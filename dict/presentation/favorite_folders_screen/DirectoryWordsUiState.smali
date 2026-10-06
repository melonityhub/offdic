.class public final Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;
.super Ljava/lang/Object;
.source "DirectoryWordsUiState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0006H\u00c6\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0014\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013H\u00d6\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0015H\u00d6\u0081\u0004R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;",
        "",
        "items",
        "",
        "Lfast/dic/dict/models/database/ListModel;",
        "isLoading",
        "",
        "<init>",
        "(Ljava/util/List;Z)V",
        "getItems",
        "()Ljava/util/List;",
        "()Z",
        "isEmpty",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
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
.field private final isLoading:Z

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;-><init>(Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->items:Ljava/util/List;

    .line 7
    iput-boolean p2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->isLoading:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;-><init>(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;Ljava/util/List;ZILjava/lang/Object;)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->items:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->isLoading:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->copy(Ljava/util/List;Z)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->items:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->isLoading:Z

    return p0
.end method

.method public final copy(Ljava/util/List;Z)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;Z)",
            "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;"
        }
    .end annotation

    const-string p0, "items"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;-><init>(Ljava/util/List;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;

    iget-object v1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->items:Ljava/util/List;

    iget-object v3, p1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->isLoading:Z

    iget-boolean p1, p1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->isLoading:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->items:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->items:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->isLoading:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 10
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final isLoading()Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->isLoading:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->items:Ljava/util/List;

    iget-boolean p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;->isLoading:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DirectoryWordsUiState(items="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
