.class public final Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment_MembersInjector;
.super Ljava/lang/Object;
.source "ResultOrderModalFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;",
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
            "Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment_MembersInjector;->adapterProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment_MembersInjector;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAdapter(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;->adapter:Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;)V
    .locals 0

    .line 34
    iget-object p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment_MembersInjector;->adapterProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;)V

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

    .line 10
    check-cast p1, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment_MembersInjector;->injectMembers(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;)V

    return-void
.end method
