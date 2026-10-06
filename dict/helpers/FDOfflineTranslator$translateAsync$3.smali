.class final Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FDOfflineTranslator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/helpers/FDOfflineTranslator;->translateAsync(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDOfflineTranslator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDOfflineTranslator.kt\nfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,195:1\n1739#2:196\n1814#2,3:197\n*S KotlinDebug\n*F\n+ 1 FDOfflineTranslator.kt\nfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3\n*L\n169#1:196\n169#1:197,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "fast.dic.dict.helpers.FDOfflineTranslator$translateAsync$3"
    f = "FDOfflineTranslator.kt"
    i = {
        0x0
    }
    l = {
        0xaf
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    nl = {
        0xa9
    }
    s = {
        "L$0"
    }
    v = 0x2
.end annotation


# instance fields
.field final synthetic $blocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $category:Lfast/dic/dict/utils/FDCategory;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lfast/dic/dict/utils/FDCategory;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lfast/dic/dict/utils/FDCategory;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->$blocks:Ljava/util/List;

    iput-object p2, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->$category:Lfast/dic/dict/utils/FDCategory;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;

    iget-object v1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->$blocks:Ljava/util/List;

    iget-object v2, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->$category:Lfast/dic/dict/utils/FDCategory;

    invoke-direct {v0, v1, v2, p0, p2}, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lfast/dic/dict/utils/FDCategory;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 168
    iget v2, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->label:I

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v7, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->$blocks:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v8, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->$category:Lfast/dic/dict/utils/FDCategory;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v2

    check-cast v9, Ljava/util/Collection;

    .line 197
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 198
    check-cast v2, Lcom/google/mlkit/vision/text/Text$TextBlock;

    .line 171
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v8, v5}, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3$result$1$1;-><init>(Lcom/google/mlkit/vision/text/Text$TextBlock;Lfast/dic/dict/utils/FDCategory;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, v3

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v2

    .line 198
    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_2
    check-cast v9, Ljava/util/List;

    .line 196
    check-cast v9, Ljava/util/Collection;

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 175
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->L$0:Ljava/lang/Object;

    iput v7, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->label:I

    invoke-static {v9, p1}, Lkotlinx/coroutines/AwaitKt;->awaitAll(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 168
    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 177
    iget-object p0, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translateAsync$3;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
