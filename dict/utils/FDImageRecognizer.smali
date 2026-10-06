.class public final Lfast/dic/dict/utils/FDImageRecognizer;
.super Ljava/lang/Object;
.source "FDImageRecognizer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0008\u0007\u001a\u0002\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J4\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2$\u0010\u000b\u001a \u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0004\u0012\u00020\u00080\u000cJ6\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00122$\u0010\u000b\u001a \u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0004\u0012\u00020\u00080\u000cH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lfast/dic/dict/utils/FDImageRecognizer;",
        "",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "options",
        "Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;",
        "runTextRecognition",
        "",
        "imageBitmap",
        "Landroid/graphics/Bitmap;",
        "completion",
        "Lkotlin/Function2;",
        "",
        "",
        "Lcom/google/mlkit/vision/text/Text$TextBlock;",
        "processTextRecognitionTranslateResult",
        "texts",
        "Lcom/google/mlkit/vision/text/Text;",
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
.field private final options:Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;->DEFAULT_OPTIONS:Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;

    const-string v1, "DEFAULT_OPTIONS"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lfast/dic/dict/utils/FDImageRecognizer;->options:Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;

    return-void
.end method

.method private final processTextRecognitionTranslateResult(Lcom/google/mlkit/vision/text/Text;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/text/Text;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/google/mlkit/vision/text/Text;->getTextBlocks()Ljava/util/List;

    move-result-object p0

    const-string p1, "getTextBlocks(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object p1, Lfast/dic/dict/helpers/FDOfflineTranslator;->INSTANCE:Lfast/dic/dict/helpers/FDOfflineTranslator;

    new-instance v0, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p0}, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V

    invoke-virtual {p1, p0, v0}, Lfast/dic/dict/helpers/FDOfflineTranslator;->translateAsync(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final processTextRecognitionTranslateResult$lambda$0(Lkotlin/jvm/functions/Function2;Ljava/util/List;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "translates"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final runTextRecognition$lambda$0(Lfast/dic/dict/utils/FDImageRecognizer;Lkotlin/jvm/functions/Function2;Lcom/google/mlkit/vision/text/Text;)Lkotlin/Unit;
    .locals 0

    .line 20
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p1}, Lfast/dic/dict/utils/FDImageRecognizer;->processTextRecognitionTranslateResult(Lcom/google/mlkit/vision/text/Text;Lkotlin/jvm/functions/Function2;)V

    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final runTextRecognition$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static final runTextRecognition$lambda$2(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public final runTextRecognition(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;-",
            "Ljava/util/List<",
            "+",
            "Lcom/google/mlkit/vision/text/Text$TextBlock;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "imageBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-static {p1, v0}, Lcom/google/mlkit/vision/common/InputImage;->fromBitmap(Landroid/graphics/Bitmap;I)Lcom/google/mlkit/vision/common/InputImage;

    move-result-object p1

    const-string v0, "fromBitmap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lfast/dic/dict/utils/FDImageRecognizer;->options:Lcom/google/mlkit/vision/text/latin/TextRecognizerOptions;

    check-cast v0, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    invoke-static {v0}, Lcom/google/mlkit/vision/text/TextRecognition;->getClient(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)Lcom/google/mlkit/vision/text/TextRecognizer;

    move-result-object v0

    const-string v1, "getClient(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {v0, p1}, Lcom/google/mlkit/vision/text/TextRecognizer;->process(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 19
    new-instance v0, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/utils/FDImageRecognizer;Lkotlin/jvm/functions/Function2;)V

    new-instance p0, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda2;

    invoke-direct {p0, v0}, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 22
    new-instance p1, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
