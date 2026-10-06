.class public final synthetic Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/pricing_screen/PricingFragment;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda11;->f$0:Lfast/dic/dict/presentation/pricing_screen/PricingFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment$$ExternalSyntheticLambda11;->f$0:Lfast/dic/dict/presentation/pricing_screen/PricingFragment;

    check-cast p1, Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState;

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->fetchPriceFromServer$lambda$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/presentation/pricing_screen/PricingPlanViewModelState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
