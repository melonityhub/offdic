.class public final Lfast/dic/dict/presentation/profile_screen/ProfileFragment_MembersInjector;
.super Ljava/lang/Object;
.source "ProfileFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/presentation/profile_screen/ProfileFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
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
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment_MembersInjector;->historyProvider:Ldagger/internal/Provider;

    .line 36
    iput-object p2, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment_MembersInjector;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

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
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/presentation/profile_screen/ProfileFragment;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment_MembersInjector;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectFirebaseUserPropertiesManager(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment_MembersInjector;->historyProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 42
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileFragment_MembersInjector;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment_MembersInjector;->injectFirebaseUserPropertiesManager(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

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
    check-cast p1, Lfast/dic/dict/presentation/profile_screen/ProfileFragment;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment_MembersInjector;->injectMembers(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V

    return-void
.end method
