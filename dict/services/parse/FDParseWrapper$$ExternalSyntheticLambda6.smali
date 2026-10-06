.class public final synthetic Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/parse/GetCallback;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function2;

.field public final synthetic f$1:Lfast/dic/dict/services/parse/FDPurchased;

.field public final synthetic f$2:Lfast/dic/dict/services/parse/FDParseWrapper;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda6;->f$1:Lfast/dic/dict/services/parse/FDPurchased;

    iput-object p3, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda6;->f$2:Lfast/dic/dict/services/parse/FDParseWrapper;

    iput-object p4, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda6;->f$0:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda6;->f$1:Lfast/dic/dict/services/parse/FDPurchased;

    iget-object v2, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda6;->f$2:Lfast/dic/dict/services/parse/FDParseWrapper;

    iget-object v3, p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda6;->f$3:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lfast/dic/dict/services/parse/FDParseWrapper;->fetchParseUser$lambda$3(Lkotlin/jvm/functions/Function2;Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method

.method public final bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda6;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method
