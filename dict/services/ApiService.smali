.class public interface abstract Lfast/dic/dict/services/ApiService;
.super Ljava/lang/Object;
.source "ApiService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\'b\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007JH\u0010\u0008\u001a\u001c\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b0\t\u0018\u00010\u00032\u0016\u0008\u0001\u0010\r\u001a\u00020\n:\u000c\u0008\u000e\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\rH\'b\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u000fJ>\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u00112\u0016\u0008\u0001\u0010\u0013\u001a\u00020\n:\u000c\u0008\u000e\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0013H\u00a7@b\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0015\u00a2\u0006\u0002\u0010\u0014J>\u0010\u0016\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0018\u00010\u00112\u0016\u0008\u0001\u0010\u0013\u001a\u00020\n:\u000c\u0008\u000e\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0013H\u00a7@b\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0018\u00a2\u0006\u0002\u0010\u0014J$\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011H\u00a7@b\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u00a2\u0006\u0002\u0010\u001aJ>\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u00032\u001e\u0008\u0001\u0010\u001d\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t:\u0002\u0008\u001eH\'b\u000c\u0008\u001f\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008( J^\u0010!\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\"\u0018\u00010\u00032\u001e\u0008\u0001\u0010\u001d\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t:\u0002\u0008\u001e2\u0018\u0008\u0001\u0010#\u001a\u0004\u0018\u00010$:\u000c\u0008%\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(#H\'b\u0002\u0008&b\u000c\u0008\u001f\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\'J^\u0010(\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\"\u0018\u00010\u00032\u001e\u0008\u0001\u0010\u001d\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t:\u0002\u0008\u001e2\u0018\u0008\u0001\u0010#\u001a\u0004\u0018\u00010$:\u000c\u0008%\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(#H\'b\u0002\u0008&b\u000c\u0008\u001f\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008()J^\u0010*\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010+\u0018\u00010\u00032\u001e\u0008\u0001\u0010\u001d\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\t:\u0002\u0008\u001e2\u0018\u0008\u0001\u0010,\u001a\u0004\u0018\u00010$:\u000c\u0008%\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(,H\'b\u0002\u0008&b\u000c\u0008\u001f\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(-\u00a8\u0006.\u00c0\u0006\u0003"
    }
    d2 = {
        "Lfast/dic/dict/services/ApiService;",
        "",
        "wodSync",
        "Lretrofit2/Call;",
        "Lfast/dic/dict/models/api/WodApiModel;",
        "Lretrofit2/http/GET;",
        "value",
        "v1/wod",
        "wodHistory",
        "",
        "",
        "",
        "Lfast/dic/dict/models/WodHistoryMonthDto;",
        "year",
        "Lretrofit2/http/Path;",
        "v1/wod/history/{year}",
        "getPricingList",
        "Lretrofit2/Response;",
        "Lfast/dic/dict/models/PricingResponse;",
        "language",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "v1/pricing/{language}",
        "getPricingListV2",
        "Lfast/dic/dict/domain/entity/pricing/PricingResponse;",
        "v2/pricing/{language}",
        "wod",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteAccount",
        "Lfast/dic/dict/models/api/BaseApiResponseModel;",
        "headers",
        "Lretrofit2/http/HeaderMap;",
        "Lretrofit2/http/POST;",
        "v1/delete-account",
        "googleplay",
        "Lfast/dic/dict/models/api/ValidateModel;",
        "receipt",
        "Lokhttp3/RequestBody;",
        "Lretrofit2/http/Part;",
        "Lretrofit2/http/Multipart;",
        "v1/googleplay/validation",
        "cafebazaar",
        "v1/cafebazaar/validation",
        "translate",
        "Lfast/dic/dict/models/database/TranslateModel;",
        "sentence",
        "v1/translate",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract cafebazaar(Ljava/util/Map;Lokhttp3/RequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/HeaderMap;
        .end annotation
    .end param
    .param p2    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "receipt"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            ")",
            "Lretrofit2/Call<",
            "Lfast/dic/dict/models/api/ValidateModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/cafebazaar/validation"
    .end annotation
.end method

.method public abstract deleteAccount(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/HeaderMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lfast/dic/dict/models/api/BaseApiResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/delete-account"
    .end annotation
.end method

.method public abstract getPricingList(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "language"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lfast/dic/dict/models/PricingResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/pricing/{language}"
    .end annotation
.end method

.method public abstract getPricingListV2(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "language"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lfast/dic/dict/domain/entity/pricing/PricingResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v2/pricing/{language}"
    .end annotation
.end method

.method public abstract googleplay(Ljava/util/Map;Lokhttp3/RequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/HeaderMap;
        .end annotation
    .end param
    .param p2    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "receipt"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            ")",
            "Lretrofit2/Call<",
            "Lfast/dic/dict/models/api/ValidateModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/googleplay/validation"
    .end annotation
.end method

.method public abstract translate(Ljava/util/Map;Lokhttp3/RequestBody;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/HeaderMap;
        .end annotation
    .end param
    .param p2    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            value = "sentence"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lokhttp3/RequestBody;",
            ")",
            "Lretrofit2/Call<",
            "Lfast/dic/dict/models/database/TranslateModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "v1/translate"
    .end annotation
.end method

.method public abstract wod(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lfast/dic/dict/models/api/WodApiModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/wod"
    .end annotation
.end method

.method public abstract wodHistory(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "year"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WodHistoryMonthDto;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/wod/history/{year}"
    .end annotation
.end method

.method public abstract wodSync()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lfast/dic/dict/models/api/WodApiModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "v1/wod"
    .end annotation
.end method
