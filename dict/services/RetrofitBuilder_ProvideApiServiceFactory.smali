.class public final Lfast/dic/dict/services/RetrofitBuilder_ProvideApiServiceFactory;
.super Ljava/lang/Object;
.source "RetrofitBuilder_ProvideApiServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/services/ApiService;",
        ">;"
    }
.end annotation


# instance fields
.field private final retrofitProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lretrofit2/Retrofit;",
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
            "Lretrofit2/Retrofit;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lfast/dic/dict/services/RetrofitBuilder_ProvideApiServiceFactory;->retrofitProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lfast/dic/dict/services/RetrofitBuilder_ProvideApiServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Lfast/dic/dict/services/RetrofitBuilder_ProvideApiServiceFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lfast/dic/dict/services/RetrofitBuilder_ProvideApiServiceFactory;

    invoke-direct {v0, p0}, Lfast/dic/dict/services/RetrofitBuilder_ProvideApiServiceFactory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideApiService(Lretrofit2/Retrofit;)Lfast/dic/dict/services/ApiService;
    .locals 1

    .line 46
    sget-object v0, Lfast/dic/dict/services/RetrofitBuilder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder;

    invoke-virtual {v0, p0}, Lfast/dic/dict/services/RetrofitBuilder;->provideApiService(Lretrofit2/Retrofit;)Lfast/dic/dict/services/ApiService;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/services/ApiService;

    return-object p0
.end method


# virtual methods
.method public get()Lfast/dic/dict/services/ApiService;
    .locals 0

    .line 37
    iget-object p0, p0, Lfast/dic/dict/services/RetrofitBuilder_ProvideApiServiceFactory;->retrofitProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Retrofit;

    invoke-static {p0}, Lfast/dic/dict/services/RetrofitBuilder_ProvideApiServiceFactory;->provideApiService(Lretrofit2/Retrofit;)Lfast/dic/dict/services/ApiService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lfast/dic/dict/services/RetrofitBuilder_ProvideApiServiceFactory;->get()Lfast/dic/dict/services/ApiService;

    move-result-object p0

    return-object p0
.end method
