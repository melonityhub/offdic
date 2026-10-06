.class public final Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;
.super Lfast/dic/dict/activities/MainViewModel$MigrationUiState;
.source "MainViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/activities/MainViewModel$MigrationUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Show"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0083\u0004J\n\u0010\u000e\u001a\u00020\u0003H\u00d6\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;",
        "Lfast/dic/dict/activities/MainViewModel$MigrationUiState;",
        "messageResId",
        "",
        "<init>",
        "(I)V",
        "getMessageResId",
        "()I",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field private final messageResId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 347
    invoke-direct {p0, v0}, Lfast/dic/dict/activities/MainViewModel$MigrationUiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;->messageResId:I

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;IILjava/lang/Object;)Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;->messageResId:I

    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;->copy(I)Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;->messageResId:I

    return p0
.end method

.method public final copy(I)Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;
    .locals 0

    new-instance p0, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;

    invoke-direct {p0, p1}, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;-><init>(I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;

    iget p0, p0, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;->messageResId:I

    iget p1, p1, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;->messageResId:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMessageResId()I
    .locals 0

    .line 347
    iget p0, p0, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;->messageResId:I

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;->messageResId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget p0, p0, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;->messageResId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Show(messageResId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
