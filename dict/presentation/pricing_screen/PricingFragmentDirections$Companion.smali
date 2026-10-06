.class public final Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$Companion;
.super Ljava/lang/Object;
.source "PricingFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u0007b\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$Companion;",
        "",
        "<init>",
        "()V",
        "actionNewPricingFragmentToPaymentMethodFragment",
        "Landroidx/navigation/NavDirections;",
        "plan",
        "Lfast/dic/dict/domain/entity/pricing/Plan;",
        "planType",
        "Lfast/dic/dict/models/PlanType;",
        "time",
        "Lfast/dic/dict/domain/entity/ProSubscriptionTime;",
        "Landroidx/annotation/CheckResult;",
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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$Companion;-><init>()V

    return-void
.end method

.method public static synthetic actionNewPricingFragmentToPaymentMethodFragment$default(Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$Companion;Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;ILjava/lang/Object;)Landroidx/navigation/NavDirections;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 53
    sget-object p2, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 54
    sget-object p3, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->ONE_YEAR:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    .line 51
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$Companion;->actionNewPricingFragmentToPaymentMethodFragment(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)Landroidx/navigation/NavDirections;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final actionNewPricingFragmentToPaymentMethodFragment(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)Landroidx/navigation/NavDirections;
    .locals 0

    const-string p0, "planType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "time"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;

    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V

    check-cast p0, Landroidx/navigation/NavDirections;

    return-object p0
.end method
