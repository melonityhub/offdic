.class public final Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;
.super Ljava/lang/Object;
.source "PaymentMethodFragment.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/PaymentMethodFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ValidationPurchaseResponseCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lfast/dic/dict/models/api/ValidateModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\u0008\u0086\u0004\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ(\u0010\u0014\u001a\u00020\u00152\u000e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00172\u000e\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0019H\u0016J \u0010\u001a\u001a\u00020\u00152\u000e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;",
        "Lretrofit2/Callback;",
        "Lfast/dic/dict/models/api/ValidateModel;",
        "finalContext",
        "Landroid/content/Context;",
        "consumeToken",
        "",
        "platform",
        "Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;",
        "productId",
        "planType",
        "Lfast/dic/dict/models/PlanType;",
        "<init>",
        "(Lfast/dic/dict/PaymentMethodFragment;Landroid/content/Context;Ljava/lang/String;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Ljava/lang/String;Lfast/dic/dict/models/PlanType;)V",
        "getPlatform",
        "()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;",
        "getProductId",
        "()Ljava/lang/String;",
        "getPlanType",
        "()Lfast/dic/dict/models/PlanType;",
        "onResponse",
        "",
        "call",
        "Lretrofit2/Call;",
        "response",
        "Lretrofit2/Response;",
        "onFailure",
        "t",
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


# instance fields
.field private final consumeToken:Ljava/lang/String;

.field private final finalContext:Landroid/content/Context;

.field private final planType:Lfast/dic/dict/models/PlanType;

.field private final platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

.field private final productId:Ljava/lang/String;

.field final synthetic this$0:Lfast/dic/dict/PaymentMethodFragment;


# direct methods
.method public constructor <init>(Lfast/dic/dict/PaymentMethodFragment;Landroid/content/Context;Ljava/lang/String;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Ljava/lang/String;Lfast/dic/dict/models/PlanType;)V
    .locals 1

    const-string v0, "finalContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-object p2, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->finalContext:Landroid/content/Context;

    .line 536
    iput-object p3, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->consumeToken:Ljava/lang/String;

    .line 537
    iput-object p4, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    .line 538
    iput-object p5, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->productId:Ljava/lang/String;

    .line 539
    iput-object p6, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->planType:Lfast/dic/dict/models/PlanType;

    return-void
.end method

.method public synthetic constructor <init>(Lfast/dic/dict/PaymentMethodFragment;Landroid/content/Context;Ljava/lang/String;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Ljava/lang/String;Lfast/dic/dict/models/PlanType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_2

    move-object p5, v0

    .line 535
    :cond_2
    invoke-direct/range {p0 .. p6}, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;-><init>(Lfast/dic/dict/PaymentMethodFragment;Landroid/content/Context;Ljava/lang/String;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Ljava/lang/String;Lfast/dic/dict/models/PlanType;)V

    return-void
.end method

.method static final onResponse$lambda$0(Lfast/dic/dict/PaymentMethodFragment;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 4

    .line 571
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getOnPaidSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string v1, "loadingSpinner"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v0, v3}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 573
    invoke-virtual {p0}, Lfast/dic/dict/PaymentMethodFragment;->dismiss()V

    .line 574
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getPlanType()Lfast/dic/dict/models/PlanType;
    .locals 0

    .line 539
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->planType:Lfast/dic/dict/models/PlanType;

    return-object p0
.end method

.method public final getPlatform()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;
    .locals 0

    .line 537
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    return-object p0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 0

    .line 538
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lfast/dic/dict/models/api/ValidateModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    iget-object v0, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ---> Payment screen onFailure. Error = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 618
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {p1}, Lfast/dic/dict/PaymentMethodFragment;->access$getPriceAndCurrency(Lfast/dic/dict/PaymentMethodFragment;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 619
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragment;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v2

    .line 620
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/models/PlanType;->name()Ljava/lang/String;

    move-result-object v3

    .line 623
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 624
    :goto_0
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->name()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    const-string/jumbo p1, "unknown"

    :cond_2
    move-object v7, p1

    .line 625
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v8, "server_error: "

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 626
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {p1}, Lfast/dic/dict/PaymentMethodFragment;->access$getBuildFlavor(Lfast/dic/dict/PaymentMethodFragment;)Ljava/lang/String;

    move-result-object v9

    .line 619
    invoke-virtual/range {v2 .. v9}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logPurchaseFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string p2, "loadingSpinner"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-wide/16 v2, 0x0

    const/4 p2, 0x1

    invoke-static {p1, v2, v3, p2, v0}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 630
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragment;->getOnPaidSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {p1}, Lfast/dic/dict/PaymentMethodFragment;->dismiss()V

    .line 633
    sget-object p1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->finalContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDAlertManger;->showServerHasProblemAlert(Landroid/content/Context;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lfast/dic/dict/models/api/ValidateModel;",
            ">;",
            "Lretrofit2/Response<",
            "Lfast/dic/dict/models/api/ValidateModel;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "call"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "response"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Payment screen ValidationPurchase onResponse"

    invoke-virtual {v1, v5, v4}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/models/api/ValidateModel;

    const-string/jumbo v4, "unknown"

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lfast/dic/dict/models/api/ValidateModel;->getSuccessful()Z

    move-result v1

    if-ne v1, v7, :cond_8

    .line 544
    sget-object v1, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    iget-object v8, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->finalContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Lfast/dic/dict/utils/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 545
    new-instance v11, Lfast/dic/dict/services/parse/FDPurchased;

    iget-object v8, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->finalContext:Landroid/content/Context;

    invoke-direct {v11, v8, v1}, Lfast/dic/dict/services/parse/FDPurchased;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 547
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v1

    iget-object v8, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    iget-object v9, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->consumeToken:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " --> ValidationPurchaseResponseCallback onResponse called! consumeToken = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    sget-object v8, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->GooglePlay:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    if-eq v1, v8, :cond_3

    .line 551
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v1}, Lfast/dic/dict/PaymentMethodFragment;->access$getPriceAndCurrency(Lfast/dic/dict/PaymentMethodFragment;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 552
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragment;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v12

    .line 553
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/models/PlanType;->name()Ljava/lang/String;

    move-result-object v13

    .line 556
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_0

    :cond_0
    move-object/from16 v16, v6

    .line 557
    :goto_0
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v17, v1

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v17, v4

    .line 558
    :goto_2
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->productId:Ljava/lang/String;

    .line 559
    iget-object v4, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v4}, Lfast/dic/dict/PaymentMethodFragment;->access$getBuildFlavor(Lfast/dic/dict/PaymentMethodFragment;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v18, v1

    .line 552
    invoke-virtual/range {v12 .. v19}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logPurchaseSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_3
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->consumeToken:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    sget-object v4, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->CafeBazaar:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    if-ne v1, v4, :cond_6

    .line 564
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragment;->getBazaarViewModel$app()Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;

    move-result-object v8

    .line 565
    iget-object v9, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->consumeToken:Ljava/lang/String;

    .line 566
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/models/api/ValidateModel;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lfast/dic/dict/models/api/ValidateModel;->getResult()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v10, v1

    goto :goto_4

    :cond_5
    :goto_3
    move-object v10, v5

    .line 568
    :goto_4
    iget-object v12, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->planType:Lfast/dic/dict/models/PlanType;

    .line 569
    iget-object v13, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->finalContext:Landroid/content/Context;

    .line 564
    invoke-virtual/range {v8 .. v13}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->consumeCafeBazaarProduct(Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/models/PlanType;Landroid/content/Context;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    .line 570
    iget-object v2, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v2}, Lfast/dic/dict/PaymentMethodFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    iget-object v0, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    new-instance v3, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/PaymentMethodFragment;)V

    new-instance v0, Lfast/dic/dict/PaymentMethodFragment$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v0, v3}, Lfast/dic/dict/PaymentMethodFragment$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    .line 577
    :cond_6
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->productId:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    sget-object v4, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->GooglePlay:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    if-ne v1, v4, :cond_7

    .line 578
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragment;->getGoogleViewModel()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object v1

    iget-object v0, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->productId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;->consumeGooglePlayProduct(Ljava/lang/String;)V

    return-void

    .line 583
    :cond_7
    invoke-virtual {v11}, Lfast/dic/dict/services/parse/FDPurchased;->PurchasedPlan1()V

    goto/16 :goto_9

    .line 586
    :cond_8
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v1}, Lfast/dic/dict/PaymentMethodFragment;->access$getPriceAndCurrency(Lfast/dic/dict/PaymentMethodFragment;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/lang/String;

    .line 587
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragment;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v9

    .line 588
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/models/PlanType;->name()Ljava/lang/String;

    move-result-object v10

    .line 591
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragment;->getArgs()Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragmentArgs;->getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_5

    :cond_9
    move-object v13, v6

    .line 592
    :goto_5
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->name()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    move-object v14, v1

    goto :goto_7

    :cond_b
    :goto_6
    move-object v14, v4

    .line 593
    :goto_7
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/models/api/ValidateModel;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lfast/dic/dict/models/api/ValidateModel;->getResult()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_c
    move-object v1, v6

    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "validation_failed: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 594
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-static {v1}, Lfast/dic/dict/PaymentMethodFragment;->access$getBuildFlavor(Lfast/dic/dict/PaymentMethodFragment;)Ljava/lang/String;

    move-result-object v16

    .line 587
    invoke-virtual/range {v9 .. v16}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logPurchaseFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_9
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    sget v4, Lfast/dic/dict/R$string;->error:I

    invoke-virtual {v1, v4}, Lfast/dic/dict/PaymentMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lfast/dic/dict/models/api/ValidateModel;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lfast/dic/dict/models/api/ValidateModel;->getSuccessful()Z

    move-result v8

    if-ne v8, v7, :cond_d

    .line 600
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    sget v8, Lfast/dic/dict/R$string;->thanks:I

    invoke-virtual {v1, v8}, Lfast/dic/dict/PaymentMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    :cond_d
    sget-object v8, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 604
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lfast/dic/dict/models/api/ValidateModel;

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Lfast/dic/dict/models/api/ValidateModel;->getResult()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_f

    :cond_e
    move-object v9, v5

    .line 605
    :cond_f
    iget-object v10, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    sget v11, Lfast/dic/dict/R$string;->close:I

    invoke-virtual {v10, v11}, Lfast/dic/dict/PaymentMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    iget-object v4, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->finalContext:Landroid/content/Context;

    .line 602
    invoke-virtual {v8, v1, v9, v10, v4}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOutForeCloseApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 608
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v4

    iget-object v8, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->platform:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfast/dic/dict/models/api/ValidateModel;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lfast/dic/dict/models/api/ValidateModel;->getResult()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_a

    :cond_10
    move-object v5, v2

    :cond_11
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " ---> title = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragment;->getOnPaidSuccess()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v1, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v1}, Lfast/dic/dict/PaymentMethodFragment;->getBinding()Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;

    move-result-object v1

    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentPaymentMethodBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string v2, "loadingSpinner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v7, v6}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 611
    iget-object v0, v0, Lfast/dic/dict/PaymentMethodFragment$ValidationPurchaseResponseCallback;->this$0:Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {v0}, Lfast/dic/dict/PaymentMethodFragment;->dismiss()V

    return-void
.end method
