.class public final Lfast/dic/dict/presentation/common/SyncUIState;
.super Ljava/lang/Object;
.source "SyncUIState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\u0008\u0086\u0008\u0018\u00002\u00020\u0001B=\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00c6\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0012J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\nH\u00c6\u0003JD\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001cJ\u0014\u0010\u001d\u001a\u00020\u00032\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u001f\u001a\u00020\u0008H\u00d6\u0081\u0004J\n\u0010 \u001a\u00020\u0006H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006!"
    }
    d2 = {
        "Lfast/dic/dict/presentation/common/SyncUIState;",
        "",
        "loading",
        "",
        "isSuccess",
        "errorMessage",
        "",
        "errorCode",
        "",
        "syncDate",
        "Ljava/util/Date;",
        "<init>",
        "(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;)V",
        "getLoading",
        "()Z",
        "getErrorMessage",
        "()Ljava/lang/String;",
        "getErrorCode",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getSyncDate",
        "()Ljava/util/Date;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;)Lfast/dic/dict/presentation/common/SyncUIState;",
        "equals",
        "other",
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
.field private final errorCode:Ljava/lang/Integer;

.field private final errorMessage:Ljava/lang/String;

.field private final isSuccess:Z

.field private final loading:Z

.field private final syncDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lfast/dic/dict/presentation/common/SyncUIState;-><init>(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;)V
    .locals 1

    const-string v0, "errorMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lfast/dic/dict/presentation/common/SyncUIState;->loading:Z

    .line 7
    iput-boolean p2, p0, Lfast/dic/dict/presentation/common/SyncUIState;->isSuccess:Z

    .line 8
    iput-object p3, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorMessage:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorCode:Ljava/lang/Integer;

    .line 10
    iput-object p5, p0, Lfast/dic/dict/presentation/common/SyncUIState;->syncDate:Ljava/util/Date;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    .line 8
    const-string p3, ""

    :cond_2
    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p5, v0

    .line 5
    :cond_4
    invoke-direct/range {p0 .. p5}, Lfast/dic/dict/presentation/common/SyncUIState;-><init>(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/common/SyncUIState;ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;ILjava/lang/Object;)Lfast/dic/dict/presentation/common/SyncUIState;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lfast/dic/dict/presentation/common/SyncUIState;->loading:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lfast/dic/dict/presentation/common/SyncUIState;->isSuccess:Z

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorMessage:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorCode:Ljava/lang/Integer;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lfast/dic/dict/presentation/common/SyncUIState;->syncDate:Ljava/util/Date;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lfast/dic/dict/presentation/common/SyncUIState;->copy(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;)Lfast/dic/dict/presentation/common/SyncUIState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->loading:Z

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->isSuccess:Z

    return p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component5()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->syncDate:Ljava/util/Date;

    return-object p0
.end method

.method public final copy(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;)Lfast/dic/dict/presentation/common/SyncUIState;
    .locals 6

    const-string p0, "errorMessage"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lfast/dic/dict/presentation/common/SyncUIState;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/presentation/common/SyncUIState;-><init>(ZZLjava/lang/String;Ljava/lang/Integer;Ljava/util/Date;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/common/SyncUIState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/common/SyncUIState;

    iget-boolean v1, p0, Lfast/dic/dict/presentation/common/SyncUIState;->loading:Z

    iget-boolean v3, p1, Lfast/dic/dict/presentation/common/SyncUIState;->loading:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lfast/dic/dict/presentation/common/SyncUIState;->isSuccess:Z

    iget-boolean v3, p1, Lfast/dic/dict/presentation/common/SyncUIState;->isSuccess:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorMessage:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/presentation/common/SyncUIState;->errorMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorCode:Ljava/lang/Integer;

    iget-object v3, p1, Lfast/dic/dict/presentation/common/SyncUIState;->errorCode:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->syncDate:Ljava/util/Date;

    iget-object p1, p1, Lfast/dic/dict/presentation/common/SyncUIState;->syncDate:Ljava/util/Date;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getErrorCode()Ljava/lang/Integer;
    .locals 0

    .line 9
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorCode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final getLoading()Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->loading:Z

    return p0
.end method

.method public final getSyncDate()Ljava/util/Date;
    .locals 0

    .line 10
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->syncDate:Ljava/util/Date;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->loading:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lfast/dic/dict/presentation/common/SyncUIState;->isSuccess:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorCode:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->syncDate:Ljava/util/Date;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isSuccess()Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->isSuccess:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->loading:Z

    iget-boolean v1, p0, Lfast/dic/dict/presentation/common/SyncUIState;->isSuccess:Z

    iget-object v2, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorMessage:Ljava/lang/String;

    iget-object v3, p0, Lfast/dic/dict/presentation/common/SyncUIState;->errorCode:Ljava/lang/Integer;

    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncUIState;->syncDate:Ljava/util/Date;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SyncUIState(loading="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", isSuccess="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", syncDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
