.class public final synthetic Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/services/FDAds;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/services/FDAds;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/services/FDAds;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->onInterstitialShown$lambda$0(Lfast/dic/dict/services/FDAds;)V

    return-void
.end method
