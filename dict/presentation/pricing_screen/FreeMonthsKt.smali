.class public final Lfast/dic/dict/presentation/pricing_screen/FreeMonthsKt;
.super Ljava/lang/Object;
.source "FreeMonths.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFreeMonths.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FreeMonths.kt\nfast/dic/dict/presentation/pricing_screen/FreeMonthsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,24:1\n1#2:25\n437#3:26\n513#3,5:27\n*S KotlinDebug\n*F\n+ 1 FreeMonths.kt\nfast/dic/dict/presentation/pricing_screen/FreeMonthsKt\n*L\n22#1:26\n22#1:27,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u001a)\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008\u001a\u0015\u0010\t\u001a\u0004\u0018\u00010\u0001*\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0002\u0010\n\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "PRICE_TIER_TOLERANCE",
        "",
        "calculateFreeMonths",
        "",
        "firstMonthPrice",
        "",
        "packagePrice",
        "months",
        "(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;",
        "toPriceDigits",
        "(Ljava/lang/String;)Ljava/lang/Double;",
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


# static fields
.field private static final PRICE_TIER_TOLERANCE:D = 0.2


# direct methods
.method public static final calculateFreeMonths(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 6

    .line 9
    invoke-static {p0}, Lfast/dic/dict/presentation/pricing_screen/FreeMonthsKt;->toPriceDigits(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 10
    invoke-static {p1}, Lfast/dic/dict/presentation/pricing_screen/FreeMonthsKt;->toPriceDigits(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    if-lez v5, :cond_1

    cmpg-double v3, p0, v3

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v3, p2

    div-double/2addr p0, v1

    sub-double/2addr v3, p0

    const-wide p0, 0x3fc999999999999aL    # 0.2

    add-double/2addr v3, p0

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 18
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-gt v1, p1, :cond_1

    if-ge p1, p2, :cond_1

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static final toPriceDigits(Ljava/lang/String;)Ljava/lang/Double;
    .locals 5

    .line 22
    invoke-static {p0}, Lcom/fastdic/android/modules/fdnumberstowords/utils/FDStringExtKt;->toEnglishNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 26
    check-cast p0, Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v0, Ljava/lang/Appendable;

    .line 27
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 28
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 22
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    invoke-interface {v0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_1
    check-cast v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 22
    invoke-static {p0}, Lkotlin/text/StringsKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
