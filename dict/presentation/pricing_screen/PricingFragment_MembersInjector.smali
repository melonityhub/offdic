.class public final Lfast/dic/dict/presentation/pricing_screen/PricingFragment_MembersInjector;
.super Ljava/lang/Object;
.source "PricingFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/presentation/pricing_screen/PricingFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final historyProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final planAdapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment_MembersInjector;->historyProvider:Ldagger/internal/Provider;

    .line 36
    iput-object p2, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment_MembersInjector;->planAdapterProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/presentation/pricing_screen/PricingFragment;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment_MembersInjector;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectPlanAdapter(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;->planAdapter:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment_MembersInjector;->historyProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 42
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragment_MembersInjector;->planAdapterProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment_MembersInjector;->injectPlanAdapter(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 13
    check-cast p1, Lfast/dic/dict/presentation/pricing_screen/PricingFragment;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment_MembersInjector;->injectMembers(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V

    return-void
.end method
