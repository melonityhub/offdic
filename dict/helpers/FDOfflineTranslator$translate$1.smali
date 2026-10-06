.class final Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "FDOfflineTranslator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/helpers/FDOfflineTranslator;->translate(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "fast.dic.dict.helpers.FDOfflineTranslator"
    f = "FDOfflineTranslator.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0xa2
    }
    m = "translate"
    n = {
        "sentence",
        "task",
        "language"
    }
    nl = {
        -0x1
    }
    s = {
        "L$0",
        "L$1",
        "I$0"
    }
    v = 0x2
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lfast/dic/dict/helpers/FDOfflineTranslator;


# direct methods
.method constructor <init>(Lfast/dic/dict/helpers/FDOfflineTranslator;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/helpers/FDOfflineTranslator;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->this$0:Lfast/dic/dict/helpers/FDOfflineTranslator;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->result:Ljava/lang/Object;

    iget p1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->label:I

    iget-object p1, p0, Lfast/dic/dict/helpers/FDOfflineTranslator$translate$1;->this$0:Lfast/dic/dict/helpers/FDOfflineTranslator;

    const/4 v0, 0x0

    check-cast p0, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, p0}, Lfast/dic/dict/helpers/FDOfflineTranslator;->translate(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
