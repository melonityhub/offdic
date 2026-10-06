.class public final Lfast/dic/dict/models/database/EnglishAudiosModel;
.super Ljava/lang/Object;
.source "EnglishSearchResultModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0012\u0008\u0002\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u0012\u0012\u0008\u0002\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0013\u0010\u000e\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0013\u0010\u000f\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003H\u00c6\u0003J1\u0010\u0010\u001a\u00020\u00002\u0012\u0008\u0002\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00032\u0012\u0008\u0002\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0014\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0014\u001a\u00020\u0015H\u00d6\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0017H\u00d6\u0081\u0004R$\u0010\u0002\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u0005\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lfast/dic/dict/models/database/EnglishAudiosModel;",
        "",
        "american",
        "",
        "Lfast/dic/dict/models/database/EnglishAudioModel;",
        "british",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;)V",
        "getAmerican",
        "()Ljava/util/List;",
        "setAmerican",
        "(Ljava/util/List;)V",
        "getBritish",
        "setBritish",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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
.field private american:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishAudioModel;",
            ">;"
        }
    .end annotation
.end field

.field private british:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishAudioModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lfast/dic/dict/models/database/EnglishAudiosModel;-><init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishAudioModel;",
            ">;",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishAudioModel;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->american:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->british:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 43
    :cond_1
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/models/database/EnglishAudiosModel;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/models/database/EnglishAudiosModel;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lfast/dic/dict/models/database/EnglishAudiosModel;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->american:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->british:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/models/database/EnglishAudiosModel;->copy(Ljava/util/List;Ljava/util/List;)Lfast/dic/dict/models/database/EnglishAudiosModel;

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
            "Lfast/dic/dict/models/database/EnglishAudioModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->american:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishAudioModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->british:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;)Lfast/dic/dict/models/database/EnglishAudiosModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishAudioModel;",
            ">;",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishAudioModel;",
            ">;)",
            "Lfast/dic/dict/models/database/EnglishAudiosModel;"
        }
    .end annotation

    new-instance p0, Lfast/dic/dict/models/database/EnglishAudiosModel;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/models/database/EnglishAudiosModel;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/models/database/EnglishAudiosModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/models/database/EnglishAudiosModel;

    iget-object v1, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->american:Ljava/util/List;

    iget-object v3, p1, Lfast/dic/dict/models/database/EnglishAudiosModel;->american:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->british:Ljava/util/List;

    iget-object p1, p1, Lfast/dic/dict/models/database/EnglishAudiosModel;->british:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAmerican()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishAudioModel;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->american:Ljava/util/List;

    return-object p0
.end method

.method public final getBritish()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishAudioModel;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->british:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->american:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->british:Ljava/util/List;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAmerican(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishAudioModel;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->american:Ljava/util/List;

    return-void
.end method

.method public final setBritish(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishAudioModel;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->british:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->american:Ljava/util/List;

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishAudiosModel;->british:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EnglishAudiosModel(american="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", british="

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
