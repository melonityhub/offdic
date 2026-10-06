.class public final synthetic Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/utils/FDImageRecognizer;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/utils/FDImageRecognizer;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda1;->f$0:Lfast/dic/dict/utils/FDImageRecognizer;

    iput-object p2, p0, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda1;->f$0:Lfast/dic/dict/utils/FDImageRecognizer;

    iget-object p0, p0, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function2;

    check-cast p1, Lcom/google/mlkit/vision/text/Text;

    invoke-static {v0, p0, p1}, Lfast/dic/dict/utils/FDImageRecognizer;->runTextRecognition$lambda$0(Lfast/dic/dict/utils/FDImageRecognizer;Lkotlin/jvm/functions/Function2;Lcom/google/mlkit/vision/text/Text;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
