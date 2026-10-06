.class final Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RegistrationFormViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->submitRegistrationForm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "fast.dic.dict.presentation.registration_form_screen.RegistrationFormViewModel$submitRegistrationForm$1"
    f = "RegistrationFormViewModel.kt"
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

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $password:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;


# direct methods
.method public static synthetic $r8$lambda$8RmTez5KKefLRjssoPdUyMAfoSs(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;Lcom/parse/ParseException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->invokeSuspend$lambda$0$0$1(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;Lcom/parse/ParseException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BOqKxXjFvPpR-HJT7OOjpeyXF30(Lcom/parse/ParseException;)V
    .locals 0

    invoke-static {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->invokeSuspend$lambda$0$0$0(Lcom/parse/ParseException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ExygP6qmpz1LH9c1Jn4p7jgSBRo(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;Lcom/parse/ParseSession;Lcom/parse/ParseException;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->invokeSuspend$lambda$0$0(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;Lcom/parse/ParseSession;Lcom/parse/ParseException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bmz8Xbj20wwlIplkgRAk2BO1d3U(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;Lcom/parse/ParseException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->invokeSuspend$lambda$0$0$1$0(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;Lcom/parse/ParseException;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$email:Ljava/lang/String;

    iput-object p2, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$name:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$password:Ljava/lang/String;

    iput-object p4, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->this$0:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;Lcom/parse/ParseException;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 57
    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/CharSequence;

    .line 58
    const-string v2, "email"

    check-cast v2, Ljava/lang/CharSequence;

    .line 57
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 60
    const-string v0, "email_already_exists"

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    .line 63
    const-string/jumbo v2, "username"

    check-cast v2, Ljava/lang/CharSequence;

    .line 62
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 65
    const-string/jumbo v0, "username_taken"

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/CharSequence;

    .line 68
    const-string v2, "password"

    check-cast v2, Ljava/lang/CharSequence;

    .line 67
    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 70
    const-string/jumbo v0, "weak_password"

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    invoke-static {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v1

    .line 78
    const-string v2, "email_password"

    .line 75
    invoke-virtual {v1, p1, v0, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserRegisterFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->access$get_uiState$p(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$Error;

    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 85
    :cond_3
    new-instance p2, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/parse/ParseSession;->getCurrentSessionInBackground(Lcom/parse/GetCallback;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0$0(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;Lcom/parse/ParseSession;Lcom/parse/ParseException;)V
    .locals 3

    .line 86
    const-string v0, "email_password"

    if-eqz p3, :cond_3

    .line 88
    invoke-virtual {p3}, Lcom/parse/ParseException;->getCode()I

    move-result p2

    const/16 v1, 0x7d

    if-eq p2, v1, :cond_2

    const/16 v1, 0xca

    if-eq p2, v1, :cond_1

    const/16 v1, 0xcb

    if-eq p2, v1, :cond_0

    .line 92
    invoke-virtual {p3}, Lcom/parse/ParseException;->getCode()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parse_error_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 90
    :cond_0
    const-string p2, "email_already_exists"

    goto :goto_0

    .line 89
    :cond_1
    const-string/jumbo p2, "username_taken"

    goto :goto_0

    .line 91
    :cond_2
    const-string p2, "invalid_email"

    .line 95
    :goto_0
    invoke-static {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserRegisterFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p2

    .line 104
    const-string v0, "registration_session_error"

    .line 102
    invoke-virtual {p2, p1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserLogout(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance p1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lcom/parse/ParseUser;->logOutInBackground(Lcom/parse/LogOutCallback;)V

    .line 109
    invoke-static {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->access$get_uiState$p(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    .line 110
    new-instance p1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$ParseError;

    .line 111
    invoke-virtual {p3}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 112
    invoke-virtual {p3}, Lcom/parse/ParseException;->getCode()I

    move-result p3

    .line 110
    invoke-direct {p1, p2, p3}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$ParseError;-><init>(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 119
    :cond_3
    const-string p3, "null cannot be cast to non-null type fast.dic.dict.services.parse.FDParseSession"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lfast/dic/dict/services/parse/FDParseSession;

    .line 120
    const-string p3, "Android"

    invoke-virtual {p2, p3}, Lfast/dic/dict/services/parse/FDParseSession;->setDeviceOS(Ljava/lang/String;)V

    .line 121
    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lfast/dic/dict/services/parse/FDParseSession;->setDeviceOSVersion(Ljava/lang/String;)V

    .line 122
    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lfast/dic/dict/services/parse/FDParseSession;->setDeviceName(Ljava/lang/String;)V

    .line 123
    sget-object p3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lfast/dic/dict/services/parse/FDParseSession;->setDeviceModel(Ljava/lang/String;)V

    .line 124
    new-instance p3, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lfast/dic/dict/services/parse/FDParseSession;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 136
    invoke-static {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, v0, p3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserRegister(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 142
    invoke-static {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->access$get_uiState$p(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$Success;->INSTANCE:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormUIState$Success;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0$0$0(Lcom/parse/ParseException;)V
    .locals 0

    return-void
.end method

.method private static final invokeSuspend$lambda$0$0$1(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;Lcom/parse/ParseException;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 126
    new-instance p2, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/parse/ParseUser;->logOutInBackground(Lcom/parse/LogOutCallback;)V

    :cond_0
    return-void
.end method

.method private static final invokeSuspend$lambda$0$0$1$0(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;Lcom/parse/ParseException;)V
    .locals 0

    .line 127
    invoke-static {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    .line 129
    const-string p2, "registration_session_save_error"

    .line 127
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserLogout(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance v0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;

    iget-object v1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$email:Ljava/lang/String;

    iget-object v2, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$name:Ljava/lang/String;

    iget-object v3, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$password:Ljava/lang/String;

    iget-object v4, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->this$0:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 46
    iget v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    new-instance p1, Lfast/dic/dict/services/parse/FDParseUser;

    invoke-direct {p1}, Lfast/dic/dict/services/parse/FDParseUser;-><init>()V

    .line 48
    iget-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$email:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/services/parse/FDParseUser;->setEmail(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lfast/dic/dict/services/parse/FDParseUser;->setUsername(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lfast/dic/dict/services/parse/FDParseUser;->setName(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lfast/dic/dict/services/parse/FDParseUser;->setPassword(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->this$0:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;

    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$email:Ljava/lang/String;

    new-instance v1, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lfast/dic/dict/services/parse/FDParseUser;->signUpInBackground(Lcom/parse/SignUpCallback;)V

    .line 145
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
