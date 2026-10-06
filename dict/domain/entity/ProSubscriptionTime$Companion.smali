.class public final Lfast/dic/dict/domain/entity/ProSubscriptionTime$Companion;
.super Ljava/lang/Object;
.source "ProSubscriptionTime.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/domain/entity/ProSubscriptionTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProSubscriptionTime.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProSubscriptionTime.kt\nfast/dic/dict/domain/entity/ProSubscriptionTime$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,13:1\n296#2,2:14\n*S KotlinDebug\n*F\n+ 1 ProSubscriptionTime.kt\nfast/dic/dict/domain/entity/ProSubscriptionTime$Companion\n*L\n10#1:14,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lfast/dic/dict/domain/entity/ProSubscriptionTime$Companion;",
        "",
        "<init>",
        "()V",
        "getValue",
        "Lfast/dic/dict/domain/entity/ProSubscriptionTime;",
        "id",
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

    invoke-direct {p0}, Lfast/dic/dict/domain/entity/ProSubscriptionTime$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue(I)Lfast/dic/dict/domain/entity/ProSubscriptionTime;
    .locals 2

    .line 10
    invoke-static {}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 14
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    .line 10
    invoke-virtual {v1}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->getValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    check-cast v0, Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    return-object v0
.end method
