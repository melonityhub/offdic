.class public final synthetic Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/models/PlanType;

.field public final synthetic f$1:Lfast/dic/dict/services/parse/FDPurchased;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/models/PlanType;Lfast/dic/dict/services/parse/FDPurchased;Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;->f$0:Lfast/dic/dict/models/PlanType;

    iput-object p2, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;->f$1:Lfast/dic/dict/services/parse/FDPurchased;

    iput-object p3, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;->f$4:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;->f$0:Lfast/dic/dict/models/PlanType;

    iget-object v1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;->f$1:Lfast/dic/dict/services/parse/FDPurchased;

    iget-object v2, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda8;->f$4:Landroidx/lifecycle/MutableLiveData;

    move-object v5, p1

    check-cast v5, Lir/cafebazaar/poolakey/callback/ConsumeCallback;

    invoke-static/range {v0 .. v5}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->consumeCafeBazaarProduct$lambda$0(Lfast/dic/dict/models/PlanType;Lfast/dic/dict/services/parse/FDPurchased;Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;Lir/cafebazaar/poolakey/callback/ConsumeCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
