.class public final Lfast/dic/dict/models/database/WordCategoryNameDto;
.super Ljava/lang/Object;
.source "CategoryNameModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J+\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0014\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u001a\u001a\u00020\u0003H\u00d6\u0081\u0004J\n\u0010\u001b\u001a\u00020\u0005H\u00d6\u0081\u0004R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lfast/dic/dict/models/database/WordCategoryNameDto;",
        "",
        "id",
        "",
        "persianCategoryName",
        "",
        "englishCategoryName",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;)V",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "getPersianCategoryName",
        "()Ljava/lang/String;",
        "setPersianCategoryName",
        "(Ljava/lang/String;)V",
        "getEnglishCategoryName",
        "setEnglishCategoryName",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
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
.field private englishCategoryName:Ljava/lang/String;

.field private id:I

.field private persianCategoryName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/models/database/WordCategoryNameDto;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->id:I

    .line 5
    iput-object p2, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->persianCategoryName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->englishCategoryName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 3
    const-string v0, ""

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/models/database/WordCategoryNameDto;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/models/database/WordCategoryNameDto;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lfast/dic/dict/models/database/WordCategoryNameDto;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->id:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->persianCategoryName:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->englishCategoryName:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/models/database/WordCategoryNameDto;->copy(ILjava/lang/String;Ljava/lang/String;)Lfast/dic/dict/models/database/WordCategoryNameDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->id:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->persianCategoryName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->englishCategoryName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;)Lfast/dic/dict/models/database/WordCategoryNameDto;
    .locals 0

    new-instance p0, Lfast/dic/dict/models/database/WordCategoryNameDto;

    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/models/database/WordCategoryNameDto;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/models/database/WordCategoryNameDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/models/database/WordCategoryNameDto;

    iget v1, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->id:I

    iget v3, p1, Lfast/dic/dict/models/database/WordCategoryNameDto;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->persianCategoryName:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/models/database/WordCategoryNameDto;->persianCategoryName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->englishCategoryName:Ljava/lang/String;

    iget-object p1, p1, Lfast/dic/dict/models/database/WordCategoryNameDto;->englishCategoryName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEnglishCategoryName()Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->englishCategoryName:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()I
    .locals 0

    .line 4
    iget p0, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->id:I

    return p0
.end method

.method public final getPersianCategoryName()Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->persianCategoryName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->persianCategoryName:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->englishCategoryName:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final setEnglishCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->englishCategoryName:Ljava/lang/String;

    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 4
    iput p1, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->id:I

    return-void
.end method

.method public final setPersianCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->persianCategoryName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->id:I

    iget-object v1, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->persianCategoryName:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/models/database/WordCategoryNameDto;->englishCategoryName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WordCategoryNameDto(id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", persianCategoryName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", englishCategoryName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
