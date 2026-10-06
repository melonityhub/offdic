.class public final synthetic Lfast/dic/dict/FDApplication$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/FDApplication;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/FDApplication;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/FDApplication$$ExternalSyntheticLambda1;->f$0:Lfast/dic/dict/FDApplication;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/FDApplication$$ExternalSyntheticLambda1;->f$0:Lfast/dic/dict/FDApplication;

    check-cast p1, Lcom/parse/ParseObject;

    check-cast p2, Lfast/dic/dict/services/parse/FDPurchased;

    invoke-static {p0, p1, p2}, Lfast/dic/dict/FDApplication;->fetchParseUser$lambda$0(Lfast/dic/dict/FDApplication;Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
