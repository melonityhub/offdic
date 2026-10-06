.class public final Lfast/dic/dict/bases/BaseFragment_MembersInjector;
.super Ljava/lang/Object;
.source "BaseFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/bases/BaseFragment;",
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


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->historyProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/bases/BaseFragment;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lfast/dic/dict/bases/BaseFragment_MembersInjector;

    invoke-direct {v0, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lfast/dic/dict/bases/BaseFragment;->history:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/bases/BaseFragment;)V
    .locals 0

    .line 35
    iget-object p0, p0, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->historyProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

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

    .line 11
    check-cast p1, Lfast/dic/dict/bases/BaseFragment;

    invoke-virtual {p0, p1}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectMembers(Lfast/dic/dict/bases/BaseFragment;)V

    return-void
.end method
