.class public final Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$deleteAccount$1$1;
.super Ljava/lang/Object;
.source "ProfileViewModal.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$deleteAccount$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "fast/dic/dict/presentation/profile_screen/ProfileViewModal$deleteAccount$1$1",
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
.field final synthetic this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$deleteAccount$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
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

    .line 121
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$deleteAccount$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-static {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->access$get_state$p(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Unknown error"

    :cond_0
    invoke-direct {p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    .line 104
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfast/dic/dict/models/api/BaseApiResponseModel;

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Lfast/dic/dict/models/api/BaseApiResponseModel;->getResult()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, ""

    :cond_1
    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p1}, Lfast/dic/dict/models/api/BaseApiResponseModel;->getSuccessful()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 109
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$deleteAccount$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-static {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->access$get_state$p(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccount;

    invoke-direct {p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccount;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 111
    :cond_2
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$deleteAccount$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-static {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->access$get_state$p(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccountError;

    invoke-direct {p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$DeletedAccountError;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 117
    :cond_3
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$deleteAccount$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-static {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->access$get_state$p(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance p1, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;

    invoke-virtual {p2}, Lretrofit2/Response;->message()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
