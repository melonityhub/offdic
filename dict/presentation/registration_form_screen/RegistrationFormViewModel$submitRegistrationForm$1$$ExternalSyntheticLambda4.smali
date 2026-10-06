.class public final synthetic Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/parse/LogOutCallback;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda4;->f$0:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final done(Lcom/parse/ParseException;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda4;->f$0:Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;

    iget-object p0, p0, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1;->$r8$lambda$bmz8Xbj20wwlIplkgRAk2BO1d3U(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel;Ljava/lang/String;Lcom/parse/ParseException;)V

    return-void
.end method

.method public final bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda4;->done(Lcom/parse/ParseException;)V

    return-void
.end method
