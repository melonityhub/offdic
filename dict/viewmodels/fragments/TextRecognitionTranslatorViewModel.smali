.class public final Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "TextRecognitionTranslatorViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J \u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016J8\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00192\u0018\u0010\u001b\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\u0019\u0012\u0004\u0012\u00020\u000f0\u001cH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00ca\u0001\u0002\u0008\u001f\u00a8\u0006\u001e"
    }
    d2 = {
        "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "imageRecognizer",
        "Lfast/dic/dict/utils/FDImageRecognizer;",
        "<init>",
        "(Lfast/dic/dict/utils/FDImageRecognizer;)V",
        "Ljavax/inject/Inject;",
        "viewModelState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState;",
        "state",
        "Landroidx/lifecycle/LiveData;",
        "getState",
        "()Landroidx/lifecycle/LiveData;",
        "recognizeTextFromImageAndTranslate",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "storeImageToDirectory",
        "Ljava/io/File;",
        "directory",
        "filename",
        "",
        "getDominantColor",
        "blocks",
        "",
        "Lcom/google/mlkit/vision/text/Text$TextBlock;",
        "callback",
        "Lkotlin/Function1;",
        "",
        "app",
        "Ldagger/hilt/android/lifecycle/HiltViewModel;"
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
.field private final imageRecognizer:Lfast/dic/dict/utils/FDImageRecognizer;

.field private final state:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModelState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfast/dic/dict/utils/FDImageRecognizer;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "imageRecognizer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 21
    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;->imageRecognizer:Lfast/dic/dict/utils/FDImageRecognizer;

    .line 23
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;->viewModelState:Landroidx/lifecycle/MutableLiveData;

    .line 24
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;->state:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method private final getDominantColor(Landroid/graphics/Bitmap;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
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
            ">;)V"
        }
    .end annotation

    .line 66
    check-cast p0, Landroidx/lifecycle/ViewModel;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, p1, v1}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$getDominantColor$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)V

    move-object v3, p0

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method static final recognizeTextFromImageAndTranslate$lambda$0(Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "translates"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blocks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;->viewModelState:Landroidx/lifecycle/MutableLiveData;

    .line 31
    new-instance v0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;

    invoke-direct {v0, p2, p3, p1}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;-><init>(Ljava/util/List;Ljava/util/List;Landroid/graphics/Bitmap;)V

    .line 30
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;->state:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final recognizeTextFromImageAndTranslate(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;->viewModelState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Clear;->INSTANCE:Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Clear;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;->imageRecognizer:Lfast/dic/dict/utils/FDImageRecognizer;

    new-instance v1, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1, v1}, Lfast/dic/dict/utils/FDImageRecognizer;->runTextRecognition(Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final storeImageToDirectory(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const-string p0, "bitmap"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "directory"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "filename"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    new-instance v0, Ljava/io/File;

    const-string v1, "/share/"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result p2

    if-nez p2, :cond_0

    .line 43
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p2

    const-string v1, "Couldn\'t create directory!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 48
    :cond_1
    :goto_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 50
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v1, p0

    check-cast v1, Ljava/io/OutputStream;

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 52
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 53
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->flush()V

    .line 54
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 59
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "Error file:"

    invoke-virtual {p1, p2, p0}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
