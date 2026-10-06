.class public final Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;
.super Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState;
.source "TextRecognitionTranslatorViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B+\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0008H\u00c6\u0003J3\u0010\u0013\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0083\u0004J\n\u0010\u0018\u001a\u00020\u0019H\u00d6\u0081\u0004J\n\u0010\u001a\u001a\u00020\u0004H\u00d6\u0081\u0004R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001b"
    }
    d2 = {
        "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;",
        "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState;",
        "translates",
        "",
        "",
        "blocks",
        "Lcom/google/mlkit/vision/text/Text$TextBlock;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Landroid/graphics/Bitmap;)V",
        "getTranslates",
        "()Ljava/util/List;",
        "getBlocks",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "component1",
        "component2",
        "component3",
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
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final translates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "translates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blocks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 85
    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->translates:Ljava/util/List;

    .line 86
    iput-object p2, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->blocks:Ljava/util/List;

    .line 87
    iput-object p3, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;Ljava/util/List;Ljava/util/List;Landroid/graphics/Bitmap;ILjava/lang/Object;)Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->translates:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->blocks:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->bitmap:Landroid/graphics/Bitmap;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->copy(Ljava/util/List;Ljava/util/List;Landroid/graphics/Bitmap;)Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;

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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->translates:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->blocks:Ljava/util/List;

    return-object p0
.end method

.method public final component3()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Landroid/graphics/Bitmap;)Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;"
        }
    .end annotation

    const-string/jumbo p0, "translates"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "blocks"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bitmap"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;

    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;-><init>(Ljava/util/List;Ljava/util/List;Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;

    iget-object v1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->translates:Ljava/util/List;

    iget-object v3, p1, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->translates:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->blocks:Ljava/util/List;

    iget-object v3, p1, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->blocks:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 87
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getBlocks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->blocks:Ljava/util/List;

    return-object p0
.end method

.method public final getTranslates()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->translates:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->translates:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->blocks:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->translates:Ljava/util/List;

    iget-object v1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->blocks:Ljava/util/List;

    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;->bitmap:Landroid/graphics/Bitmap;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data(translates="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", blocks="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitmap="

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
