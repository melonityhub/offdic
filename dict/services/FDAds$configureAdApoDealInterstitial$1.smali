.class public final Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;
.super Ljava/lang/Object;
.source "FDAds.kt"

# interfaces
.implements Lcom/appodeal/ads/InterstitialCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/services/FDAds;->configureAdApoDealInterstitial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u0008\u0010\n\u001a\u00020\u0003H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "fast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1",
        "Lcom/appodeal/ads/InterstitialCallbacks;",
        "onInterstitialLoaded",
        "",
        "isPrecache",
        "",
        "onInterstitialFailedToLoad",
        "onInterstitialShown",
        "onInterstitialShowFailed",
        "onInterstitialClicked",
        "onInterstitialClosed",
        "onInterstitialExpired",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lfast/dic/dict/services/FDAds;


# direct methods
.method constructor <init>(Lfast/dic/dict/services/FDAds;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final onInterstitialShowFailed$lambda$1(Lfast/dic/dict/services/FDAds;)V
    .locals 0

    .line 379
    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getInterstitialCountdown$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/services/InterstitialCountdownDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->close()V

    :cond_0
    return-void
.end method

.method static final onInterstitialShown$lambda$0(Lfast/dic/dict/services/FDAds;)V
    .locals 0

    .line 372
    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getInterstitialCountdown$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/services/InterstitialCountdownDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onInterstitialClicked()V
    .locals 3

    .line 384
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ApoDeal onInterstitialClicked"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/analytics/AdType;->INTERSTITIAL:Lfast/dic/dict/analytics/AdType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdClicked$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onInterstitialClosed()V
    .locals 4

    .line 389
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfast/dic/dict/services/FDAds;->access$set_isInterstitialShown$p(Lfast/dic/dict/services/FDAds;Z)V

    .line 390
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/analytics/AdType;->INTERSTITIAL:Lfast/dic/dict/analytics/AdType;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdClosed$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;ZILjava/lang/Object;)V

    return-void
.end method

.method public onInterstitialExpired()V
    .locals 1

    .line 397
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/analytics/AdType;->INTERSTITIAL:Lfast/dic/dict/analytics/AdType;

    invoke-virtual {p0, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdExpired(Lfast/dic/dict/analytics/AdType;)V

    return-void
.end method

.method public onInterstitialFailedToLoad()V
    .locals 3

    .line 364
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ApoDeal onInterstitialFailedToLoad"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/analytics/AdType;->INTERSTITIAL:Lfast/dic/dict/analytics/AdType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdFailedToLoad$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onInterstitialLoaded(Z)V
    .locals 6

    .line 355
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ApoDeal  Interstitial Loaded"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v0

    .line 357
    sget-object v1, Lfast/dic/dict/analytics/AdType;->INTERSTITIAL:Lfast/dic/dict/analytics/AdType;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v3, p1

    .line 356
    invoke-static/range {v0 .. v5}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdLoaded$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public onInterstitialShowFailed()V
    .locals 4

    .line 376
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ApoDeal onInterstitialShowFailed"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/analytics/AdType;->INTERSTITIAL:Lfast/dic/dict/analytics/AdType;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdShowFailed$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x3

    .line 378
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->destroy(I)V

    .line 379
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$getMainHandler$p(Lfast/dic/dict/services/FDAds;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    new-instance v1, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/services/FDAds;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onInterstitialShown()V
    .locals 4

    .line 369
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ApoDeal onInterstitialShown"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lfast/dic/dict/services/FDAds;->access$set_isInterstitialShown$p(Lfast/dic/dict/services/FDAds;Z)V

    .line 371
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/analytics/AdType;->INTERSTITIAL:Lfast/dic/dict/analytics/AdType;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdShown$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$getMainHandler$p(Lfast/dic/dict/services/FDAds;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;->this$0:Lfast/dic/dict/services/FDAds;

    new-instance v1, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/services/FDAds;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
