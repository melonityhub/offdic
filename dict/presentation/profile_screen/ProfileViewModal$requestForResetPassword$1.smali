.class final Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProfileViewModal.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->requestForResetPassword(Ljava/lang/String;)V
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
    c = "fast.dic.dict.presentation.profile_screen.ProfileViewModal$requestForResetPassword$1"
    f = "ProfileViewModal.kt"
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

.field final synthetic this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;


# direct methods
.method constructor <init>(Ljava/lang/String;Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;->$email:Ljava/lang/String;

    iput-object p2, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;Lcom/parse/ParseException;)V
    .locals 2

    if-nez p1, :cond_0

    .line 141
    invoke-static {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->access$get_state$p(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordRequested;->INSTANCE:Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordRequested;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 145
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->access$get_state$p(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    .line 146
    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;

    .line 147
    invoke-virtual {p1}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Unknown error"

    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseException;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 146
    invoke-direct {v0, v1, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$ResetPasswordFailed;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

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

    new-instance p1, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;

    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;->$email:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-direct {p1, v0, p0, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;-><init>(Ljava/lang/String;Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 136
    iget v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;->$email:Ljava/lang/String;

    .line 139
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)V

    .line 137
    invoke-static {p1, v0}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V

    .line 151
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 136
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
