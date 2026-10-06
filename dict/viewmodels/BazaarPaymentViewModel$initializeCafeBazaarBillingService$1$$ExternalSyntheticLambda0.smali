.class public final synthetic Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/MutableLiveData;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MutableLiveData;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/MutableLiveData;

    iput-object p2, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    check-cast p1, Lir/cafebazaar/poolakey/callback/ConnectionCallback;

    invoke-static {v0, p0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$initializeCafeBazaarBillingService$1;->invokeSuspend$lambda$0(Landroidx/lifecycle/MutableLiveData;Landroid/content/Context;Lir/cafebazaar/poolakey/callback/ConnectionCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
