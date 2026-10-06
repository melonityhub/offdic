.class public final synthetic Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/MutableLiveData;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda3;->f$0:Landroidx/lifecycle/MutableLiveData;

    iput-object p2, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda3;->f$0:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    check-cast p1, Lir/cafebazaar/poolakey/entity/PurchaseInfo;

    invoke-static {v0, p0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel;->$r8$lambda$ej9-tvgUQo0vmA_6o86QsDUB_fw(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;Lir/cafebazaar/poolakey/entity/PurchaseInfo;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
