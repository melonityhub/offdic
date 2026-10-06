.class public final Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$onCreateView$3;
.super Ljava/lang/Object;
.source "LoginSignupFragment.kt"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "fast/dic/dict/presentation/login_screen/LoginSignupFragment$onCreateView$3",
        "Landroid/view/View$OnKeyListener;",
        "onKey",
        "",
        "v",
        "Landroid/view/View;",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
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
.field final synthetic this$0:Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$onCreateView$3;->this$0:Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string p1, "event"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$onCreateView$3;->this$0:Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;

    invoke-static {p1}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->access$getBinding$p(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v2, "emailAddressInput"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    invoke-static {p1, p2, p3}, Lfast/dic/dict/utils/KeyEventExtKt;->isReturnKey(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 56
    iget-object p0, p0, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment$onCreateView$3;->this$0:Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;

    invoke-static {p0}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->access$getBinding$p(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)Lfast/dic/dict/databinding/FragmentLoginSignupBinding;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lfast/dic/dict/databinding/FragmentLoginSignupBinding;->emailAddressInput:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;->checkEmailForSignInOrUp(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
