.class public final Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;
.super Lfast/dic/dict/presentation/profile_screen/ProfileUIState;
.source "ProfileViewModal.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/profile_screen/ProfileUIState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000b\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0014\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fH\u00d6\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;",
        "Lfast/dic/dict/presentation/profile_screen/ProfileUIState;",
        "message",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getMessage",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 246
    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;->message:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;Ljava/lang/String;ILjava/lang/Object;)Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;->message:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;->copy(Ljava/lang/String;)Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;
    .locals 0

    new-instance p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;

    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;->message:Ljava/lang/String;

    iget-object p1, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;->message:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    .line 246
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;->message:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;->message:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;->message:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error(message="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
