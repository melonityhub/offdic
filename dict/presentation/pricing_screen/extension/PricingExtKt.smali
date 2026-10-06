.class public final Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;
.super Ljava/lang/Object;
.source "PricingExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPricingExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PricingExt.kt\nfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,280:1\n78#2:281\n99#2,5:282\n*S KotlinDebug\n*F\n+ 1 PricingExt.kt\nfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt\n*L\n218#1:281\n218#1:282,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\"\u0010\u0003\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t\u001a\n\u0010\n\u001a\u00020\u0001*\u00020\u0002\u001a\u0018\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005\u001a\n\u0010\u000e\u001a\u00020\u0001*\u00020\u0002\u001aF\u0010\u000f\u001a>\u0012\u0004\u0012\u00020\u0007\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u00130\u0010j\u001e\u0012\u0004\u0012\u00020\u0007\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u0013`\u0014*\u00020\u0002\u001a\u001a\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0012`\u0013*\u00020\u0002\u001a&\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\u001a\u0010\u0017\u001a\u0016\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0019\u0012\u0004\u0012\u00020\u00010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "applyModelForFeatureTable",
        "",
        "Lfast/dic/dict/presentation/pricing_screen/PricingFragment;",
        "updateModelForFeatureTable",
        "pricingResponse",
        "Lfast/dic/dict/domain/entity/pricing/PricingResponse;",
        "type",
        "Lfast/dic/dict/models/PlanType;",
        "month",
        "",
        "handleScrollingFeatureStickyView",
        "flatFeatures",
        "",
        "Lfast/dic/dict/models/Feature;",
        "updateFeatureTableVisibleItems",
        "getProductIds",
        "Ljava/util/HashMap;",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "Lkotlin/collections/HashMap;",
        "getFlatProductIds",
        "getProductFromGooglePlay",
        "callback",
        "Lkotlin/Function1;",
        "",
        "Lfast/dic/dict/domain/billing/PurchaseListingDetails;",
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
.method public static final applyModelForFeatureTable(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object v0, v0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->containerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "containerView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lfast/dic/dict/utils/ViewExtKt;->hideMeNow(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    sget-object v1, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;->Companion:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData$Companion;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData$Companion;->sample()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;)V

    .line 38
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-virtual {p0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->getModel()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;)V

    return-void
.end method

.method public static final flatFeatures(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/domain/entity/pricing/PricingResponse;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/pricing_screen/PricingFragment;",
            "Lfast/dic/dict/domain/entity/pricing/PricingResponse;",
            ")",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/Feature;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pricingResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 176
    invoke-virtual {p1}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getTable()Lfast/dic/dict/domain/entity/pricing/Table;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/domain/entity/pricing/Table;->getOne()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    new-instance v2, Lfast/dic/dict/models/Feature;

    .line 179
    sget v1, Lfast/dic/dict/R$string;->pricing_feature_list_part_two_header:I

    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p0, "getString(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 182
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 178
    const-string v4, ""

    const/4 v5, 0x1

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-direct/range {v2 .. v9}, Lfast/dic/dict/models/Feature;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-virtual {p1}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getTable()Lfast/dic/dict/domain/entity/pricing/Table;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/domain/entity/pricing/Table;->getTwo()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static final getFlatProductIds(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/pricing_screen/PricingFragment;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-static {p0}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt;->getProductIds(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)Ljava/util/HashMap;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 282
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 218
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 284
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 286
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 281
    check-cast v1, Ljava/util/Collection;

    .line 217
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static final getProductFromGooglePlay(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/pricing_screen/PricingFragment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/domain/billing/PurchaseListingDetails;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isPlayStore()Z

    move-result v0

    const-string v1, "FD-HTTP"

    if-nez v0, :cond_0

    .line 225
    const-string p0, "[Pricing] getProductFromGooglePlay: not PlayStore, skip"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_0
    const-string v0, "[Pricing] getProductFromGooglePlay: starting Google Play connection"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 232
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$timeoutJob$1;

    const/4 v9, 0x0

    invoke-direct {v2, v0, p1, v9}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$timeoutJob$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v2

    .line 238
    new-instance v3, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v2, p1}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;)V

    .line 245
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->getGooglePlayState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;

    invoke-direct {v0, v3, p0, v9}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$getProductFromGooglePlay$1;-><init>(Lkotlin/jvm/functions/Function1;Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 276
    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    .line 278
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->initializeGooglePlayConnection()V

    return-void
.end method

.method static final getProductFromGooglePlay$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    .line 239
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 240
    invoke-static {p1, v0, p0, v0}, Lkotlinx/coroutines/Job;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 241
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final getProductIds(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/pricing_screen/PricingFragment;",
            ")",
            "Ljava/util/HashMap<",
            "Lfast/dic/dict/models/PlanType;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 210
    new-array v0, p0, [Lkotlin/Pair;

    sget-object v1, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "fastdic.1month.pro"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "fastdic.6months.pro"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "fastdic.1year.pro"

    aput-object v4, v3, p0

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v5

    .line 211
    sget-object v1, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "fastdic.1month.ai"

    aput-object v3, v2, v5

    const-string v3, "fastdic.6months.ai"

    aput-object v3, v2, v6

    const-string v3, "fastdic.1year.ai"

    aput-object v3, v2, p0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    aput-object p0, v0, v6

    .line 209
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final handleScrollingFeatureStickyView(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPricingBinding;->scrollview:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Landroidx/core/widget/NestedScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method static final handleScrollingFeatureStickyView$lambda$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V
    .locals 4

    const/4 v0, 0x2

    .line 152
    new-array v0, v0, [I

    .line 153
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object v1, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->containerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 155
    aget v2, v0, v1

    .line 158
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v3

    iget-object v3, v3, Lfast/dic/dict/databinding/FragmentPricingBinding;->scrollview:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v3, v0}, Landroidx/core/widget/NestedScrollView;->getLocationOnScreen([I)V

    .line 160
    aget v0, v0, v1

    sub-int/2addr v2, v0

    .line 166
    const-string v0, "containerView"

    if-gtz v2, :cond_0

    .line 167
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object p0, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->containerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lfast/dic/dict/utils/ViewExtKt;->showMeNow(Landroid/view/View;)V

    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object p0, p0, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->containerView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lfast/dic/dict/utils/ViewExtKt;->hideMeNow(Landroid/view/View;)V

    return-void
.end method

.method public static final updateFeatureTableVisibleItems(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v0

    iget-object v0, v0, Lfast/dic/dict/databinding/FragmentPricingBinding;->featuresRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 197
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 198
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-eq v0, v2, :cond_1

    if-gt v1, v0, :cond_1

    .line 203
    :goto_0
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v2

    iget-object v2, v2, Lfast/dic/dict/databinding/FragmentPricingBinding;->featuresRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final updateModelForFeatureTable(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/domain/entity/pricing/PricingResponse;Lfast/dic/dict/models/PlanType;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move/from16 v1, p3

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pricingResponse"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "type"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v3}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan2()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v2

    .line 48
    invoke-virtual {v5}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v4

    invoke-static {v4}, Lfast/dic/dict/presentation/pricing_screen/UtilKt;->getPlanColor(I)I

    move-result v10

    .line 49
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v4

    instance-of v6, v4, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v6, :cond_0

    check-cast v4, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 51
    :goto_0
    sget-object v6, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    const/4 v9, 0x1

    if-ne v5, v6, :cond_3

    .line 53
    invoke-virtual {v3}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan3()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/domain/entity/pricing/Plan;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {v3}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan3()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v6

    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {v4}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan3InView()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    if-eqz v4, :cond_2

    :goto_2
    move v4, v9

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    move-object v12, v11

    move v11, v4

    move-object v4, v2

    move-object v2, v6

    const/4 v6, 0x0

    goto/16 :goto_a

    .line 57
    :cond_3
    sget-object v6, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    if-ne v5, v6, :cond_6

    .line 59
    invoke-virtual {v3}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan2()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/domain/entity/pricing/Plan;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v3}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan2()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v6

    if-eqz v4, :cond_4

    .line 61
    invoke-virtual {v4}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan3InView()Z

    move-result v11

    if-ne v11, v9, :cond_4

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2InView()Z

    move-result v11

    if-ne v11, v9, :cond_5

    :goto_4
    move v11, v9

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v4, :cond_2

    goto :goto_2

    .line 64
    :cond_6
    sget v6, Lfast/dic/dict/R$string;->free_plan_title:I

    invoke-virtual {v0, v6}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v11, "getString(...)"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_7

    move v11, v9

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    if-eqz v4, :cond_8

    .line 66
    invoke-virtual {v4}, Lfast/dic/dict/services/parse/FDParseUser;->getEmailVerified()Z

    move-result v12

    if-eqz v12, :cond_8

    move v12, v9

    goto :goto_7

    :cond_8
    const/4 v12, 0x0

    :goto_7
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    if-eqz v4, :cond_9

    .line 67
    invoke-virtual {v4}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result v13

    if-ne v13, v9, :cond_9

    goto :goto_8

    :cond_9
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan1InView()Z

    move-result v4

    if-ne v4, v9, :cond_a

    :goto_8
    move v4, v9

    goto :goto_9

    :cond_a
    const/4 v4, 0x0

    :goto_9
    move-object/from16 v18, v6

    move v6, v4

    move-object/from16 v4, v18

    .line 70
    :goto_a
    const-string v13, ")"

    const-string v14, "("

    const/4 v15, 0x6

    if-eq v1, v9, :cond_c

    if-eq v1, v15, :cond_b

    .line 75
    sget v7, Lfast/dic/dict/R$string;->one_year_subscription_title:I

    invoke-virtual {v0, v7}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    .line 73
    :cond_b
    sget v7, Lfast/dic/dict/R$string;->six_months_subscription_title:I

    invoke-virtual {v0, v7}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    .line 71
    :cond_c
    sget v7, Lfast/dic/dict/R$string;->one_month_subscription_title:I

    invoke-virtual {v0, v7}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    :goto_b
    sget-object v8, Lfast/dic/dict/models/PlanType;->FREE:Lfast/dic/dict/models/PlanType;

    if-ne v5, v8, :cond_d

    .line 80
    const-string v2, "-"

    const-string v7, ""

    goto :goto_c

    :cond_d
    if-eq v1, v9, :cond_f

    if-eq v1, v15, :cond_e

    .line 87
    invoke-virtual {v2}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/domain/entity/pricing/Price;->get12()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 85
    :cond_e
    invoke-virtual {v2}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/domain/entity/pricing/Price;->get6()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 83
    :cond_f
    invoke-virtual {v2}, Lfast/dic/dict/domain/entity/pricing/Plan;->getPrice()Lfast/dic/dict/domain/entity/pricing/Price;

    move-result-object v2

    invoke-virtual {v2}, Lfast/dic/dict/domain/entity/pricing/Price;->get1()Ljava/lang/String;

    move-result-object v2

    .line 91
    :goto_c
    sget-object v8, Lfast/dic/dict/models/PlanType;->FREE:Lfast/dic/dict/models/PlanType;

    if-eq v5, v8, :cond_14

    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isPlayStore()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getViewModel()Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;

    move-result-object v8

    invoke-virtual {v8}, Lfast/dic/dict/presentation/pricing_screen/PricingViewModel;->isCurrentLanguagePersian()Z

    move-result v8

    if-nez v8, :cond_14

    if-eq v1, v9, :cond_11

    if-eq v1, v15, :cond_10

    .line 101
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getGooglePlayPrices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_12

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_d

    .line 98
    :cond_10
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getGooglePlayPrices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_12

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_d
    move-object/from16 v16, v1

    const/4 v8, 0x0

    goto :goto_e

    .line 95
    :cond_11
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getGooglePlayPrices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_12

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v16, v1

    goto :goto_e

    :cond_12
    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_e
    if-nez v16, :cond_13

    .line 104
    const-string v1, "Not Available"

    move-object v2, v1

    goto :goto_f

    :cond_13
    move-object/from16 v2, v16

    goto :goto_f

    :cond_14
    const/4 v8, 0x0

    .line 107
    :goto_f
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v1

    iget-object v14, v1, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    move/from16 v17, v8

    move v8, v6

    move-object v6, v2

    .line 108
    invoke-virtual {v3}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan3()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v2

    .line 109
    invoke-virtual {v3}, Lfast/dic/dict/domain/entity/pricing/PricingResponse;->getPlan2()Lfast/dic/dict/domain/entity/pricing/Plan;

    move-result-object v3

    if-eqz v12, :cond_15

    .line 113
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move/from16 v17, v1

    .line 117
    :cond_15
    invoke-virtual {v5}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v1

    invoke-static {v1}, Lfast/dic/dict/presentation/pricing_screen/UtilKt;->getPlanIcon(I)I

    move-result v1

    move v9, v11

    move v11, v1

    .line 107
    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    new-instance v13, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda1;

    invoke-direct {v13, v0, v5}, Lfast/dic/dict/presentation/pricing_screen/extension/PricingExtKt$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/models/PlanType;)V

    move-object v12, v7

    move/from16 v7, v17

    invoke-direct/range {v1 .. v13}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/domain/entity/pricing/Plan;Ljava/lang/String;Lfast/dic/dict/models/PlanType;Ljava/lang/String;ZZZIILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v14, v1}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;)V

    .line 123
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v2

    iget-object v2, v2, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    invoke-virtual {v2}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->getModel()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingStickyHeaderUIData;)V

    .line 126
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object v1, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 127
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 129
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 127
    invoke-virtual {v2, v10, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 126
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 132
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingStickyHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object v1, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 133
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v8, "requireContext(...)"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lfast/dic/dict/R$attr;->labelTextColor:I

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result v2

    .line 134
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v10, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 132
    invoke-virtual {v1, v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    .line 136
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object v1, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 137
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 139
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 137
    invoke-virtual {v2, v10, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 136
    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 142
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getBinding$app()Lfast/dic/dict/databinding/FragmentPricingBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentPricingBinding;->pricingHeaderLayout:Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;

    iget-object v1, v1, Lfast/dic/dict/databinding/PricingStickyHeaderLayoutBinding;->TabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 143
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lfast/dic/dict/R$attr;->labelTextColor:I

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result v2

    .line 144
    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 142
    invoke-virtual {v1, v2, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    return-void
.end method

.method static final updateModelForFeatureTable$lambda$0(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/models/PlanType;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->getSelectedMonth$app()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->handlePaymentMethods$app(Lfast/dic/dict/models/PlanType;I)V

    .line 120
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
