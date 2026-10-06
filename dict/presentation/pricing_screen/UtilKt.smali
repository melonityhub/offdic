.class public final Lfast/dic/dict/presentation/pricing_screen/UtilKt;
.super Ljava/lang/Object;
.source "Util.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u000e\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "getPlanIcon",
        "",
        "selectedItem",
        "getPlanColor",
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


# direct methods
.method public static final getPlanColor(I)I
    .locals 1

    .line 10
    sget-object v0, Lfast/dic/dict/models/PlanType;->FREE:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v0}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget p0, Lfast/dic/dict/R$color;->plan0:I

    return p0

    :cond_0
    sget-object v0, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v0}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v0

    if-ne p0, v0, :cond_1

    sget p0, Lfast/dic/dict/R$color;->plan1:I

    return p0

    :cond_1
    sget-object v0, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v0}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v0

    if-ne p0, v0, :cond_2

    sget p0, Lfast/dic/dict/R$color;->plan2:I

    return p0

    :cond_2
    sget p0, Lfast/dic/dict/R$color;->plan3:I

    return p0
.end method

.method public static final getPlanIcon(I)I
    .locals 1

    .line 7
    sget-object v0, Lfast/dic/dict/models/PlanType;->FREE:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v0}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v0

    if-ne p0, v0, :cond_0

    sget p0, Lfast/dic/dict/R$drawable;->ic_free_plan:I

    return p0

    :cond_0
    sget-object v0, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v0}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v0

    if-ne p0, v0, :cond_1

    sget p0, Lfast/dic/dict/R$drawable;->ic_ads_plan:I

    return p0

    :cond_1
    sget-object v0, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v0}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v0

    if-ne p0, v0, :cond_2

    sget p0, Lfast/dic/dict/R$drawable;->ic_pro_plan:I

    return p0

    :cond_2
    sget p0, Lfast/dic/dict/R$drawable;->ic_ai_plan:I

    return p0
.end method
