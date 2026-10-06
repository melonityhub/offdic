.class final Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PricingExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;->getProductFromGooglePlay(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;"
    }
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "fast.dic.dict.presentation.pricing_screen.extension.PricingExtKt$getProductFromGooglePlay$1"
    f = "PricingExt.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $deliver:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Lfast/dic/dict/domain/billing/PurchaseListingDetails;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_getProductFromGooglePlay:Lfast/dic/dict/presentation/pricing_screen/PricingFragment;

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/domain/billing/PurchaseListingDetails;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lfast/dic/dict/presentation/pricing_screen/PricingFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->$deliver:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->$this_getProductFromGooglePlay:Lfast/dic/dict/presentation/pricing_screen/PricingFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lkotlin/Unit;
    .locals 3

    if-eqz p1, :cond_0

    .line 259
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Pricing] getGoogleProducts result size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FD-HTTP"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;

    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->$deliver:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->$this_getProductFromGooglePlay:Lfast/dic/dict/presentation/pricing_screen/PricingFragment;

    invoke-direct {v0, v1, p0, p2}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;-><init>(Lkotlin/jvm/functions/Function1;Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->invoke(Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 245
    iget v1, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->label:I

    if-nez v1, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Pricing] googlePlayState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FD-HTTP"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    instance-of p1, v0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 249
    check-cast v0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->getState()Z

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Pricing] Initialized state="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Initialized;->getState()Z

    move-result p1

    if-nez p1, :cond_0

    .line 251
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->$deliver:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 255
    :cond_0
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->$this_getProductFromGooglePlay:Lfast/dic/dict/presentation/pricing_screen/PricingFragment;

    invoke-static {p1}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;->getFlatProductIds(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)Ljava/util/ArrayList;

    move-result-object p1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[Pricing] fetching products: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->$this_getProductFromGooglePlay:Lfast/dic/dict/presentation/pricing_screen/PricingFragment;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object v0

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->$deliver:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, v1}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->getGoogleProducts(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    .line 264
    :cond_1
    instance-of p1, v0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;

    const-string v3, " msg="

    if-eqz p1, :cond_2

    .line 265
    check-cast v0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;->getErrorCode()I

    move-result p1

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$InitialError;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Pricing] InitialError code="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->$deliver:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 269
    :cond_2
    instance-of p1, v0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;

    if-eqz p1, :cond_3

    .line 270
    check-cast v0, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;->getErrorCode()I

    move-result p1

    invoke-virtual {v0}, Lfast/dic/dict/viewmodels/fragments/GooglePlayPaymentMethodState$Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Pricing] Error code="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;->$deliver:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 245
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
