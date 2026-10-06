.class public final synthetic Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;

.field public final synthetic f$1:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;

    iput-object p2, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;

    iget-object p0, p0, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Bitmap;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;->recognizeTextFromImageAndTranslate$lambda$0(Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;Landroid/graphics/Bitmap;Ljava/util/List;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
