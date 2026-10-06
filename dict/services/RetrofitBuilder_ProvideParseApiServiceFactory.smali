.class public final Lfast/dic/dict/services/RetrofitBuilder_ProvideParseApiServiceFactory;
.super Ljava/lang/Object;
.source "RetrofitBuilder_ProvideParseApiServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/services/ParseApiService;",
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
    iput-object p1, p0, Lfast/dic/dict/services/RetrofitBuilder_ProvideParseApiServiceFactory;->retrofitProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lfast/dic/dict/services/RetrofitBuilder_ProvideParseApiServiceFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lretrofit2/Retrofit;",
            ">;)",
            "Lfast/dic/dict/services/RetrofitBuilder_ProvideParseApiServiceFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lfast/dic/dict/services/RetrofitBuilder_ProvideParseApiServiceFactory;

    invoke-direct {v0, p0}, Lfast/dic/dict/services/RetrofitBuilder_ProvideParseApiServiceFactory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static provideParseApiService(Lretrofit2/Retrofit;)Lfast/dic/dict/services/ParseApiService;
    .locals 1

    .line 46
    sget-object v0, Lfast/dic/dict/services/RetrofitBuilder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder;

    invoke-virtual {v0, p0}, Lfast/dic/dict/services/RetrofitBuilder;->provideParseApiService(Lretrofit2/Retrofit;)Lfast/dic/dict/services/ParseApiService;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/services/ParseApiService;

    return-object p0
.end method


# virtual methods
.method public get()Lfast/dic/dict/services/ParseApiService;
    .locals 0

    .line 37
    iget-object p0, p0, Lfast/dic/dict/services/RetrofitBuilder_ProvideParseApiServiceFactory;->retrofitProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lretrofit2/Retrofit;

    invoke-static {p0}, Lfast/dic/dict/services/RetrofitBuilder_ProvideParseApiServiceFactory;->provideParseApiService(Lretrofit2/Retrofit;)Lfast/dic/dict/services/ParseApiService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lfast/dic/dict/services/RetrofitBuilder_ProvideParseApiServiceFactory;->get()Lfast/dic/dict/services/ParseApiService;

    move-result-object p0

    return-object p0
.end method
