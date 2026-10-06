.class public final Lfast/dic/dict/services/FDAds$configureAdApoDealBanner$1;
.super Ljava/lang/Object;
.source "FDAds.kt"

# interfaces
.implements Lcom/appodeal/ads/BannerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/services/FDAds;->configureAdApoDealBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u0008\u0010\n\u001a\u00020\u0003H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "fast/dic/dict/services/FDAds$configureAdApoDealBanner$1",
        "Lcom/appodeal/ads/BannerCallbacks;",
        "onBannerLoaded",
        "",
        "height",
        "",
        "isPrecache",
        "",
        "onBannerFailedToLoad",
        "onBannerShown",
        "onBannerShowFailed",
        "onBannerClicked",
        "onBannerExpired",
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

    iput-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealBanner$1;->this$0:Lfast/dic/dict/services/FDAds;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerClicked()V
    .locals 3

    .line 341
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealBanner$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/analytics/AdType;->BANNER:Lfast/dic/dict/analytics/AdType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdClicked$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onBannerExpired()V
    .locals 3

    .line 346
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "configureAdApoDealBanner: onBannerExpired."

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealBanner$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/analytics/AdType;->BANNER:Lfast/dic/dict/analytics/AdType;

    invoke-virtual {p0, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdExpired(Lfast/dic/dict/analytics/AdType;)V

    return-void
.end method

.method public onBannerFailedToLoad()V
    .locals 3

    .line 324
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "configureAdApoDealBanner: onBannerFailedToLoad."

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealBanner$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/analytics/AdType;->BANNER:Lfast/dic/dict/analytics/AdType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdFailedToLoad$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onBannerLoaded(IZ)V
    .locals 6

    .line 315
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    const-string v0, "ApoDeal  Banner Loaded"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Log"

    invoke-virtual {p1, v1, v0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iget-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealBanner$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p1}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/analytics/AdType;->BANNER:Lfast/dic/dict/analytics/AdType;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v3, p2

    invoke-static/range {v0 .. v5}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdLoaded$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 318
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasFreePlan()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 319
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealBanner$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-virtual {p0}, Lfast/dic/dict/services/FDAds;->showBanner()V

    :cond_0
    return-void
.end method

.method public onBannerShowFailed()V
    .locals 3

    .line 335
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "configureAdApoDealBanner: onBannerShowFailed."

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealBanner$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/analytics/AdType;->BANNER:Lfast/dic/dict/analytics/AdType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdShowFailed$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onBannerShown()V
    .locals 3

    .line 330
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "configureAdApoDealBanner: onBannerShown."

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealBanner$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/analytics/AdType;->BANNER:Lfast/dic/dict/analytics/AdType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdShown$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
