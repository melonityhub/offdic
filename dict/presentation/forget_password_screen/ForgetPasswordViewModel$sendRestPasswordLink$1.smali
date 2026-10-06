.class final Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ForgetPasswordViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;->sendRestPasswordLink(Ljava/lang/String;)V
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
    c = "fast.dic.dict.presentation.forget_password_screen.ForgetPasswordViewModel$sendRestPasswordLink$1"
    f = "ForgetPasswordViewModel.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    nl = {}
    s = {}
    v = 0x2
.end annotation


# instance fields
.field final synthetic $email:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;->$email:Ljava/lang/String;

    iput-object p2, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;->this$0:Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;Ljava/lang/String;Lcom/parse/ParseException;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 36
    invoke-static {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;->access$get_uiState$p(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState$Error;

    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 38
    invoke-static {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logPasswordChange(Ljava/lang/String;Z)V

    return-void

    .line 42
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logPasswordChange$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    invoke-static {p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;->access$get_uiState$p(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p2, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState$Success;

    invoke-direct {p2, p1}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordUIState$Success;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;

    iget-object v0, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;->$email:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;->this$0:Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;-><init>(Ljava/lang/String;Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 33
    iget v0, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    iget-object p1, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;->$email:Ljava/lang/String;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;->this$0:Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;

    iget-object p0, p0, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1;->$email:Ljava/lang/String;

    new-instance v1, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel$sendRestPasswordLink$1$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordViewModel;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V

    .line 45
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
