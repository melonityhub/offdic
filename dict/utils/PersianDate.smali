.class public final Lfast/dic/dict/utils/PersianDate;
.super Ljava/lang/Object;
.source "PersianDate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0013\u0008\u0016\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0002\u0010\u0006B?\u0008\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0002\u0010\u000eJ\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J \u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00082\u0006\u0010!\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u0008H\u0002J\n\u0010#\u001a\u00020$H\u0096\u0080\u0004R\u001e\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u001e\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u001e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u001e\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u001e\u0010\r\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012\u00a8\u0006%"
    }
    d2 = {
        "Lfast/dic/dict/utils/PersianDate;",
        "",
        "<init>",
        "()V",
        "date",
        "Ljava/util/Date;",
        "(Ljava/util/Date;)V",
        "year",
        "",
        "month",
        "day",
        "hour",
        "minute",
        "second",
        "(IIIIII)V",
        "value",
        "shYear",
        "getShYear",
        "()I",
        "shMonth",
        "getShMonth",
        "shDay",
        "getShDay",
        "getHour",
        "getMinute",
        "getSecond",
        "initFromGregorian",
        "",
        "calendar",
        "Ljava/util/Calendar;",
        "gregorianToJalali",
        "",
        "gYear",
        "gMonth",
        "gDay",
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
.field private hour:I

.field private minute:I

.field private second:I

.field private shDay:I

.field private shMonth:I

.field private shYear:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lfast/dic/dict/utils/PersianDate;->initFromGregorian(Ljava/util/Calendar;)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lfast/dic/dict/utils/PersianDate;->shYear:I

    .line 48
    iput p2, p0, Lfast/dic/dict/utils/PersianDate;->shMonth:I

    .line 49
    iput p3, p0, Lfast/dic/dict/utils/PersianDate;->shDay:I

    .line 50
    iput p4, p0, Lfast/dic/dict/utils/PersianDate;->hour:I

    .line 51
    iput p5, p0, Lfast/dic/dict/utils/PersianDate;->minute:I

    .line 52
    iput p6, p0, Lfast/dic/dict/utils/PersianDate;->second:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p4, v0

    :cond_0
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1

    move p5, v0

    :cond_1
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2

    move p6, v0

    .line 46
    :cond_2
    invoke-direct/range {p0 .. p6}, Lfast/dic/dict/utils/PersianDate;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 40
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lfast/dic/dict/utils/PersianDate;->initFromGregorian(Ljava/util/Calendar;)V

    return-void
.end method

.method private final gregorianToJalali(III)[I
    .locals 2

    const/16 p0, 0xc

    .line 75
    new-array p0, p0, [I

    fill-array-data p0, :array_0

    mul-int/lit16 v0, p1, 0x16d

    const v1, 0x56d52

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    .line 77
    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x63

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    add-int/lit16 p1, p1, 0x18f

    .line 78
    div-int/lit16 p1, p1, 0x190

    add-int/2addr v0, p1

    add-int/2addr v0, p3

    add-int/lit8 p2, p2, -0x1

    aget p0, p0, p2

    add-int/2addr v0, p0

    .line 80
    div-int/lit16 p0, v0, 0x2f15

    mul-int/lit8 p0, p0, 0x21

    add-int/lit16 p0, p0, -0x63b

    .line 81
    rem-int/lit16 v0, v0, 0x2f15

    .line 83
    div-int/lit16 p1, v0, 0x5b5

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p0, p1

    .line 84
    rem-int/lit16 v0, v0, 0x5b5

    const/16 p1, 0x16d

    if-le v0, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 87
    div-int/lit16 p2, v0, 0x16d

    add-int/2addr p0, p2

    .line 88
    rem-int/2addr v0, p1

    :cond_0
    const/16 p1, 0xba

    if-ge v0, p1, :cond_1

    .line 95
    div-int/lit8 p1, v0, 0x1f

    add-int/lit8 p1, p1, 0x1

    .line 96
    rem-int/lit8 v0, v0, 0x1f

    goto :goto_0

    :cond_1
    sub-int/2addr v0, p1

    .line 98
    div-int/lit8 p1, v0, 0x1e

    add-int/lit8 p1, p1, 0x7

    .line 99
    rem-int/lit8 v0, v0, 0x1e

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 102
    filled-new-array {p0, p1, v0}, [I

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data
.end method

.method private final initFromGregorian(Ljava/util/Calendar;)V
    .locals 6

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    .line 57
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x5

    .line 58
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    .line 60
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lfast/dic/dict/utils/PersianDate;->hour:I

    const/16 v5, 0xc

    .line 61
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lfast/dic/dict/utils/PersianDate;->minute:I

    const/16 v5, 0xd

    .line 62
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lfast/dic/dict/utils/PersianDate;->second:I

    .line 64
    invoke-direct {p0, v1, v3, v4}, Lfast/dic/dict/utils/PersianDate;->gregorianToJalali(III)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 65
    aget v1, p1, v1

    iput v1, p0, Lfast/dic/dict/utils/PersianDate;->shYear:I

    .line 66
    aget v0, p1, v0

    iput v0, p0, Lfast/dic/dict/utils/PersianDate;->shMonth:I

    .line 67
    aget p1, p1, v2

    iput p1, p0, Lfast/dic/dict/utils/PersianDate;->shDay:I

    return-void
.end method


# virtual methods
.method public final getHour()I
    .locals 0

    .line 17
    iget p0, p0, Lfast/dic/dict/utils/PersianDate;->hour:I

    return p0
.end method

.method public final getMinute()I
    .locals 0

    .line 19
    iget p0, p0, Lfast/dic/dict/utils/PersianDate;->minute:I

    return p0
.end method

.method public final getSecond()I
    .locals 0

    .line 21
    iget p0, p0, Lfast/dic/dict/utils/PersianDate;->second:I

    return p0
.end method

.method public final getShDay()I
    .locals 0

    .line 15
    iget p0, p0, Lfast/dic/dict/utils/PersianDate;->shDay:I

    return p0
.end method

.method public final getShMonth()I
    .locals 0

    .line 13
    iget p0, p0, Lfast/dic/dict/utils/PersianDate;->shMonth:I

    return p0
.end method

.method public final getShYear()I
    .locals 0

    .line 11
    iget p0, p0, Lfast/dic/dict/utils/PersianDate;->shYear:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    iget v0, p0, Lfast/dic/dict/utils/PersianDate;->shYear:I

    iget v1, p0, Lfast/dic/dict/utils/PersianDate;->shMonth:I

    iget p0, p0, Lfast/dic/dict/utils/PersianDate;->shDay:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
