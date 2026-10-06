.class final Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FDOfflineTranslator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "fast.dic.dict.helpers.FDOfflineTranslator$translateAsync$3$result$1$1"
    f = "FDOfflineTranslator.kt"
    i = {}
    l = {
        0xac
    }
    m = "invokeSuspend"
    n = {}
    nl = {
        -0x1
    }
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $category:Lfast/dic/dict/utils/FDCategory;

.field final synthetic $textBlock:Lcom/google/mlkit/vision/text/Text$TextBlock;

.field label:I


# direct methods
.method constructor <init>(Lcom/google/mlkit/vision/text/Text$TextBlock;Lfast/dic/dict/utils/FDCategory;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            "Lfast/dic/dict/utils/FDCategory;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;->$textBlock:Lcom/google/mlkit/vision/text/Text$TextBlock;

    iput-object p2, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;->$category:Lfast/dic/dict/utils/FDCategory;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;

    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;->$textBlock:Lcom/google/mlkit/vision/text/Text$TextBlock;

    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;->$category:Lfast/dic/dict/utils/FDCategory;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;-><init>(Lcom/google/mlkit/vision/text/Text$TextBlock;Lfast/dic/dict/utils/FDCategory;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 171
    iget v1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 172
    sget-object p1, Lfast/dic/dict/helpers/FDOfflineTranslator;->INSTANCE:Lfast/dic/dict/helpers/FDOfflineTranslator;

    iget-object v1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;->$textBlock:Lcom/google/mlkit/vision/text/Text$TextBlock;

    invoke-virtual {v1}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getText(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;->$category:Lfast/dic/dict/utils/FDCategory;

    iget-object v5, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;->$textBlock:Lcom/google/mlkit/vision/text/Text$TextBlock;

    invoke-virtual {v5}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lfast/dic/dict/utils/FDCategory;->findLanguage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;->label:I

    invoke-virtual {p1, v1, v3, v4}, Lfast/dic/dict/helpers/FDOfflineTranslator;->translate(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
