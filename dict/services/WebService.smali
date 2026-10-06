.class public final Lfast/dic/dict/services/WebService;
.super Ljava/lang/Object;
.source "WebServices.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008H\u0086@\u00a2\u0006\u0002\u0010\nJ$\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011J \u0010\u0013\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u00082\u0006\u0010\u0015\u001a\u00020\u0016H\u0086@\u00a2\u0006\u0002\u0010\u0017J \u0010\u0018\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0018\u00010\u00082\u0006\u0010\u0015\u001a\u00020\u0016H\u0086@\u00a2\u0006\u0002\u0010\u0017J0\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010\u0011J \u0010\u001d\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0012\u0018\u00010\u0011JF\u0010\u001e\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000e2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010 \u0018\u00010\u0011H\u0007b\u0010\u0008!\u0012\u000c\u0008\"\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(#J2\u0010$\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u000e2\u0010\u0010\u0010\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010 \u0018\u00010\u0011J.\u0010%\u001a\u00020\u000c2\u0006\u0010&\u001a\u00020\u000e2\u001e\u0010\u0010\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020)0(0\'0\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lfast/dic/dict/services/WebService;",
        "",
        "apiService",
        "Lfast/dic/dict/services/ApiService;",
        "<init>",
        "(Lfast/dic/dict/services/ApiService;)V",
        "Ljavax/inject/Inject;",
        "getWod",
        "Lretrofit2/Response;",
        "Lfast/dic/dict/models/api/WodApiModel;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteAccount",
        "",
        "email",
        "",
        "sessionToken",
        "response",
        "Lretrofit2/Callback;",
        "Lfast/dic/dict/models/api/BaseApiResponseModel;",
        "getPricingList",
        "Lfast/dic/dict/models/PricingResponse;",
        "language",
        "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
        "(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getPricingListV2",
        "Lfast/dic/dict/domain/entity/pricing/PricingResponse;",
        "translateSentence",
        "sentence",
        "Lfast/dic/dict/models/database/TranslateModel;",
        "verificationEmailRequest",
        "validateBazaar",
        "orderId",
        "Lfast/dic/dict/models/api/ValidateModel;",
        "Landroid/annotation/SuppressLint;",
        "value",
        "SuspiciousIndentation",
        "validateGoogle",
        "getWodHistory",
        "year",
        "",
        "",
        "Lfast/dic/dict/models/WodHistoryMonthDto;",
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


# instance fields
.field private final apiService:Lfast/dic/dict/services/ApiService;


# direct methods
.method public constructor <init>(Lfast/dic/dict/services/ApiService;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "apiService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lfast/dic/dict/services/WebService;->apiService:Lfast/dic/dict/services/ApiService;

    return-void
.end method


# virtual methods
.method public final deleteAccount(Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Lfast/dic/dict/models/api/BaseApiResponseModel;",
            ">;)V"
        }
    .end annotation

    const-string p0, "email"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "response"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 29
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object p0, Lfast/dic/dict/services/RetrofitBuilder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder;

    invoke-virtual {p0}, Lfast/dic/dict/services/RetrofitBuilder;->getApiService()Lfast/dic/dict/services/ApiService;

    move-result-object p0

    invoke-interface {p0, v1}, Lfast/dic/dict/services/ApiService;->deleteAccount(Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 33
    invoke-interface {p0, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method public final getPricingList(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lfast/dic/dict/models/PricingResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lfast/dic/dict/services/WebService;->apiService:Lfast/dic/dict/services/ApiService;

    invoke-virtual {p1}, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lfast/dic/dict/services/ApiService;->getPricingList(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getPricingListV2(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lfast/dic/dict/domain/entity/pricing/PricingResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lfast/dic/dict/services/WebService;->apiService:Lfast/dic/dict/services/ApiService;

    invoke-virtual {p1}, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lfast/dic/dict/services/ApiService;->getPricingListV2(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getWod(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
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

    .line 24
    iget-object p0, p0, Lfast/dic/dict/services/WebService;->apiService:Lfast/dic/dict/services/ApiService;

    invoke-interface {p0, p1}, Lfast/dic/dict/services/ApiService;->wod(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getWodHistory(Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WodHistoryMonthDto;",
            ">;>;>;)V"
        }
    .end annotation

    const-string/jumbo p0, "year"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "response"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object p0, Lfast/dic/dict/services/RetrofitBuilder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder;

    invoke-virtual {p0}, Lfast/dic/dict/services/RetrofitBuilder;->getApiService()Lfast/dic/dict/services/ApiService;

    move-result-object p0

    invoke-interface {p0, p1}, Lfast/dic/dict/services/ApiService;->wodHistory(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 98
    invoke-interface {p0, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method public final translateSentence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Lfast/dic/dict/models/database/TranslateModel;",
            ">;)V"
        }
    .end annotation

    const-string p0, "sentence"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "email"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 45
    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string p0, "multiline"

    const-string p2, "True"

    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object p0, Lfast/dic/dict/services/RetrofitBuilder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder;

    invoke-virtual {p0}, Lfast/dic/dict/services/RetrofitBuilder;->getApiService()Lfast/dic/dict/services/ApiService;

    move-result-object p0

    .line 50
    sget-object p2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object p3, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v0, "text/plain"

    invoke-virtual {p3, v0}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 49
    invoke-interface {p0, v1, p1}, Lfast/dic/dict/services/ApiService;->translate(Ljava/util/Map;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 53
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method public final validateBazaar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Lfast/dic/dict/models/api/ValidateModel;",
            ">;)V"
        }
    .end annotation

    const-string p0, "email"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 73
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object p0, Lfast/dic/dict/services/RetrofitBuilder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder;

    invoke-virtual {p0}, Lfast/dic/dict/services/RetrofitBuilder;->getApiService()Lfast/dic/dict/services/ApiService;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 77
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object p2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v0, "text/plain"

    invoke-virtual {p2, v0}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 76
    :goto_0
    invoke-interface {p0, v1, p1}, Lfast/dic/dict/services/ApiService;->cafebazaar(Ljava/util/Map;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p0

    if-eqz p4, :cond_1

    .line 79
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_1
    return-void
.end method

.method public final validateGoogle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Lfast/dic/dict/models/api/ValidateModel;",
            ">;)V"
        }
    .end annotation

    const-string p0, "email"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 85
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object p0, Lfast/dic/dict/services/RetrofitBuilder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder;

    invoke-virtual {p0}, Lfast/dic/dict/services/RetrofitBuilder;->getApiService()Lfast/dic/dict/services/ApiService;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 89
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object p2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v0, "text/plain"

    invoke-virtual {p2, v0}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 88
    :goto_0
    invoke-interface {p0, v1, p1}, Lfast/dic/dict/services/ApiService;->googleplay(Ljava/util/Map;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p0

    if-eqz p4, :cond_1

    .line 91
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_1
    return-void
.end method

.method public final verificationEmailRequest(Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Lfast/dic/dict/models/api/BaseApiResponseModel;",
            ">;)V"
        }
    .end annotation

    const-string p0, "email"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 59
    const-string v1, "X-Parse-Application-Id"

    const-string v2, "ga7la7qzewqx68pcckpdmptswcsw6wrbcqhhs107"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "Content-type"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v1, Lfast/dic/dict/services/RetrofitBuilder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder;

    invoke-virtual {v1}, Lfast/dic/dict/services/RetrofitBuilder;->getParseApiService()Lfast/dic/dict/services/ParseApiService;

    move-result-object v1

    .line 63
    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    .line 62
    invoke-interface {v1, v0, p0}, Lfast/dic/dict/services/ParseApiService;->verificationEmailRequest(Ljava/util/Map;Ljava/util/Map;)Lretrofit2/Call;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 66
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method
