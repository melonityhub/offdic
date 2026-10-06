.class public final Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_Factory;
.super Ljava/lang/Object;
.source "EnterPasswordViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectivityHelperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
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
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_Factory;->connectivityHelperProvider:Ldagger/internal/Provider;

    .line 36
    iput-object p2, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_Factory;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)",
            "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_Factory;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;
    .locals 1

    .line 52
    new-instance v0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;-><init>(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;
    .locals 1

    .line 41
    iget-object v0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_Factory;->connectivityHelperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/FDConnectivityHelper;

    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_Factory;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-static {v0, p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_Factory;->newInstance(Lfast/dic/dict/helpers/FDConnectivityHelper;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel_Factory;->get()Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;

    move-result-object p0

    return-object p0
.end method
