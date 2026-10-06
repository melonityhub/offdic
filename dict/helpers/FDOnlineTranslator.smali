.class public final Lfast/dic/dict/helpers/FDOnlineTranslator;
.super Ljava/lang/Object;
.source "FDOnlineTranslator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J8\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2 \u0010\n\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u00050\u000bj\u0002`\u000eJ:\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2 \u0010\n\u001a\u001c\u0012\u0006\u0012\u0004\u0018\u00010\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u00050\u000bj\u0002`\u000eH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lfast/dic/dict/helpers/FDOnlineTranslator;",
        "",
        "<init>",
        "()V",
        "translate",
        "",
        "sentence",
        "",
        "user",
        "Lfast/dic/dict/services/parse/FDParseUser;",
        "callback",
        "Lkotlin/Function2;",
        "Lfast/dic/dict/models/database/TranslateModel;",
        "",
        "Lfast/dic/dict/helpers/FDOnlineTranslatorCallback;",
        "fastdicApi",
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


# static fields
.field public static final INSTANCE:Lfast/dic/dict/helpers/FDOnlineTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfast/dic/dict/helpers/FDOnlineTranslator;

    invoke-direct {v0}, Lfast/dic/dict/helpers/FDOnlineTranslator;-><init>()V

    sput-object v0, Lfast/dic/dict/helpers/FDOnlineTranslator;->INSTANCE:Lfast/dic/dict/helpers/FDOnlineTranslator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final fastdicApi(Ljava/lang/String;Lfast/dic/dict/services/parse/FDParseUser;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfast/dic/dict/services/parse/FDParseUser;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/database/TranslateModel;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 24
    new-instance p0, Lfast/dic/dict/services/WebService;

    sget-object v0, Lfast/dic/dict/services/RetrofitBuilder;->INSTANCE:Lfast/dic/dict/services/RetrofitBuilder;

    invoke-virtual {v0}, Lfast/dic/dict/services/RetrofitBuilder;->getApiService()Lfast/dic/dict/services/ApiService;

    move-result-object v0

    invoke-direct {p0, v0}, Lfast/dic/dict/services/WebService;-><init>(Lfast/dic/dict/services/ApiService;)V

    .line 26
    invoke-virtual {p2}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getEmail(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Lfast/dic/dict/services/parse/FDParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object p2

    const-string v1, "getSessionToken(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Lfast/dic/dict/helpers/FDOnlineTranslator$fastdicApi$1;

    invoke-direct {v1, p1, p3}, Lfast/dic/dict/helpers/FDOnlineTranslator$fastdicApi$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lretrofit2/Callback;

    .line 24
    invoke-virtual {p0, p1, v0, p2, v1}, Lfast/dic/dict/services/WebService;->translateSentence(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public final translate(Ljava/lang/String;Lfast/dic/dict/services/parse/FDParseUser;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfast/dic/dict/services/parse/FDParseUser;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/database/TranslateModel;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sentence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/helpers/FDOnlineTranslator;->fastdicApi(Ljava/lang/String;Lfast/dic/dict/services/parse/FDParseUser;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
