.class public final Lfast/dic/dict/data/sync/model/SyncSessionModel;
.super Ljava/lang/Object;
.source "SyncSessionModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001a\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\tH\u00c6\u0003J5\u0010\u001e\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0014\u0010\u001f\u001a\u00020\u00072\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010!\u001a\u00020\tH\u00d6\u0081\u0004J\n\u0010\"\u001a\u00020\u0003H\u00d6\u0081\u0004R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006#"
    }
    d2 = {
        "Lfast/dic/dict/data/sync/model/SyncSessionModel;",
        "",
        "session_id",
        "",
        "expires",
        "Ljava/util/Date;",
        "error",
        "",
        "errorCode",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/util/Date;ZI)V",
        "getSession_id",
        "()Ljava/lang/String;",
        "setSession_id",
        "(Ljava/lang/String;)V",
        "getExpires",
        "()Ljava/util/Date;",
        "setExpires",
        "(Ljava/util/Date;)V",
        "getError",
        "()Z",
        "setError",
        "(Z)V",
        "getErrorCode",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
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
.field private error:Z

.field private final errorCode:I

.field private expires:Ljava/util/Date;

.field private session_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/data/sync/model/SyncSessionModel;-><init>(Ljava/lang/String;Ljava/util/Date;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;ZI)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->session_id:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->expires:Ljava/util/Date;

    .line 7
    iput-boolean p3, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->error:Z

    .line 8
    iput p4, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->errorCode:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Date;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 4
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lfast/dic/dict/data/sync/model/SyncSessionModel;-><init>(Ljava/lang/String;Ljava/util/Date;ZI)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/data/sync/model/SyncSessionModel;Ljava/lang/String;Ljava/util/Date;ZIILjava/lang/Object;)Lfast/dic/dict/data/sync/model/SyncSessionModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->session_id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->expires:Ljava/util/Date;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->error:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->errorCode:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lfast/dic/dict/data/sync/model/SyncSessionModel;->copy(Ljava/lang/String;Ljava/util/Date;ZI)Lfast/dic/dict/data/sync/model/SyncSessionModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->session_id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->expires:Ljava/util/Date;

    return-object p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->error:Z

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->errorCode:I

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/Date;ZI)Lfast/dic/dict/data/sync/model/SyncSessionModel;
    .locals 0

    new-instance p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;

    invoke-direct {p0, p1, p2, p3, p4}, Lfast/dic/dict/data/sync/model/SyncSessionModel;-><init>(Ljava/lang/String;Ljava/util/Date;ZI)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/data/sync/model/SyncSessionModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/data/sync/model/SyncSessionModel;

    iget-object v1, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->session_id:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/data/sync/model/SyncSessionModel;->session_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->expires:Ljava/util/Date;

    iget-object v3, p1, Lfast/dic/dict/data/sync/model/SyncSessionModel;->expires:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->error:Z

    iget-boolean v3, p1, Lfast/dic/dict/data/sync/model/SyncSessionModel;->error:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->errorCode:I

    iget p1, p1, Lfast/dic/dict/data/sync/model/SyncSessionModel;->errorCode:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getError()Z
    .locals 0

    .line 7
    iget-boolean p0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->error:Z

    return p0
.end method

.method public final getErrorCode()I
    .locals 0

    .line 8
    iget p0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->errorCode:I

    return p0
.end method

.method public final getExpires()Ljava/util/Date;
    .locals 0

    .line 6
    iget-object p0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->expires:Ljava/util/Date;

    return-object p0
.end method

.method public final getSession_id()Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->session_id:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->session_id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->expires:Ljava/util/Date;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->error:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->errorCode:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setError(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->error:Z

    return-void
.end method

.method public final setExpires(Ljava/util/Date;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->expires:Ljava/util/Date;

    return-void
.end method

.method public final setSession_id(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->session_id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->session_id:Ljava/lang/String;

    iget-object v1, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->expires:Ljava/util/Date;

    iget-boolean v2, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->error:Z

    iget p0, p0, Lfast/dic/dict/data/sync/model/SyncSessionModel;->errorCode:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SyncSessionModel(session_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", expires="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode="

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
