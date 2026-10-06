.class public final Lfast/dic/dict/PaymentMethodFragment_MembersInjector;
.super Ljava/lang/Object;
.source "PaymentMethodFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/PaymentMethodFragment;",
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


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment_MembersInjector;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/PaymentMethodFragment;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lfast/dic/dict/PaymentMethodFragment_MembersInjector;

    invoke-direct {v0, p0}, Lfast/dic/dict/PaymentMethodFragment_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectFirebaseUserPropertiesManager(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragment;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/PaymentMethodFragment;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragment_MembersInjector;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-static {p1, p0}, Lfast/dic/dict/PaymentMethodFragment_MembersInjector;->injectFirebaseUserPropertiesManager(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

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
    check-cast p1, Lfast/dic/dict/PaymentMethodFragment;

    invoke-virtual {p0, p1}, Lfast/dic/dict/PaymentMethodFragment_MembersInjector;->injectMembers(Lfast/dic/dict/PaymentMethodFragment;)V

    return-void
.end method
