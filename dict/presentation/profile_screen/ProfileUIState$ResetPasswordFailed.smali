.class public final Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;
.super Lfast/dic/dict/presentation/profile_screen/ProfileUIState;
.source "ProfileViewModal.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/profile_screen/ProfileUIState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResetPasswordFailed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ&\u0010\u000f\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0005H\u00d6\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;",
        "Lfast/dic/dict/presentation/profile_screen/ProfileUIState;",
        "message",
        "",
        "code",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "getCode",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Integer;)Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;",
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
.field private final code:Ljava/lang/Integer;

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    .line 243
    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->message:Ljava/lang/String;

    iput-object p2, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->code:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 243
    :cond_0
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->message:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->code:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->copy(Ljava/lang/String;Ljava/lang/Integer;)Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->code:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Integer;)Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;
    .locals 0

    new-instance p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;

    iget-object v1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->message:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->code:Ljava/lang/Integer;

    iget-object p1, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->code:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCode()Ljava/lang/Integer;
    .locals 0

    .line 243
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->code:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    .line 243
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->message:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->message:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->code:Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->message:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;->code:Ljava/lang/Integer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ResetPasswordFailed(message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

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
