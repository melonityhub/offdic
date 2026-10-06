.class public final Lfast/dic/dict/domain/entity/pricing/Price$Companion;
.super Ljava/lang/Object;
.source "Price.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/domain/entity/pricing/Price;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lfast/dic/dict/domain/entity/pricing/Price$Companion;",
        "",
        "<init>",
        "()V",
        "sample",
        "Lfast/dic/dict/domain/entity/pricing/Price;",
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/domain/entity/pricing/Price$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final sample()Lfast/dic/dict/domain/entity/pricing/Price;
    .locals 1

    .line 13
    new-instance p0, Lfast/dic/dict/domain/entity/pricing/Price;

    const-string v0, "-"

    invoke-direct {p0, v0, v0, v0}, Lfast/dic/dict/domain/entity/pricing/Price;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
