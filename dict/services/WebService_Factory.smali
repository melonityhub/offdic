.class public final Lfast/dic/dict/services/WebService_Factory;
.super Ljava/lang/Object;
.source "WebService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/services/WebService;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiServiceProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/ApiService;",
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
            "Lfast/dic/dict/services/ApiService;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lfast/dic/dict/services/WebService_Factory;->apiServiceProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lfast/dic/dict/services/WebService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/ApiService;",
            ">;)",
            "Lfast/dic/dict/services/WebService_Factory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lfast/dic/dict/services/WebService_Factory;

    invoke-direct {v0, p0}, Lfast/dic/dict/services/WebService_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/services/ApiService;)Lfast/dic/dict/services/WebService;
    .locals 1

    .line 43
    new-instance v0, Lfast/dic/dict/services/WebService;

    invoke-direct {v0, p0}, Lfast/dic/dict/services/WebService;-><init>(Lfast/dic/dict/services/ApiService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/services/WebService;
    .locals 0

    .line 35
    iget-object p0, p0, Lfast/dic/dict/services/WebService_Factory;->apiServiceProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/services/ApiService;

    invoke-static {p0}, Lfast/dic/dict/services/WebService_Factory;->newInstance(Lfast/dic/dict/services/ApiService;)Lfast/dic/dict/services/WebService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lfast/dic/dict/services/WebService_Factory;->get()Lfast/dic/dict/services/WebService;

    move-result-object p0

    return-object p0
.end method
