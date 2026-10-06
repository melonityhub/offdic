.class public final Lfast/dic/dict/domain/entity/WordSortEnum$Companion;
.super Ljava/lang/Object;
.source "WordSortEnum.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/domain/entity/WordSortEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lfast/dic/dict/domain/entity/WordSortEnum$Companion;",
        "",
        "<init>",
        "()V",
        "fromValue",
        "Lfast/dic/dict/domain/entity/WordSortEnum;",
        "value",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/domain/entity/WordSortEnum$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromValue(I)Lfast/dic/dict/domain/entity/WordSortEnum;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    .line 15
    sget-object p0, Lfast/dic/dict/domain/entity/WordSortEnum;->NEWEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lfast/dic/dict/domain/entity/WordSortEnum;->ALPHABET:Lfast/dic/dict/domain/entity/WordSortEnum;

    return-object p0

    .line 13
    :cond_1
    sget-object p0, Lfast/dic/dict/domain/entity/WordSortEnum;->OLDEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    return-object p0

    .line 12
    :cond_2
    sget-object p0, Lfast/dic/dict/domain/entity/WordSortEnum;->NEWEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    return-object p0
.end method
