.class public final synthetic Lfast/dic/dict/FDApplication$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/parse/LogOutCallback;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/services/parse/FDPurchased;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/services/parse/FDPurchased;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/FDApplication$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/services/parse/FDPurchased;

    return-void
.end method


# virtual methods
.method public final done(Lcom/parse/ParseException;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/FDApplication$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/services/parse/FDPurchased;

    invoke-static {p0, p1}, Lfast/dic/dict/FDApplication;->$r8$lambda$58GupDoTXifrNYMjM_HQHv-3ClI(Lfast/dic/dict/services/parse/FDPurchased;Lcom/parse/ParseException;)V

    return-void
.end method

.method public final bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lfast/dic/dict/FDApplication$$ExternalSyntheticLambda0;->done(Lcom/parse/ParseException;)V

    return-void
.end method
