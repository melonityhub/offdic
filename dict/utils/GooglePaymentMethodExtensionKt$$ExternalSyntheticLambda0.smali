.class public final synthetic Lfast/dic/dict/utils/GooglePaymentMethodExtensionKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/PaymentMethodFragment;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/PaymentMethodFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/utils/GooglePaymentMethodExtensionKt$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/PaymentMethodFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/utils/GooglePaymentMethodExtensionKt$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/PaymentMethodFragment;

    check-cast p1, Lfast/dic/dict/domain/billing/PurchasedItem;

    invoke-static {p0, p1}, Lfast/dic/dict/utils/GooglePaymentMethodExtensionKt;->restorePurchaseFromGooglePlay$lambda$0(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/domain/billing/PurchasedItem;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
