.class public final Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData$Companion;
.super Ljava/lang/Object;
.source "PricingStickyHeaderUIData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;
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
        "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData$Companion;",
        "",
        "<init>",
        "()V",
        "sample",
        "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;",
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final sample()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;
    .locals 15

    .line 24
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    .line 25
    sget-object p0, Lfast/dic/dict/domain/entity/pricing/Plan;->Companion:Lfast/dic/dict/domain/entity/pricing/Plan$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/domain/entity/pricing/Plan$Companion;->sample()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v1

    .line 26
    sget-object p0, Lfast/dic/dict/domain/entity/pricing/Plan;->Companion:Lfast/dic/dict/domain/entity/pricing/Plan$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/domain/entity/pricing/Plan$Companion;->sample()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v2

    .line 28
    sget-object v4, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    .line 33
    sget v9, Lfast/dic/dict/R$color;->plan3:I

    .line 34
    sget v10, Lfast/dic/dict/R$drawable;->ic_ai_plan:I

    const/16 v13, 0xc00

    const/4 v14, 0x0

    .line 24
    const-string v3, "-"

    const-string v5, "-"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v14}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/domain/entity/pricing/Plan;Ljava/lang/String;Lfast/dic/dict/models/PlanType;Ljava/lang/String;ZZZIILjava/lang/String;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
