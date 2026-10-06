.class public final synthetic Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/parse/LogOutCallback;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/services/parse/FDPurchased;

.field public final synthetic f$1:Lfast/dic/dict/services/parse/FDParseWrapper;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda1;->f$0:Lfast/dic/dict/services/parse/FDPurchased;

    iput-object p2, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda1;->f$1:Lfast/dic/dict/services/parse/FDParseWrapper;

    iput-object p3, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final done(Lcom/parse/ParseException;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda1;->f$0:Lfast/dic/dict/services/parse/FDPurchased;

    iget-object v1, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda1;->f$1:Lfast/dic/dict/services/parse/FDParseWrapper;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lfast/dic/dict/services/parse/FDParseWrapper;->$r8$lambda$o9SwIqZhOM1wwrGWDq6YwpdZgjM(Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;Lcom/parse/ParseException;)V

    return-void
.end method

.method public final bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
