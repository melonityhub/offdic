.class public final synthetic Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/parse/LogInCallback;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda5;->f$0:Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda5;->f$0:Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;

    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel$loginWithPassword$1;->invokeSuspend$lambda$0(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel;Ljava/lang/String;Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method

.method public final bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/parse/ParseUser;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda5;->done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V

    return-void
.end method
