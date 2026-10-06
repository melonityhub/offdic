.class final Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WordResultViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->generateErrorHtml(Ljava/lang/String;Ljava/lang/String;)V
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
    c = "fast.dic.dict.presentation.word_result_screen.WordResultViewModel$generateErrorHtml$1"
    f = "WordResultViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $message:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->$message:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->$title:Ljava/lang/String;

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

    new-instance p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->$message:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->$title:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;-><init>(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 160
    iget v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 161
    iget-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$getHtml$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lfast/dic/dict/utils/FDHtml;

    move-result-object p1

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->$message:Ljava/lang/String;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->$title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lfast/dic/dict/utils/FDHtml;->generateErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 163
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel$generateErrorHtml$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    invoke-static {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->access$get_state$p(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p0

    .line 164
    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorResult;

    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState$ErrorResult;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 166
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 160
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
