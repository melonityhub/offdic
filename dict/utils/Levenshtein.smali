.class public final Lfast/dic/dict/utils/Levenshtein;
.super Ljava/lang/Object;
.source "Levenshtein.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLevenshtein.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Levenshtein.kt\nfast/dic/dict/utils/Levenshtein\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,64:1\n1#2:65\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lfast/dic/dict/utils/Levenshtein;",
        "",
        "<init>",
        "()V",
        "getLevenshteinDistance",
        "",
        "s",
        "",
        "t",
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
.field public static final INSTANCE:Lfast/dic/dict/utils/Levenshtein;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfast/dic/dict/utils/Levenshtein;

    invoke-direct {v0}, Lfast/dic/dict/utils/Levenshtein;-><init>()V

    sput-object v0, Lfast/dic/dict/utils/Levenshtein;->INSTANCE:Lfast/dic/dict/utils/Levenshtein;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez v0, :cond_1

    return p0

    :cond_1
    if-le p0, v0, :cond_2

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    move v12, v0

    move v0, p0

    move p0, v12

    goto :goto_0

    :cond_2
    move-object v12, p2

    move-object p2, p1

    move-object p1, v12

    :goto_0
    add-int/lit8 v1, p0, 0x1

    .line 27
    new-array v2, v1, [I

    .line 28
    new-array v1, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-gt v4, p0, :cond_3

    .line 37
    aput v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    move v5, v4

    :goto_2
    if-gt v5, v0, :cond_6

    add-int/lit8 v6, v5, -0x1

    .line 42
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 43
    aput v5, v1, v3

    move v7, v4

    :goto_3
    if-gt v7, p0, :cond_5

    add-int/lit8 v8, v7, -0x1

    .line 46
    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    move v9, v4

    .line 48
    :goto_4
    aget v10, v1, v8

    add-int/2addr v10, v4

    aget v11, v2, v7

    add-int/2addr v11, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v8, v2, v8

    add-int/2addr v8, v9

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_2

    .line 61
    :cond_6
    aget p0, v2, p0

    return p0

    .line 11
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Strings must not be null"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
