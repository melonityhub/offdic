.class public final Lfast/dic/dict/FDApplication_MembersInjector;
.super Ljava/lang/Object;
.source "FDApplication_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/FDApplication;",
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

.field private final firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
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
            "Lfast/dic/dict/services/parse/FDParseWrapper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfast/dic/dict/FDApplication_MembersInjector;->fdParseWrapperProvider:Ldagger/internal/Provider;

    .line 35
    iput-object p2, p0, Lfast/dic/dict/FDApplication_MembersInjector;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/parse/FDParseWrapper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/FDApplication;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lfast/dic/dict/FDApplication_MembersInjector;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/FDApplication_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectFdParseWrapper(Lfast/dic/dict/FDApplication;Lfast/dic/dict/services/parse/FDParseWrapper;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lfast/dic/dict/FDApplication;->fdParseWrapper:Lfast/dic/dict/services/parse/FDParseWrapper;

    return-void
.end method

.method public static injectFirebaseUserPropertiesManager(Lfast/dic/dict/FDApplication;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lfast/dic/dict/FDApplication;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/FDApplication;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lfast/dic/dict/FDApplication_MembersInjector;->fdParseWrapperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseWrapper;

    invoke-static {p1, v0}, Lfast/dic/dict/FDApplication_MembersInjector;->injectFdParseWrapper(Lfast/dic/dict/FDApplication;Lfast/dic/dict/services/parse/FDParseWrapper;)V

    .line 41
    iget-object p0, p0, Lfast/dic/dict/FDApplication_MembersInjector;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-static {p1, p0}, Lfast/dic/dict/FDApplication_MembersInjector;->injectFirebaseUserPropertiesManager(Lfast/dic/dict/FDApplication;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

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

    .line 12
    check-cast p1, Lfast/dic/dict/FDApplication;

    invoke-virtual {p0, p1}, Lfast/dic/dict/FDApplication_MembersInjector;->injectMembers(Lfast/dic/dict/FDApplication;)V

    return-void
.end method
