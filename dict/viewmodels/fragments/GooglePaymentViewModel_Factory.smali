.class public final Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel_Factory;
.super Ljava/lang/Object;
.source "GooglePaymentViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final billingRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/data/billing/PlayBillingRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/data/billing/PlayBillingRepository;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel_Factory;->billingRepositoryProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/data/billing/PlayBillingRepository;",
            ">;)",
            "Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel_Factory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel_Factory;

    invoke-direct {v0, p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/data/billing/PlayBillingRepository;)Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;
    .locals 1

    .line 46
    new-instance v0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    invoke-direct {v0, p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;-><init>(Lfast/dic/dict/data/billing/PlayBillingRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;
    .locals 0

    .line 37
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel_Factory;->billingRepositoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/data/billing/PlayBillingRepository;

    invoke-static {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel_Factory;->newInstance(Lfast/dic/dict/data/billing/PlayBillingRepository;)Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel_Factory;->get()Lfast/dic/dict/viewmodels/fragments/GooglePaymentViewModel;

    move-result-object p0

    return-object p0
.end method
