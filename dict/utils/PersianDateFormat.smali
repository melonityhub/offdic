.class public final Lfast/dic/dict/utils/PersianDateFormat;
.super Ljava/lang/Object;
.source "PersianDate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/utils/PersianDateFormat$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/utils/PersianDateFormat;",
        "",
        "pattern",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "format",
        "persianDate",
        "Lfast/dic/dict/utils/PersianDate;",
        "Companion",
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


# static fields
.field public static final Companion:Lfast/dic/dict/utils/PersianDateFormat$Companion;

.field private static final MONTH_NAMES:[Ljava/lang/String;


# instance fields
.field private final pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lfast/dic/dict/utils/PersianDateFormat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/utils/PersianDateFormat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/utils/PersianDateFormat;->Companion:Lfast/dic/dict/utils/PersianDateFormat$Companion;

    const/16 v0, 0xc

    .line 125
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u0641\u0631\u0648\u0631\u062f\u06cc\u0646"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\u0627\u0631\u062f\u06cc\u0628\u0647\u0634\u062a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\u062e\u0631\u062f\u0627\u062f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 126
    const-string/jumbo v2, "\u062a\u06cc\u0631"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\u0645\u0631\u062f\u0627\u062f"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "\u0634\u0647\u0631\u06cc\u0648\u0631"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 127
    const-string/jumbo v2, "\u0645\u0647\u0631"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u0622\u0628\u0627\u0646"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u0622\u0630\u0631"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 128
    const-string/jumbo v2, "\u062f\u06cc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u0628\u0647\u0645\u0646"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u0627\u0633\u0641\u0646\u062f"

    aput-object v2, v0, v1

    .line 124
    sput-object v0, Lfast/dic/dict/utils/PersianDateFormat;->MONTH_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pattern"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/utils/PersianDateFormat;->pattern:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final format(Lfast/dic/dict/utils/PersianDate;)Ljava/lang/String;
    .locals 14

    const-string v0, "persianDate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lfast/dic/dict/utils/PersianDateFormat;->pattern:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Lfast/dic/dict/utils/PersianDate;->getShYear()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "Y"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 142
    sget-object p0, Lfast/dic/dict/utils/PersianDateFormat;->MONTH_NAMES:[Ljava/lang/String;

    invoke-virtual {p1}, Lfast/dic/dict/utils/PersianDate;->getShMonth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object v9, p0, v0

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "F"

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Lfast/dic/dict/utils/PersianDate;->getShDay()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/4 v6, 0x2

    const/16 v7, 0x30

    invoke-static {p0, v6, v7}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "d"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 148
    invoke-virtual {p1}, Lfast/dic/dict/utils/PersianDate;->getHour()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6, v7}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "H"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string/jumbo v0, "toCharArray(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 158
    aget-char v4, p0, v2

    const/16 v5, 0x6d

    if-ne v4, v5, :cond_2

    if-gtz v3, :cond_1

    if-lez v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    .line 160
    aget-char v4, p0, v4

    const/16 v5, 0x48

    if-eq v4, v5, :cond_1

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {p1}, Lfast/dic/dict/utils/PersianDate;->getShMonth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6, v7}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 163
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lfast/dic/dict/utils/PersianDate;->getMinute()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6, v7}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v3, 0x1

    .line 167
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move v3, v4

    goto :goto_3

    .line 169
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo p0, "toString(...)"

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lfast/dic/dict/utils/PersianDate;->getSecond()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6, v7}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "s"

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
