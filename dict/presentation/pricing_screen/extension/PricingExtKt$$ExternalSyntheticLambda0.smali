.class public final synthetic Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Lkotlinx/coroutines/Job;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/Job;

    iput-object p3, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/Job;

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda0;->f$2:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p0, p1}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;->getProductFromGooglePlay$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
