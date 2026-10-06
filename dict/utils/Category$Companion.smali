.class public final Lfast/dic/dict/utils/Category$Companion;
.super Ljava/lang/Object;
.source "FDCategory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/utils/Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDCategory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDCategory.kt\nfast/dic/dict/utils/Category$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,162:1\n1401#2,2:163\n*S KotlinDebug\n*F\n+ 1 FDCategory.kt\nfast/dic/dict/utils/Category$Companion\n*L\n10#1:163,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\u0002J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nJ\u0011\u0010\u000b\u001a\u00020\u0005*\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/utils/Category$Companion;",
        "",
        "<init>",
        "()V",
        "invoke",
        "Lfast/dic/dict/utils/Category;",
        "rawValue",
        "",
        "convert",
        "name",
        "",
        "convertToCategory",
        "(Ljava/lang/Integer;)Lfast/dic/dict/utils/Category;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/utils/Category$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Ljava/lang/String;)Lfast/dic/dict/utils/Category;
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v0, "ROOT"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "English"

    invoke-virtual {v0, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lfast/dic/dict/utils/Category;->English:Lfast/dic/dict/utils/Category;

    return-object p0

    :cond_0
    sget-object p0, Lfast/dic/dict/utils/Category;->Persian:Lfast/dic/dict/utils/Category;

    return-object p0
.end method

.method public final convertToCategory(Ljava/lang/Integer;)Lfast/dic/dict/utils/Category;
    .locals 1

    .line 12
    sget-object p0, Lfast/dic/dict/utils/Category;->English:Lfast/dic/dict/utils/Category;

    invoke-virtual {p0}, Lfast/dic/dict/utils/Category;->getRawValue()I

    move-result p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p0, :cond_2

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lfast/dic/dict/utils/Category;->Persian:Lfast/dic/dict/utils/Category;

    return-object p0

    :cond_2
    :goto_1
    sget-object p0, Lfast/dic/dict/utils/Category;->English:Lfast/dic/dict/utils/Category;

    return-object p0
.end method

.method public final invoke(I)Lfast/dic/dict/utils/Category;
    .locals 4

    .line 10
    invoke-static {}, Lfast/dic/dict/utils/Category;->values()[Lfast/dic/dict/utils/Category;

    move-result-object p0

    .line 163
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 10
    invoke-virtual {v2}, Lfast/dic/dict/utils/Category;->getRawValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
