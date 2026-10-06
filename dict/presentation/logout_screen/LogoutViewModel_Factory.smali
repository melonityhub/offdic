.class public final Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_Factory;
.super Ljava/lang/Object;
.source "LogoutViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;",
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

.field private final localStorageProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
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
            "Lfast/dic/dict/database/LocalStorage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_Factory;->localStorageProvider:Ldagger/internal/Provider;

    .line 36
    iput-object p2, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_Factory;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)",
            "Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_Factory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_Factory;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;
    .locals 1

    .line 51
    new-instance v0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;-><init>(Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;
    .locals 1

    .line 41
    iget-object v0, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_Factory;->localStorageProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/database/LocalStorage;

    iget-object p0, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_Factory;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-static {v0, p0}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_Factory;->newInstance(Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel_Factory;->get()Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    move-result-object p0

    return-object p0
.end method
