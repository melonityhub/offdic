.class public final synthetic Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/parse/SaveCallback;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/fragments/UpdateProfileFragment;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/fragments/UpdateProfileFragment;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/fragments/UpdateProfileFragment;

    iput-object p2, p0, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final done(Lcom/parse/ParseException;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/fragments/UpdateProfileFragment;

    iget-object p0, p0, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lfast/dic/dict/fragments/UpdateProfileFragment;->editProfile$lambda$2(Lfast/dic/dict/fragments/UpdateProfileFragment;Landroid/content/Context;Lcom/parse/ParseException;)V

    return-void
.end method

.method public final bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda0;->done(Lcom/parse/ParseException;)V

    return-void
.end method
