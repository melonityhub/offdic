.class public final synthetic Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Lir/cafebazaar/poolakey/callback/GetSkuDetailsCallback;

    invoke-static {p0, p1}, Lfast/dic/dict/viewmodels/BazaarPaymentViewModel$getBazaarProducts$1;->invokeSuspend$lambda$0(Landroidx/lifecycle/MutableLiveData;Lir/cafebazaar/poolakey/callback/GetSkuDetailsCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
