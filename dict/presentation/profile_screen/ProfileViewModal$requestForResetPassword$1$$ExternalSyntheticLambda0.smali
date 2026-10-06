.class public final synthetic Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/parse/RequestPasswordResetCallback;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    return-void
.end method


# virtual methods
.method public final done(Lcom/parse/ParseException;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1;->invokeSuspend$lambda$0(Lfast/dic/dict/presentation/profile_screen/ProfileViewModal;Lcom/parse/ParseException;)V

    return-void
.end method

.method public final bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/profile_screen/ProfileViewModal$requestForResetPassword$1$$ExternalSyntheticLambda0;->done(Lcom/parse/ParseException;)V

    return-void
.end method
