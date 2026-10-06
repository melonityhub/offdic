.class public final synthetic Lfast/dic/dict/presentation/logout_screen/LogoutViewModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/parse/LogOutCallback;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    iput-object p2, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel$$ExternalSyntheticLambda0;->f$2:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final done(Lcom/parse/ParseException;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;

    iget-object v1, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel$$ExternalSyntheticLambda0;->f$2:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, v1, p0, p1}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->logout$lambda$0(Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;Lcom/parse/ParseException;)V

    return-void
.end method

.method public final bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel$$ExternalSyntheticLambda0;->done(Lcom/parse/ParseException;)V

    return-void
.end method
