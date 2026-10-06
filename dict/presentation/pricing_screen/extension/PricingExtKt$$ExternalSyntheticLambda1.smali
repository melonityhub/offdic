.class public final synthetic Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/pricing_screen/PricingFragment;

.field public final synthetic f$1:Lfast/dic/dict/models/PlanType;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/models/PlanType;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda1;->f$0:Lfast/dic/dict/presentation/pricing_screen/PricingFragment;

    iput-object p2, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda1;->f$1:Lfast/dic/dict/models/PlanType;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda1;->f$0:Lfast/dic/dict/presentation/pricing_screen/PricingFragment;

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda1;->f$1:Lfast/dic/dict/models/PlanType;

    check-cast p1, Lfast/dic/dict/models/PlanType;

    invoke-static {v0, p0, p1}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;->updateModelForFeatureTable$lambda$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/models/PlanType;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
