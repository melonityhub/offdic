.class public final Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1$1;
.super Ljava/lang/Object;
.source "ProfileViewModal.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lfast/dic/dict/models/api/BaseApiResponseModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J(\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00062\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0008H\u0016J \u0010\t\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "fast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1$1",
        "Lretrofit2/Callback;",
        "Lfast/dic/dict/models/api/BaseApiResponseModel;",
        "onResponse",
        "",
        "call",
        "Lretrofit2/Call;",
        "response",
        "Lretrofit2/Response;",
        "onFailure",
        "t",
        "",
        "app"
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
.field final synthetic $currentUser:Lfast/dic/dict/services/parse/FDParseUser;

.field final synthetic this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;Lfast/dic/dict/services/parse/FDParseUser;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    iput-object p2, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1$1;->$currentUser:Lfast/dic/dict/services/parse/FDParseUser;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lfast/dic/dict/models/api/BaseApiResponseModel;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-static {p1}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1$1;->$currentUser:Lfast/dic/dict/services/parse/FDParseUser;

    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getEmail(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1$1;->$currentUser:Lfast/dic/dict/services/parse/FDParseUser;

    invoke-virtual {v1}, Lfast/dic/dict/services/parse/FDParseUser;->getUsername()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 222
    invoke-virtual {p1, v0, v1, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logEmailVerificationSent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-static {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->access$get_emailVerificationState$p(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    .line 229
    new-instance p1, Lfast/dic/dict/presentation/profile_screen/EmailVerificationState$Error;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Unknown error"

    :cond_0
    invoke-direct {p1, p2}, Lfast/dic/dict/presentation/profile_screen/EmailVerificationState$Error;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lfast/dic/dict/models/api/BaseApiResponseModel;",
            ">;",
            "Lretrofit2/Response<",
            "Lfast/dic/dict/models/api/BaseApiResponseModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-static {p1}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p1

    .line 209
    iget-object p2, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1$1;->$currentUser:Lfast/dic/dict/services/parse/FDParseUser;

    invoke-virtual {p2}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getEmail(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1$1;->$currentUser:Lfast/dic/dict/services/parse/FDParseUser;

    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 208
    invoke-virtual {p1, p2, v0, v1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logEmailVerificationSent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$sendEmailVerification$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-static {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->access$get_emailVerificationState$p(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/presentation/profile_screen/EmailVerificationState$Success;->INSTANCE:Lfast/dic/dict/presentation/profile_screen/EmailVerificationState$Success;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
