.class public final synthetic Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/PaymentMethodFragment;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/PaymentMethodFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda3;->f$0:Lfast/dic/dict/PaymentMethodFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment$$ExternalSyntheticLambda3;->f$0:Lfast/dic/dict/PaymentMethodFragment;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lfast/dic/dict/models/PlanType;

    check-cast p4, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    invoke-static {p0, p1, p2, p3, p4}, Lfast/dic/dict/PaymentMethodFragment;->sendPurchaseTokenToServerListener$lambda$0(Lfast/dic/dict/PaymentMethodFragment;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
