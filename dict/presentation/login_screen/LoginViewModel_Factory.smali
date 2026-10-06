.class public final Lfast/dic/dict/presentation/login_screen/LoginViewModel_Factory;
.super Ljava/lang/Object;
.source "LoginViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/presentation/login_screen/LoginViewModel;",
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


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginViewModel_Factory;->connectivityHelperProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lfast/dic/dict/presentation/login_screen/LoginViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
            ">;)",
            "Lfast/dic/dict/presentation/login_screen/LoginViewModel_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lfast/dic/dict/presentation/login_screen/LoginViewModel_Factory;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/login_screen/LoginViewModel_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/helpers/FDConnectivityHelper;)Lfast/dic/dict/presentation/login_screen/LoginViewModel;
    .locals 1

    .line 45
    new-instance v0, Lfast/dic/dict/presentation/login_screen/LoginViewModel;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/login_screen/LoginViewModel;-><init>(Lfast/dic/dict/helpers/FDConnectivityHelper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/presentation/login_screen/LoginViewModel;
    .locals 0

    .line 36
    iget-object p0, p0, Lfast/dic/dict/presentation/login_screen/LoginViewModel_Factory;->connectivityHelperProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/FDConnectivityHelper;

    invoke-static {p0}, Lfast/dic/dict/presentation/login_screen/LoginViewModel_Factory;->newInstance(Lfast/dic/dict/helpers/FDConnectivityHelper;)Lfast/dic/dict/presentation/login_screen/LoginViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lfast/dic/dict/presentation/login_screen/LoginViewModel_Factory;->get()Lfast/dic/dict/presentation/login_screen/LoginViewModel;

    move-result-object p0

    return-object p0
.end method
