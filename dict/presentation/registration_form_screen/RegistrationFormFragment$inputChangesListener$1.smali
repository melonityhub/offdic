.class public final Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1;
.super Ljava/lang/Object;
.source "RegistrationFormFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J*\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "fast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1",
        "Landroid/text/TextWatcher;",
        "beforeTextChanged",
        "",
        "p0",
        "",
        "p1",
        "",
        "p2",
        "p3",
        "onTextChanged",
        "afterTextChanged",
        "Landroid/text/Editable;",
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
.field final synthetic this$0:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1;->this$0:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 39
    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1;->this$0:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;->signUpButtonEnable()V

    return-void
.end method
