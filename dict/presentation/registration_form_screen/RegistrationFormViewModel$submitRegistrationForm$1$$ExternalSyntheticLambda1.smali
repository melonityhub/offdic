.class public final synthetic Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/parse/LogOutCallback;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final done(Lcom/parse/ParseException;)V
    .locals 0

    .line 0
    invoke-static {p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$r8$lambda$BOqKxXjFvPpR-HJT7OOjpeyXF30(Lcom/parse/ParseException;)V

    return-void
.end method

.method public final bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
