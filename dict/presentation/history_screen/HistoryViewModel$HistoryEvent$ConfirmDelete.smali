.class public final Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;
.super Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;
.source "HistoryViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfirmDelete"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0083\u0004J\n\u0010\u0018\u001a\u00020\u0007H\u00d6\u0081\u0004J\n\u0010\u0019\u001a\u00020\u0005H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001a"
    }
    d2 = {
        "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;",
        "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;",
        "item",
        "Lfast/dic/dict/models/database/ListModel;",
        "documentId",
        "",
        "position",
        "",
        "<init>",
        "(Lfast/dic/dict/models/database/ListModel;Ljava/lang/String;I)V",
        "getItem",
        "()Lfast/dic/dict/models/database/ListModel;",
        "getDocumentId",
        "()Ljava/lang/String;",
        "getPosition",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
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
.field private final documentId:Ljava/lang/String;

.field private final item:Lfast/dic/dict/models/database/ListModel;

.field private final position:I


# direct methods
.method public constructor <init>(Lfast/dic/dict/models/database/ListModel;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->item:Lfast/dic/dict/models/database/ListModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->documentId:Ljava/lang/String;

    iput p3, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->position:I

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;Lfast/dic/dict/models/database/ListModel;Ljava/lang/String;IILjava/lang/Object;)Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->item:Lfast/dic/dict/models/database/ListModel;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->documentId:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->position:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->copy(Lfast/dic/dict/models/database/ListModel;Ljava/lang/String;I)Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lfast/dic/dict/models/database/ListModel;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->item:Lfast/dic/dict/models/database/ListModel;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->position:I

    return p0
.end method

.method public final copy(Lfast/dic/dict/models/database/ListModel;Ljava/lang/String;I)Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;
    .locals 0

    const-string p0, "item"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;

    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;-><init>(Lfast/dic/dict/models/database/ListModel;Ljava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;

    iget-object v1, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->item:Lfast/dic/dict/models/database/ListModel;

    iget-object v3, p1, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->item:Lfast/dic/dict/models/database/ListModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->documentId:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->documentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->position:I

    iget p1, p1, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->position:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getItem()Lfast/dic/dict/models/database/ListModel;
    .locals 0

    .line 41
    iget-object p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->item:Lfast/dic/dict/models/database/ListModel;

    return-object p0
.end method

.method public final getPosition()I
    .locals 0

    .line 41
    iget p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->position:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->item:Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->documentId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->position:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->item:Lfast/dic/dict/models/database/ListModel;

    iget-object v1, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->documentId:Ljava/lang/String;

    iget p0, p0, Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent$ConfirmDelete;->position:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConfirmDelete(item="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", documentId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
