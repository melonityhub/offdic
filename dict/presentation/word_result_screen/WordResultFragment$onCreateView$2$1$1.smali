.class final synthetic Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$onCreateView$2$1$1;
.super Ljava/lang/Object;
.source "WordResultFragment.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$onCreateView$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
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


# instance fields
.field final synthetic $tmp0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$onCreateView$2$1$1;->$tmp0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 139
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$onCreateView$2$1$1;->$tmp0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$uiStateChanged(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 139
    check-cast p1, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$onCreateView$2$1$1;->emit(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/coroutines/flow/FlowCollector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p0}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Function<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lkotlin/jvm/internal/AdaptedFunctionReference;

    iget-object v2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$onCreateView$2$1$1;->$tmp0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    const-class v3, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    const-string/jumbo v5, "uiStateChanged(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;)V"

    const/4 v6, 0x4

    const/4 v1, 0x2

    const-string/jumbo v4, "uiStateChanged"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/Function;

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    check-cast p0, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p0}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
