.class public final Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory;
.super Ljava/lang/Object;
.source "RetrofitBuilder_GetRetrofitFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lretrofit2/Retrofit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory;
    .locals 1

    .line 34
    sget-object v0, Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory$InstanceHolder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory;

    return-object v0
.end method

.method public static getRetrofit()Lretrofit2/Retrofit;
    .locals 1

    .line 38
    sget-object v0, Lfast/dic/dict/services/RetrofitBuilder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder;

    invoke-virtual {v0}, Lfast/dic/dict/services/RetrofitBuilder;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit2/Retrofit;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory;->get()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method public get()Lretrofit2/Retrofit;
    .locals 0

    .line 30
    invoke-static {}, Lfast/dic/dict/services/RetrofitBuilder_GetRetrofitFactory;->getRetrofit()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method
