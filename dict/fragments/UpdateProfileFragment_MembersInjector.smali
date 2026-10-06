.class public final Lfast/dic/dict/fragments/UpdateProfileFragment_MembersInjector;
.super Ljava/lang/Object;
.source "UpdateProfileFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/fragments/UpdateProfileFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final fdParseWrapperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/parse/FDParseWrapper;",
            ">;"
        }
    .end annotation
.end field

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
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/parse/FDParseWrapper;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lfast/dic/dict/fragments/UpdateProfileFragment_MembersInjector;->historyProvider:Ldagger/internal/Provider;

    .line 36
    iput-object p2, p0, Lfast/dic/dict/fragments/UpdateProfileFragment_MembersInjector;->fdParseWrapperProvider:Ldagger/internal/Provider;

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
            "Lfast/dic/dict/services/parse/FDParseWrapper;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/fragments/UpdateProfileFragment;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lfast/dic/dict/fragments/UpdateProfileFragment_MembersInjector;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/fragments/UpdateProfileFragment_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectFdParseWrapper(Lfast/dic/dict/fragments/UpdateProfileFragment;Lfast/dic/dict/services/parse/FDParseWrapper;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lfast/dic/dict/fragments/UpdateProfileFragment;->fdParseWrapper:Lfast/dic/dict/services/parse/FDParseWrapper;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/fragments/UpdateProfileFragment;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lfast/dic/dict/fragments/UpdateProfileFragment_MembersInjector;->historyProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 42
    iget-object p0, p0, Lfast/dic/dict/fragments/UpdateProfileFragment_MembersInjector;->fdParseWrapperProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/services/parse/FDParseWrapper;

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/UpdateProfileFragment_MembersInjector;->injectFdParseWrapper(Lfast/dic/dict/fragments/UpdateProfileFragment;Lfast/dic/dict/services/parse/FDParseWrapper;)V

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
    check-cast p1, Lfast/dic/dict/fragments/UpdateProfileFragment;

    invoke-virtual {p0, p1}, Lfast/dic/dict/fragments/UpdateProfileFragment_MembersInjector;->injectMembers(Lfast/dic/dict/fragments/UpdateProfileFragment;)V

    return-void
.end method
