.class public final synthetic Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Lfast/dic/dict/utils/FDImageRecognizer$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lfast/dic/dict/utils/FDImageRecognizer;->processTextRecognitionTranslateResult$lambda$0(Lkotlin/jvm/functions/Function2;Ljava/util/List;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
