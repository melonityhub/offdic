.class final Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TextRecognitionTranslatorViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;->getDominantColor(Landroid/graphics/Bitmap;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
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
    value = "SMAP\nTextRecognitionTranslatorViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextRecognitionTranslatorViewModel.kt\nfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,89:1\n1739#2:90\n1814#2,3:91\n*S KotlinDebug\n*F\n+ 1 TextRecognitionTranslatorViewModel.kt\nfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1\n*L\n68#1:90\n68#1:91,3\n*E\n"
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
    c = "fast.dic.dict.viewmodels.fragments.TextRecognitionTranslatorViewModel$getDominantColor$1"
    f = "TextRecognitionTranslatorViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

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
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V
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
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->$blocks:Ljava/util/List;

    iput-object p2, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->$bitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;

    iget-object v0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->$blocks:Ljava/util/List;

    iget-object v1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1, p0, p2}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 66
    iget v0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 68
    iget-object p1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->$blocks:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->$bitmap:Landroid/graphics/Bitmap;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 91
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 92
    check-cast v2, Lcom/google/mlkit/vision/text/Text$TextBlock;

    .line 69
    invoke-virtual {v2}, Lcom/google/mlkit/vision/text/Text$TextBlock;->getBoundingBox()Landroid/graphics/Rect;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_2

    .line 71
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    move v3, v4

    .line 72
    :goto_1
    iget v5, v2, Landroid/graphics/Rect;->left:I

    if-ltz v5, :cond_2

    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 74
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v5, v2, v4, v3}, Lfast/dic/dict/utils/BitmapExtKt;->getDominantColor(Landroid/graphics/Bitmap;IIII)I

    move-result v2

    :goto_2
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 92
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 77
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 66
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
