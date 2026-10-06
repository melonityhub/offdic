.class public final Lfast/dic/dict/utils/FDCloudWords;
.super Ljava/lang/Object;
.source "FDCloudWords.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDCloudWords.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDCloudWords.kt\nfast/dic/dict/utils/FDCloudWords\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n2068#2,2:111\n1#3:113\n*S KotlinDebug\n*F\n+ 1 FDCloudWords.kt\nfast/dic/dict/utils/FDCloudWords\n*L\n35#1:111,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u000cJ\u001e\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001a2\u0006\u0010\u001b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001dJ-\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001a2\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0!2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001dH\u0002\u00a2\u0006\u0002\u0010\"J\u0008\u0010#\u001a\u00020\u000cH\u0002J\u0016\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0\u001a2\u0006\u0010\u001b\u001a\u00020\u000cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R\u001a\u0010\u0014\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u000e\"\u0004\u0008\u0016\u0010\u0010\u00a8\u0006&"
    }
    d2 = {
        "Lfast/dic/dict/utils/FDCloudWords;",
        "",
        "history",
        "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
        "<init>",
        "(Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V",
        "Ljavax/inject/Inject;",
        "cachedWords",
        "Ljava/util/ArrayList;",
        "Lfast/dic/dict/models/CloudWordModel;",
        "Lkotlin/collections/ArrayList;",
        "min",
        "",
        "getMin",
        "()I",
        "setMin",
        "(I)V",
        "max",
        "getMax",
        "setMax",
        "offset",
        "getOffset",
        "setOffset",
        "getRandomNumber",
        "current",
        "get",
        "",
        "height",
        "enableHistory",
        "",
        "getWords",
        "",
        "defaultWords",
        "",
        "([Ljava/lang/String;Z)Ljava/util/List;",
        "generateRandomFontSize",
        "getPositions",
        "Lfast/dic/dict/models/PositionModel;",
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
.field private cachedWords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lfast/dic/dict/models/CloudWordModel;",
            ">;"
        }
    .end annotation
.end field

.field private final history:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

.field private max:I

.field private min:I

.field private offset:I


# direct methods
.method public constructor <init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "history"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lfast/dic/dict/utils/FDCloudWords;->history:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/utils/FDCloudWords;->cachedWords:Ljava/util/ArrayList;

    return-void
.end method

.method private final generateRandomFontSize()I
    .locals 2

    .line 73
    sget-object p0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    const/16 v0, 0xc

    const/16 v1, 0x1c

    invoke-virtual {p0, v0, v1}, Lkotlin/random/Random$Default;->nextInt(II)I

    move-result p0

    return p0
.end method

.method public static synthetic get$default(Lfast/dic/dict/utils/FDCloudWords;IZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/utils/FDCloudWords;->get(IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getPositions(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/PositionModel;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    int-to-double v3, p1

    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    div-double/2addr v3, v5

    .line 81
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 84
    iput p1, p0, Lfast/dic/dict/utils/FDCloudWords;->max:I

    const/16 v4, 0x1e

    .line 85
    iput v4, p0, Lfast/dic/dict/utils/FDCloudWords;->offset:I

    if-lez v3, :cond_3

    const/4 v4, 0x0

    .line 87
    invoke-static {v4, p1, v3}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result p1

    if-ltz p1, :cond_0

    move v5, v4

    .line 88
    :goto_0
    invoke-virtual {p0, v5}, Lfast/dic/dict/utils/FDCloudWords;->getRandomNumber(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0, v5}, Lfast/dic/dict/utils/FDCloudWords;->getRandomNumber(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v5, p1, :cond_0

    add-int/2addr v5, v3

    goto :goto_0

    .line 94
    :cond_0
    move-object p0, v0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 95
    move-object p0, v1

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ltz p0, :cond_2

    move p1, v4

    .line 99
    :goto_1
    new-instance v3, Lfast/dic/dict/models/PositionModel;

    invoke-direct {v3, v4, v4}, Lfast/dic/dict/models/PositionModel;-><init>(II)V

    .line 100
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p1, :cond_1

    .line 101
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "get(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lfast/dic/dict/models/PositionModel;->setX(I)V

    .line 102
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lfast/dic/dict/models/PositionModel;->setY(I)V

    .line 103
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eq p1, p0, :cond_2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 107
    :cond_2
    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-object v2

    .line 87
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Step must be positive, was: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getWords([Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x32

    if-eqz p2, :cond_0

    .line 54
    iget-object p0, p0, Lfast/dic/dict/utils/FDCloudWords;->history:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-virtual {p0, v1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getWords(I)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 58
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 59
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p0, v1, :cond_3

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    rsub-int/lit8 p0, p0, 0x31

    if-ltz p0, :cond_3

    const/4 p2, 0x0

    .line 64
    :goto_2
    aget-object v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq p2, p0, :cond_3

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 68
    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic getWords$default(Lfast/dic/dict/utils/FDCloudWords;[Ljava/lang/String;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 49
    invoke-static {}, Lfast/dic/dict/const/ConstKt;->getWORDS()[Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 48
    :cond_1
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/utils/FDCloudWords;->getWords([Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final get(IZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/CloudWordModel;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lfast/dic/dict/utils/FDCloudWords;->cachedWords:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object p0, p0, Lfast/dic/dict/utils/FDCloudWords;->cachedWords:Ljava/util/ArrayList;

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 31
    invoke-static {p0, v0, p2, v1, v0}, Lfast/dic/dict/utils/FDCloudWords;->getWords$default(Lfast/dic/dict/utils/FDCloudWords;[Ljava/lang/String;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    add-int/lit8 p1, p1, 0x64

    .line 32
    invoke-direct {p0, p1}, Lfast/dic/dict/utils/FDCloudWords;->getPositions(I)Ljava/util/List;

    move-result-object p1

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    check-cast p2, Ljava/lang/Iterable;

    .line 111
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lfast/dic/dict/utils/FDCloudWords;->generateRandomFontSize()I

    move-result v3

    int-to-float v3, v3

    .line 37
    new-instance v4, Lfast/dic/dict/models/CloudWordModel;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/models/PositionModel;

    invoke-direct {v4, v2, v3, v1}, Lfast/dic/dict/models/CloudWordModel;-><init>(Ljava/lang/String;FLfast/dic/dict/models/PositionModel;)V

    .line 39
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_0

    .line 42
    :cond_1
    iput-object v0, p0, Lfast/dic/dict/utils/FDCloudWords;->cachedWords:Ljava/util/ArrayList;

    .line 44
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final getMax()I
    .locals 0

    .line 16
    iget p0, p0, Lfast/dic/dict/utils/FDCloudWords;->max:I

    return p0
.end method

.method public final getMin()I
    .locals 0

    .line 15
    iget p0, p0, Lfast/dic/dict/utils/FDCloudWords;->min:I

    return p0
.end method

.method public final getOffset()I
    .locals 0

    .line 17
    iget p0, p0, Lfast/dic/dict/utils/FDCloudWords;->offset:I

    return p0
.end method

.method public final getRandomNumber(I)I
    .locals 4

    .line 20
    iget v0, p0, Lfast/dic/dict/utils/FDCloudWords;->offset:I

    sub-int v1, p1, v0

    .line 21
    iget v2, p0, Lfast/dic/dict/utils/FDCloudWords;->min:I

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr p1, v0

    .line 23
    iget p0, p0, Lfast/dic/dict/utils/FDCloudWords;->max:I

    if-le p1, p0, :cond_1

    move p1, p0

    .line 24
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    int-to-double p0, p1

    mul-double/2addr v2, p0

    double-to-int p0, v2

    add-int/2addr v1, p0

    return v1
.end method

.method public final setMax(I)V
    .locals 0

    .line 16
    iput p1, p0, Lfast/dic/dict/utils/FDCloudWords;->max:I

    return-void
.end method

.method public final setMin(I)V
    .locals 0

    .line 15
    iput p1, p0, Lfast/dic/dict/utils/FDCloudWords;->min:I

    return-void
.end method

.method public final setOffset(I)V
    .locals 0

    .line 17
    iput p1, p0, Lfast/dic/dict/utils/FDCloudWords;->offset:I

    return-void
.end method
