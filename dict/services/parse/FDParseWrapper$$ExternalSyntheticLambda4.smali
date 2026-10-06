.class public final synthetic Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lfast/dic/dict/services/parse/FDParseUser;

    check-cast p2, Lfast/dic/dict/services/parse/FDPurchased;

    invoke-static {p1, p2}, Lfast/dic/dict/services/parse/FDParseWrapper;->fetchParseUser$lambda$1(Lfast/dic/dict/services/parse/FDParseUser;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
