.class public final Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;
.super Lfast/dic/dict/presentation/profile_screen/ProfileUIState;
.source "ProfileViewModal.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/profile_screen/ProfileUIState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "User"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014H\u00d6\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0016H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;",
        "Lfast/dic/dict/presentation/profile_screen/ProfileUIState;",
        "parseObject",
        "Lcom/parse/ParseObject;",
        "fdPurchased",
        "Lfast/dic/dict/services/parse/FDPurchased;",
        "<init>",
        "(Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)V",
        "getParseObject",
        "()Lcom/parse/ParseObject;",
        "getFdPurchased",
        "()Lfast/dic/dict/services/parse/FDPurchased;",
        "component1",
        "component2",
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
.field private final fdPurchased:Lfast/dic/dict/services/parse/FDPurchased;

.field private final parseObject:Lcom/parse/ParseObject;


# direct methods
.method public constructor <init>(Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)V
    .locals 1

    const-string v0, "parseObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fdPurchased"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 245
    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->parseObject:Lcom/parse/ParseObject;

    iput-object p2, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->fdPurchased:Lfast/dic/dict/services/parse/FDPurchased;

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;ILjava/lang/Object;)Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->parseObject:Lcom/parse/ParseObject;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->fdPurchased:Lfast/dic/dict/services/parse/FDPurchased;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->copy(Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/parse/ParseObject;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->parseObject:Lcom/parse/ParseObject;

    return-object p0
.end method

.method public final component2()Lfast/dic/dict/services/parse/FDPurchased;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->fdPurchased:Lfast/dic/dict/services/parse/FDPurchased;

    return-object p0
.end method

.method public final copy(Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;
    .locals 0

    const-string p0, "parseObject"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fdPurchased"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;-><init>(Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;

    iget-object v1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->parseObject:Lcom/parse/ParseObject;

    iget-object v3, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->parseObject:Lcom/parse/ParseObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->fdPurchased:Lfast/dic/dict/services/parse/FDPurchased;

    iget-object p1, p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->fdPurchased:Lfast/dic/dict/services/parse/FDPurchased;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFdPurchased()Lfast/dic/dict/services/parse/FDPurchased;
    .locals 0

    .line 245
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->fdPurchased:Lfast/dic/dict/services/parse/FDPurchased;

    return-object p0
.end method

.method public final getParseObject()Lcom/parse/ParseObject;
    .locals 0

    .line 245
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->parseObject:Lcom/parse/ParseObject;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->parseObject:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->fdPurchased:Lfast/dic/dict/services/parse/FDPurchased;

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->parseObject:Lcom/parse/ParseObject;

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;->fdPurchased:Lfast/dic/dict/services/parse/FDPurchased;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "User(parseObject="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fdPurchased="

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
