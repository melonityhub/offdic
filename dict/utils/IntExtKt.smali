.class public final Lfast/dic/dict/utils/IntExtKt;
.super Ljava/lang/Object;
.source "IntExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0002\u001a\u0013\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0002\u00a2\u0006\u0002\u0010\u0003\u001a\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0002\u00a2\u0006\u0002\u0010\u0003\u001a\u001c\u0010\u0005\u001a\u00020\u0002*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u001a\u0012\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000c\u001a\u0019\u0010\r\u001a\u00020\u0001*\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "getEnglishPos",
        "",
        "",
        "(Ljava/lang/Integer;)Ljava/lang/String;",
        "getPersianPos",
        "toDimensionUnit",
        "",
        "context",
        "Landroid/content/Context;",
        "unit",
        "getMonthName",
        "isPersian",
        "",
        "formatNumberWithSeparator",
        "",
        "symbol",
        "",
        "(Ljava/lang/Double;C)Ljava/lang/String;",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final formatNumberWithSeparator(Ljava/lang/Double;C)Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 57
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 61
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {p1, v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 64
    invoke-virtual {p1, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "format(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getEnglishPos(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    sget-object v0, Lfast/dic/dict/utils/FDWordPartOfSpeech;->INSTANCE:Lfast/dic/dict/utils/FDWordPartOfSpeech;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/utils/FDWordPartOfSpeech;->getEnglish(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getMonthName(IZ)Ljava/lang/String;
    .locals 16

    move/from16 v0, p0

    const/16 v1, 0xc

    .line 32
    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v3, "\u0641\u0631\u0648\u0631\u062f\u06cc\u0646"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "\u0627\u0631\u062f\u06cc\u0628\u0647\u0634\u062a"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string/jumbo v3, "\u062e\u0631\u062f\u0627\u062f"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string/jumbo v3, "\u062a\u06cc\u0631"

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string/jumbo v3, "\u0645\u0631\u062f\u0627\u062f"

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string/jumbo v3, "\u0634\u0647\u0631\u06cc\u0648\u0631"

    const/4 v9, 0x5

    aput-object v3, v2, v9

    .line 33
    const-string/jumbo v3, "\u0645\u0647\u0631"

    const/4 v10, 0x6

    aput-object v3, v2, v10

    const-string/jumbo v3, "\u0622\u0628\u0627\u0646"

    const/4 v11, 0x7

    aput-object v3, v2, v11

    const-string/jumbo v3, "\u0622\u0630\u0631"

    const/16 v12, 0x8

    aput-object v3, v2, v12

    const-string/jumbo v3, "\u062f\u06cc"

    const/16 v13, 0x9

    aput-object v3, v2, v13

    const-string/jumbo v3, "\u0628\u0647\u0645\u0646"

    const/16 v14, 0xa

    aput-object v3, v2, v14

    const-string/jumbo v3, "\u0627\u0633\u0641\u0646\u062f"

    const/16 v15, 0xb

    aput-object v3, v2, v15

    .line 31
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 37
    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "Farvardin"

    aput-object v3, v1, v4

    const-string v3, "Ordibehesht"

    aput-object v3, v1, v5

    const-string v3, "Khordad"

    aput-object v3, v1, v6

    const-string v3, "Tir"

    aput-object v3, v1, v7

    const-string v3, "Mordad"

    aput-object v3, v1, v8

    const-string v3, "Shahrivar"

    aput-object v3, v1, v9

    .line 38
    const-string v3, "Mehr"

    aput-object v3, v1, v10

    const-string v3, "Aban"

    aput-object v3, v1, v11

    const-string v3, "Azar"

    aput-object v3, v1, v12

    const-string v3, "Dey"

    aput-object v3, v1, v13

    const-string v3, "Bahman"

    aput-object v3, v1, v14

    const-string v3, "Esfand"

    aput-object v3, v1, v15

    .line 36
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 41
    const-string v3, "Invalid month number"

    const/16 v4, 0xd

    if-eqz p1, :cond_1

    if-gt v5, v0, :cond_0

    if-ge v0, v4, :cond_0

    sub-int/2addr v0, v5

    .line 43
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v3

    :cond_1
    if-gt v5, v0, :cond_2

    if-ge v0, v4, :cond_2

    sub-int/2addr v0, v5

    .line 48
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_2
    return-object v3
.end method

.method public static final getPersianPos(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    sget-object v0, Lfast/dic/dict/utils/FDWordPartOfSpeech;->INSTANCE:Lfast/dic/dict/utils/FDWordPartOfSpeech;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/utils/FDWordPartOfSpeech;->getPersian(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toDimensionUnit(FLandroid/content/Context;I)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "getResources(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 23
    invoke-static {p2, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static synthetic toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 21
    :cond_0
    invoke-static {p0, p1, p2}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit(FLandroid/content/Context;I)I

    move-result p0

    return p0
.end method
