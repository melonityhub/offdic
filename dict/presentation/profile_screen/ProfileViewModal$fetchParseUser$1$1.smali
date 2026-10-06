.class public final Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$fetchParseUser$1$1;
.super Ljava/lang/Object;
.source "ProfileViewModal.kt"

# interfaces
.implements Lfast/dic/dict/interfaces/IFDParseWrapperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$fetchParseUser$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\u0008\u001a\u00020\u00032\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "fast/dic/dict/presentation/profile_screen/ProfileViewModal$fetchParseUser$1$1",
        "Lfast/dic/dict/interfaces/IFDParseWrapperCallback;",
        "onSuccess",
        "",
        "user",
        "Lcom/parse/ParseObject;",
        "fdPurchased",
        "Lfast/dic/dict/services/parse/FDPurchased;",
        "onFailure",
        "error",
        "Lcom/parse/ParseException;",
        "beforeGetUserSession",
        "currentUser",
        "Lfast/dic/dict/services/parse/FDParseUser;",
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

    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$fetchParseUser$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeGetUserSession(Lfast/dic/dict/services/parse/FDParseUser;Lfast/dic/dict/services/parse/FDPurchased;)V
    .locals 1

    const-string v0, "currentUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fdPurchased"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$fetchParseUser$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-static {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->access$get_state$p(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;

    check-cast p1, Lcom/parse/ParseObject;

    invoke-direct {v0, p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;-><init>(Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFailure(Lcom/parse/ParseException;Lfast/dic/dict/services/parse/FDPurchased;)V
    .locals 0

    const-string p0, "fdPurchased"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)V
    .locals 1

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fdPurchased"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$fetchParseUser$1$1;->this$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-static {p0}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;->access$get_state$p(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    new-instance v0, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;

    invoke-direct {v0, p1, p2}, Lfast/dic/dict/presentation/profile_screen/ProfileUIState$User;-><init>(Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
