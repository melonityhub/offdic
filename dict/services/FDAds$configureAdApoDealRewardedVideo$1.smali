.class public final Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;
.super Ljava/lang/Object;
.source "FDAds.kt"

# interfaces
.implements Lcom/appodeal/ads/RewardedVideoCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/services/FDAds;->configureAdApoDealRewardedVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0008\u0010\u0011\u001a\u00020\u0003H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "fast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1",
        "Lcom/appodeal/ads/RewardedVideoCallbacks;",
        "onRewardedVideoLoaded",
        "",
        "isPrecache",
        "",
        "onRewardedVideoFailedToLoad",
        "onRewardedVideoShown",
        "onRewardedVideoShowFailed",
        "onRewardedVideoClicked",
        "onRewardedVideoFinished",
        "amount",
        "",
        "currency",
        "",
        "onRewardedVideoClosed",
        "finished",
        "onRewardedVideoExpired",
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

    iput-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoClicked()V
    .locals 3

    .line 437
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ApoDeal onRewardedVideoClicked"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/analytics/AdType;->REWARDED_VIDEO:Lfast/dic/dict/analytics/AdType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdClicked$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onRewardedVideoClosed(Z)V
    .locals 4

    .line 475
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApoDeal onRewardedVideoClosed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v0

    .line 480
    iget-object v1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v1}, Lfast/dic/dict/services/FDAds;->access$getCurrentAdForFeature$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/services/FDAds$AdForFeature;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lfast/dic/dict/services/FDAds$AdForFeature;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 478
    :goto_0
    invoke-virtual {v0, p1, v1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logRewardedAdCompleted(ZLjava/lang/String;)V

    .line 482
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v0

    .line 483
    sget-object v1, Lfast/dic/dict/analytics/AdType;->REWARDED_VIDEO:Lfast/dic/dict/analytics/AdType;

    .line 482
    invoke-virtual {v0, v1, p1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdClosed(Lfast/dic/dict/analytics/AdType;Z)V

    if-nez p1, :cond_1

    .line 488
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-virtual {p0}, Lfast/dic/dict/services/FDAds;->getRewardedHasFinishedListener()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onRewardedVideoExpired()V
    .locals 4

    .line 493
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ApoDeal onRewardedVideoExpired"

    invoke-virtual {v0, v3, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v0

    sget-object v2, Lfast/dic/dict/analytics/AdType;->REWARDED_VIDEO:Lfast/dic/dict/analytics/AdType;

    invoke-virtual {v0, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdExpired(Lfast/dic/dict/analytics/AdType;)V

    .line 495
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$get_rewardedAdStatus$p(Lfast/dic/dict/services/FDAds;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v2, Lfast/dic/dict/services/FDAds$RewardedAdStatus;->FAILED:Lfast/dic/dict/services/FDAds$RewardedAdStatus;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 496
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-virtual {p0}, Lfast/dic/dict/services/FDAds;->getRewardedHasFinishedListener()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRewardedVideoFailedToLoad()V
    .locals 5

    .line 418
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ApoDeal onRewardedVideoFailedToLoad"

    invoke-virtual {v0, v3, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v0

    sget-object v2, Lfast/dic/dict/analytics/AdType;->REWARDED_VIDEO:Lfast/dic/dict/analytics/AdType;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdFailedToLoad$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$get_rewardedAdStatus$p(Lfast/dic/dict/services/FDAds;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v2, Lfast/dic/dict/services/FDAds$RewardedAdStatus;->FAILED:Lfast/dic/dict/services/FDAds$RewardedAdStatus;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 421
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-virtual {p0}, Lfast/dic/dict/services/FDAds;->getRewardedHasFinishedListener()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRewardedVideoFinished(DLjava/lang/String;)V
    .locals 8

    const-string v0, "currency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ApoDeal onRewardedVideoFinished amount: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v1

    .line 446
    sget-object v2, Lfast/dic/dict/analytics/AdType;->REWARDED_VIDEO:Lfast/dic/dict/analytics/AdType;

    .line 449
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$getCurrentAdForFeature$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/services/FDAds$AdForFeature;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfast/dic/dict/services/FDAds$AdForFeature;->name()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    move-wide v3, p1

    move-object v5, p3

    .line 445
    invoke-virtual/range {v1 .. v6}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdRewardEarned(Lfast/dic/dict/analytics/AdType;DLjava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p1}, Lfast/dic/dict/services/FDAds;->access$getCurrentAdForFeature$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/services/FDAds$AdForFeature;

    move-result-object p1

    sget-object p2, Lfast/dic/dict/services/FDAds$AdForFeature;->Translator:Lfast/dic/dict/services/FDAds$AdForFeature;

    .line 455
    iget-object p3, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_1

    .line 453
    invoke-static {p3}, Lfast/dic/dict/services/FDAds;->access$getLocalStorage$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/database/LocalStorage;->validRewardedAdsForTranslator()Z

    .line 454
    iget-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-virtual {p1}, Lfast/dic/dict/services/FDAds;->getRewardedHasFinishedListener()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 455
    :cond_1
    invoke-static {p3}, Lfast/dic/dict/services/FDAds;->access$getCurrentAdForFeature$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/services/FDAds$AdForFeature;

    move-result-object p1

    sget-object p2, Lfast/dic/dict/services/FDAds$AdForFeature;->AiTranslator:Lfast/dic/dict/services/FDAds$AdForFeature;

    .line 458
    iget-object p3, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    if-ne p1, p2, :cond_2

    .line 456
    invoke-static {p3}, Lfast/dic/dict/services/FDAds;->access$getLocalStorage$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/database/LocalStorage;->validRewardedAdsForAiTranslator()Z

    .line 457
    iget-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-virtual {p1}, Lfast/dic/dict/services/FDAds;->getRewardedHasFinishedListener()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 458
    :cond_2
    invoke-static {p3}, Lfast/dic/dict/services/FDAds;->access$getCurrentAdForFeature$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/services/FDAds$AdForFeature;

    move-result-object p1

    sget-object p2, Lfast/dic/dict/services/FDAds$AdForFeature;->ImageTranslator:Lfast/dic/dict/services/FDAds$AdForFeature;

    .line 462
    iget-object p3, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    const/16 v1, 0xa

    if-ne p1, p2, :cond_3

    .line 459
    invoke-static {p3}, Lfast/dic/dict/services/FDAds;->access$getLocalStorage$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/database/LocalStorage;->validRewardedAdsForImageTranslator()Z

    .line 460
    iget-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p1}, Lfast/dic/dict/services/FDAds;->access$getLocalStorage$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lfast/dic/dict/database/LocalStorage;->setImageTranslatorLimitation(I)V

    .line 461
    iget-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-virtual {p1}, Lfast/dic/dict/services/FDAds;->getRewardedHasFinishedListener()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 462
    :cond_3
    invoke-static {p3}, Lfast/dic/dict/services/FDAds;->access$getCurrentAdForFeature$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/services/FDAds$AdForFeature;

    move-result-object p1

    sget-object p2, Lfast/dic/dict/services/FDAds$AdForFeature;->SentencePronunciation:Lfast/dic/dict/services/FDAds$AdForFeature;

    if-ne p1, p2, :cond_4

    .line 463
    iget-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p1}, Lfast/dic/dict/services/FDAds;->access$getLocalStorage$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/database/LocalStorage;->validRewardedAdsForSentencePronunciation()Z

    .line 464
    iget-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p1}, Lfast/dic/dict/services/FDAds;->access$getLocalStorage$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/database/LocalStorage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lfast/dic/dict/database/LocalStorage;->setSentencePronunciationLimitation(I)V

    .line 467
    iget-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-virtual {p1}, Lfast/dic/dict/services/FDAds;->getRewardedHasFinishedListener()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :cond_4
    :goto_1
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0, v7}, Lfast/dic/dict/services/FDAds;->access$setCurrentAdForFeature$p(Lfast/dic/dict/services/FDAds;Lfast/dic/dict/services/FDAds$AdForFeature;)V

    return-void
.end method

.method public onRewardedVideoLoaded(Z)V
    .locals 7

    .line 405
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$get_isRewardedVideoShown$p(Lfast/dic/dict/services/FDAds;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ApoDeal RewardedVideo Loaded"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v1

    .line 408
    sget-object v2, Lfast/dic/dict/analytics/AdType;->REWARDED_VIDEO:Lfast/dic/dict/analytics/AdType;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v4, p1

    .line 407
    invoke-static/range {v1 .. v6}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdLoaded$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 411
    iget-object p1, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lfast/dic/dict/services/FDAds;->access$set_isRewardedVideoShown$p(Lfast/dic/dict/services/FDAds;Z)V

    .line 414
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$get_rewardedAdStatus$p(Lfast/dic/dict/services/FDAds;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/services/FDAds$RewardedAdStatus;->LOADED:Lfast/dic/dict/services/FDAds$RewardedAdStatus;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onRewardedVideoShowFailed()V
    .locals 5

    .line 430
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ApoDeal onRewardedVideoShowFailed"

    invoke-virtual {v0, v3, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v0

    sget-object v2, Lfast/dic/dict/analytics/AdType;->REWARDED_VIDEO:Lfast/dic/dict/analytics/AdType;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdShowFailed$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 432
    iget-object v0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {v0}, Lfast/dic/dict/services/FDAds;->access$get_rewardedAdStatus$p(Lfast/dic/dict/services/FDAds;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v2, Lfast/dic/dict/services/FDAds$RewardedAdStatus;->FAILED:Lfast/dic/dict/services/FDAds$RewardedAdStatus;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 433
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-virtual {p0}, Lfast/dic/dict/services/FDAds;->getRewardedHasFinishedListener()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRewardedVideoShown()V
    .locals 3

    .line 425
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ApoDeal onRewardedVideoShown"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    iget-object p0, p0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;->this$0:Lfast/dic/dict/services/FDAds;

    invoke-static {p0}, Lfast/dic/dict/services/FDAds;->access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    sget-object v0, Lfast/dic/dict/analytics/AdType;->REWARDED_VIDEO:Lfast/dic/dict/analytics/AdType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdShown$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
