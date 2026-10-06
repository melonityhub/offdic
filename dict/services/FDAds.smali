.class public final Lfast/dic/dict/services/FDAds;
.super Ljava/lang/Object;
.source "FDAds.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/services/FDAds$AdForFeature;,
        Lfast/dic/dict/services/FDAds$RewardedAdStatus;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002BCB+\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0008\u0001\u0010\u0004\u001a\u00020\u0005:\u0002\u0008\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u001a\u0002\u0008\u000b\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0006\u0010,\u001a\u00020\u000fJ\u000e\u0010-\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020\rJ\u0006\u0010/\u001a\u00020\u001eJ\u0006\u00100\u001a\u00020\u001eJ\u0006\u00101\u001a\u00020\u000fJ\u001e\u00102\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020\r2\u000e\u0008\u0002\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u001e04J\u0010\u00105\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020\rH\u0002J\u0010\u00106\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020\rH\u0002J\u000e\u00107\u001a\u00020\u001e2\u0006\u00108\u001a\u00020$J\u0006\u00109\u001a\u00020\u001eJ\u0008\u0010:\u001a\u00020;H\u0002J\u0008\u0010<\u001a\u00020\u001eH\u0002J\u0008\u0010=\u001a\u00020\u001eH\u0002J\u0008\u0010>\u001a\u00020\u001eH\u0002J\u0008\u0010?\u001a\u00020\u001eH\u0002J\u0006\u0010@\u001a\u00020\u000fJ\u0008\u0010A\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R5\u0010\u0019\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u001e0\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\'0&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\'0)\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+\u00ca\u0001\u0002\u0008E\u00a8\u0006D"
    }
    d2 = {
        "Lfast/dic/dict/services/FDAds;",
        "",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "appContext",
        "Landroid/content/Context;",
        "Ldagger/hilt/android/qualifiers/ApplicationContext;",
        "firebaseUserPropertiesManager",
        "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "<init>",
        "(Lfast/dic/dict/database/LocalStorage;Landroid/content/Context;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V",
        "Ljavax/inject/Inject;",
        "activityContext",
        "Landroid/app/Activity;",
        "_isInterstitialShown",
        "",
        "_isRewardedVideoShown",
        "sessionSearchCount",
        "",
        "lastSearchAt",
        "",
        "interstitialCountdown",
        "Lfast/dic/dict/services/InterstitialCountdownDialog;",
        "mainHandler",
        "Landroid/os/Handler;",
        "rewardedHasFinishedListener",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "state",
        "",
        "getRewardedHasFinishedListener",
        "()Lkotlin/jvm/functions/Function1;",
        "setRewardedHasFinishedListener",
        "(Lkotlin/jvm/functions/Function1;)V",
        "currentAdForFeature",
        "Lfast/dic/dict/services/FDAds$AdForFeature;",
        "_rewardedAdStatus",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lfast/dic/dict/services/FDAds$RewardedAdStatus;",
        "rewardedAdStatus",
        "Landroidx/lifecycle/LiveData;",
        "getRewardedAdStatus",
        "()Landroidx/lifecycle/LiveData;",
        "isRewardedAdsEnabled",
        "initializeAds",
        "activity",
        "showBanner",
        "hideBanner",
        "hasActivityContext",
        "showInterstitial",
        "onShowReason",
        "Lkotlin/Function0;",
        "startInterstitialCountdown",
        "presentInterstitialAfterCountdown",
        "showRewardedAdsFor",
        "feature",
        "hideInterstitial",
        "getUserId",
        "",
        "initConfig",
        "configureAdApoDealBanner",
        "configureAdApoDealInterstitial",
        "configureAdApoDealRewardedVideo",
        "isReadyToShowFullscreenAds",
        "markInterstitialShown",
        "AdForFeature",
        "RewardedAdStatus",
        "app",
        "Ljavax/inject/Singleton;"
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
.field private _isInterstitialShown:Z

.field private _isRewardedVideoShown:Z

.field private _rewardedAdStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lfast/dic/dict/services/FDAds$RewardedAdStatus;",
            ">;"
        }
    .end annotation
.end field

.field private activityContext:Landroid/app/Activity;

.field private final appContext:Landroid/content/Context;

.field private currentAdForFeature:Lfast/dic/dict/services/FDAds$AdForFeature;

.field private final firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

.field private interstitialCountdown:Lfast/dic/dict/services/InterstitialCountdownDialog;

.field private lastSearchAt:J

.field private final localStorage:Lfast/dic/dict/database/LocalStorage;

.field private final mainHandler:Landroid/os/Handler;

.field private final rewardedAdStatus:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/services/FDAds$RewardedAdStatus;",
            ">;"
        }
    .end annotation
.end field

.field private rewardedHasFinishedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private sessionSearchCount:I


# direct methods
.method public constructor <init>(Lfast/dic/dict/database/LocalStorage;Landroid/content/Context;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "localStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseUserPropertiesManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lfast/dic/dict/services/FDAds;->localStorage:Lfast/dic/dict/database/LocalStorage;

    .line 45
    iput-object p2, p0, Lfast/dic/dict/services/FDAds;->appContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lfast/dic/dict/services/FDAds;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    .line 63
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lfast/dic/dict/services/FDAds;->mainHandler:Landroid/os/Handler;

    .line 64
    new-instance p1, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/services/FDAds;->rewardedHasFinishedListener:Lkotlin/jvm/functions/Function1;

    .line 67
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lfast/dic/dict/services/FDAds$RewardedAdStatus;->LOADING:Lfast/dic/dict/services/FDAds$RewardedAdStatus;

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfast/dic/dict/services/FDAds;->_rewardedAdStatus:Landroidx/lifecycle/MutableLiveData;

    .line 68
    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lfast/dic/dict/services/FDAds;->rewardedAdStatus:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$getCurrentAdForFeature$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/services/FDAds$AdForFeature;
    .locals 0

    .line 42
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->currentAdForFeature:Lfast/dic/dict/services/FDAds$AdForFeature;

    return-object p0
.end method

.method public static final synthetic access$getFirebaseUserPropertiesManager$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-object p0
.end method

.method public static final synthetic access$getInterstitialCountdown$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/services/InterstitialCountdownDialog;
    .locals 0

    .line 42
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->interstitialCountdown:Lfast/dic/dict/services/InterstitialCountdownDialog;

    return-object p0
.end method

.method public static final synthetic access$getLocalStorage$p(Lfast/dic/dict/services/FDAds;)Lfast/dic/dict/database/LocalStorage;
    .locals 0

    .line 42
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->localStorage:Lfast/dic/dict/database/LocalStorage;

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lfast/dic/dict/services/FDAds;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$get_isRewardedVideoShown$p(Lfast/dic/dict/services/FDAds;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lfast/dic/dict/services/FDAds;->_isRewardedVideoShown:Z

    return p0
.end method

.method public static final synthetic access$get_rewardedAdStatus$p(Lfast/dic/dict/services/FDAds;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 42
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->_rewardedAdStatus:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$setCurrentAdForFeature$p(Lfast/dic/dict/services/FDAds;Lfast/dic/dict/services/FDAds$AdForFeature;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lfast/dic/dict/services/FDAds;->currentAdForFeature:Lfast/dic/dict/services/FDAds$AdForFeature;

    return-void
.end method

.method public static final synthetic access$set_isInterstitialShown$p(Lfast/dic/dict/services/FDAds;Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lfast/dic/dict/services/FDAds;->_isInterstitialShown:Z

    return-void
.end method

.method public static final synthetic access$set_isRewardedVideoShown$p(Lfast/dic/dict/services/FDAds;Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lfast/dic/dict/services/FDAds;->_isRewardedVideoShown:Z

    return-void
.end method

.method private final configureAdApoDealBanner()V
    .locals 1

    .line 313
    new-instance v0, Lfast/dic/dict/services/FDAds$configureAdApoDealBanner$1;

    invoke-direct {v0, p0}, Lfast/dic/dict/services/FDAds$configureAdApoDealBanner$1;-><init>(Lfast/dic/dict/services/FDAds;)V

    check-cast v0, Lcom/appodeal/ads/BannerCallbacks;

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->setBannerCallbacks(Lcom/appodeal/ads/BannerCallbacks;)V

    return-void
.end method

.method private final configureAdApoDealInterstitial()V
    .locals 1

    .line 353
    new-instance v0, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;

    invoke-direct {v0, p0}, Lfast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1;-><init>(Lfast/dic/dict/services/FDAds;)V

    check-cast v0, Lcom/appodeal/ads/InterstitialCallbacks;

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->setInterstitialCallbacks(Lcom/appodeal/ads/InterstitialCallbacks;)V

    return-void
.end method

.method private final configureAdApoDealRewardedVideo()V
    .locals 1

    .line 403
    new-instance v0, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;

    invoke-direct {v0, p0}, Lfast/dic/dict/services/FDAds$configureAdApoDealRewardedVideo$1;-><init>(Lfast/dic/dict/services/FDAds;)V

    check-cast v0, Lcom/appodeal/ads/RewardedVideoCallbacks;

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->setRewardedVideoCallbacks(Lcom/appodeal/ads/RewardedVideoCallbacks;)V

    return-void
.end method

.method private final getUserId()Ljava/lang/String;
    .locals 1

    .line 258
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 260
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getEmail(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lfast/dic/dict/utils/StringExtKt;->urlEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private final initConfig()V
    .locals 3

    .line 268
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasFreePlan()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 271
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->muteVideosIfCallsMuted(Z)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 272
    invoke-static {v0, v1}, Lcom/appodeal/ads/Appodeal;->setAutoCache(IZ)V

    .line 273
    invoke-direct {p0}, Lfast/dic/dict/services/FDAds;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->setUserId(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lfast/dic/dict/services/FDAds;->activityContext:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez v0, :cond_1

    .line 279
    const-string v0, "activityContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    sget v1, Lfast/dic/dict/R$id;->banner_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/appodeal/ads/BannerView;

    :cond_2
    if-eqz v1, :cond_3

    .line 284
    invoke-virtual {v1}, Lcom/appodeal/ads/BannerView;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->setBannerViewId(I)V

    goto :goto_0

    .line 286
    :cond_3
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    .line 287
    const-string v1, "banner_view not present in current activity; skipping setBannerViewId"

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V

    .line 298
    :goto_0
    invoke-direct {p0}, Lfast/dic/dict/services/FDAds;->configureAdApoDealBanner()V

    .line 299
    invoke-direct {p0}, Lfast/dic/dict/services/FDAds;->configureAdApoDealInterstitial()V

    .line 302
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->appContext:Landroid/content/Context;

    .line 305
    new-instance v0, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda0;-><init>()V

    .line 301
    const-string v1, "9ba789854046103587277ee8ed36b6d904ca495954fe43ad"

    const/16 v2, 0x43

    invoke-static {p0, v1, v2, v0}, Lcom/appodeal/ads/Appodeal;->initialize(Landroid/content/Context;Ljava/lang/String;ILcom/appodeal/ads/initializing/ApdInitializationCallback;)V

    return-void
.end method

.method static final initConfig$lambda$0(Ljava/util/List;)V
    .locals 3

    .line 306
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Appodeal onInitializationFinished is called with errors = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final markInterstitialShown()V
    .locals 3

    .line 521
    iget-object v0, p0, Lfast/dic/dict/services/FDAds;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/database/LocalStorage;->setLastInterstitialTs(J)V

    .line 522
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->getAdsSearchCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lfast/dic/dict/database/LocalStorage;->setLastInterstitialCount(I)V

    return-void
.end method

.method private final presentInterstitialAfterCountdown(Landroid/app/Activity;)V
    .locals 3

    .line 208
    :try_start_0
    instance-of v0, p1, Landroidx/lifecycle/LifecycleOwner;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 210
    :goto_1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 211
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->isLoaded(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    .line 212
    invoke-static {p1, v0, v1, v2, v1}, Lcom/appodeal/ads/Appodeal;->show$default(Landroid/app/Activity;ILjava/lang/String;ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 220
    invoke-direct {p0}, Lfast/dic/dict/services/FDAds;->markInterstitialShown()V

    return-void

    .line 215
    :cond_2
    iget-object p1, p0, Lfast/dic/dict/services/FDAds;->interstitialCountdown:Lfast/dic/dict/services/InterstitialCountdownDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lfast/dic/dict/services/InterstitialCountdownDialog;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 222
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->interstitialCountdown:Lfast/dic/dict/services/InterstitialCountdownDialog;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->close()V

    .line 223
    :cond_4
    sget-object p0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKt;->getCrashlytics(Lcom/google/firebase/Firebase;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 224
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static final rewardedHasFinishedListener$lambda$0(Z)Lkotlin/Unit;
    .locals 0

    .line 64
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic showInterstitial$default(Lfast/dic/dict/services/FDAds;Landroid/app/Activity;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 126
    new-instance p2, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda4;-><init>()V

    .line 124
    :cond_0
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/services/FDAds;->showInterstitial(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static final showInterstitial$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 126
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final startInterstitialCountdown(Landroid/app/Activity;)V
    .locals 4

    .line 186
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance v0, Lfast/dic/dict/services/InterstitialCountdownDialog;

    .line 193
    new-instance v1, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/services/FDAds;Landroid/app/Activity;)V

    .line 194
    new-instance v2, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lfast/dic/dict/services/FDAds$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/services/FDAds;)V

    const/4 v3, 0x2

    .line 190
    invoke-direct {v0, p1, v3, v1, v2}, Lfast/dic/dict/services/InterstitialCountdownDialog;-><init>(Landroid/app/Activity;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 200
    invoke-virtual {v0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->show()V

    .line 201
    iput-object v0, p0, Lfast/dic/dict/services/FDAds;->interstitialCountdown:Lfast/dic/dict/services/InterstitialCountdownDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method static final startInterstitialCountdown$lambda$0(Lfast/dic/dict/services/FDAds;Landroid/app/Activity;)Lkotlin/Unit;
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lfast/dic/dict/services/FDAds;->presentInterstitialAfterCountdown(Landroid/app/Activity;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final startInterstitialCountdown$lambda$1(Lfast/dic/dict/services/FDAds;Lfast/dic/dict/services/InterstitialCountdownDialog;)Lkotlin/Unit;
    .locals 1

    const-string v0, "closed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lfast/dic/dict/services/FDAds;->interstitialCountdown:Lfast/dic/dict/services/InterstitialCountdownDialog;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 196
    iput-object p1, p0, Lfast/dic/dict/services/FDAds;->interstitialCountdown:Lfast/dic/dict/services/InterstitialCountdownDialog;

    .line 198
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getRewardedAdStatus()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lfast/dic/dict/services/FDAds$RewardedAdStatus;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->rewardedAdStatus:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public final getRewardedHasFinishedListener()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->rewardedHasFinishedListener:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final hasActivityContext()Z
    .locals 0

    .line 122
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->activityContext:Landroid/app/Activity;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hideBanner()V
    .locals 2

    const/16 v0, 0x40

    .line 107
    :try_start_0
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->isInitialized(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-direct {p0}, Lfast/dic/dict/services/FDAds;->initConfig()V

    .line 111
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->activityContext:Landroid/app/Activity;

    if-nez p0, :cond_1

    const-string p0, "activityContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-static {p0, v0}, Lcom/appodeal/ads/Appodeal;->hide(Landroid/app/Activity;I)V

    .line 113
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->destroy(I)V

    const/4 p0, 0x3

    .line 114
    invoke-static {p0}, Lcom/appodeal/ads/Appodeal;->destroy(I)V

    const/16 p0, 0x80

    .line 115
    invoke-static {p0}, Lcom/appodeal/ads/Appodeal;->destroy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 117
    sget-object v0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKt;->getCrashlytics(Lcom/google/firebase/Firebase;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 118
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final hideInterstitial()V
    .locals 2

    const/4 v0, 0x3

    .line 250
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->isInitialized(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    invoke-direct {p0}, Lfast/dic/dict/services/FDAds;->initConfig()V

    .line 254
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->activityContext:Landroid/app/Activity;

    if-nez p0, :cond_1

    const-string p0, "activityContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-static {p0, v0}, Lcom/appodeal/ads/Appodeal;->hide(Landroid/app/Activity;I)V

    return-void
.end method

.method public final initializeAds(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lfast/dic/dict/services/FDAds;->activityContext:Landroid/app/Activity;

    .line 76
    invoke-direct {p0}, Lfast/dic/dict/services/FDAds;->initConfig()V

    return-void
.end method

.method public final isReadyToShowFullscreenAds()Z
    .locals 6

    .line 503
    iget-object v0, p0, Lfast/dic/dict/services/FDAds;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getLastInterstitialTs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v0, 0x124f8

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    return v3

    .line 509
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/services/FDAds;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getAdsSearchCount()I

    move-result v0

    iget-object v1, p0, Lfast/dic/dict/services/FDAds;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v1}, Lfast/dic/dict/database/LocalStorage;->getLastInterstitialCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 512
    iget p0, p0, Lfast/dic/dict/services/FDAds;->sessionSearchCount:I

    const/4 v1, 0x1

    if-gt p0, v1, :cond_2

    const/4 p0, 0x5

    if-lt v0, p0, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    const/4 p0, 0x2

    if-lt v0, p0, :cond_3

    return v1

    :cond_3
    return v3
.end method

.method public final isRewardedAdsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setRewardedHasFinishedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lfast/dic/dict/services/FDAds;->rewardedHasFinishedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final showBanner()V
    .locals 6

    .line 81
    :try_start_0
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasFreePlan()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x40

    .line 85
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->isInitialized(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    invoke-direct {p0}, Lfast/dic/dict/services/FDAds;->initConfig()V

    return-void

    .line 94
    :cond_1
    invoke-static {v0}, Lcom/appodeal/ads/Appodeal;->isLoaded(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "activityContext"

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 95
    :try_start_1
    iget-object v1, p0, Lfast/dic/dict/services/FDAds;->activityContext:Landroid/app/Activity;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_2
    const/4 v5, 0x0

    invoke-static {v1, v0, v5, v3, v4}, Lcom/appodeal/ads/Appodeal;->cache$default(Landroid/app/Activity;IIILjava/lang/Object;)V

    .line 98
    :cond_3
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->activityContext:Landroid/app/Activity;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v4

    :cond_4
    invoke-static {p0, v0, v4, v3, v4}, Lcom/appodeal/ads/Appodeal;->show$default(Landroid/app/Activity;ILjava/lang/String;ILjava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 100
    sget-object v0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKt;->getCrashlytics(Lcom/google/firebase/Firebase;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 101
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final showInterstitial(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onShowReason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    :try_start_0
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasFreePlan()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/services/FDAds;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->incrementSearchCount()V

    .line 135
    iget-object v0, p0, Lfast/dic/dict/services/FDAds;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getAdsSearchCount()I

    move-result v0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 139
    iget-wide v3, p0, Lfast/dic/dict/services/FDAds;->lastSearchAt:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    sub-long v3, v1, v3

    const-wide/32 v7, 0x493e0

    cmp-long v3, v3, v7

    if-gez v3, :cond_1

    .line 140
    iget v3, p0, Lfast/dic/dict/services/FDAds;->sessionSearchCount:I

    add-int/2addr v6, v3

    .line 139
    :cond_1
    iput v6, p0, Lfast/dic/dict/services/FDAds;->sessionSearchCount:I

    .line 144
    iput-wide v1, p0, Lfast/dic/dict/services/FDAds;->lastSearchAt:J

    .line 147
    invoke-static {}, Lfast/dic/dict/const/ConfigConstKt;->getAD_EXPLANATION_POPUP_TRIGGERS()[Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    .line 152
    :cond_2
    invoke-virtual {p0}, Lfast/dic/dict/services/FDAds;->isReadyToShowFullscreenAds()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 153
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const-string p1, "Prevent showing interstitial ads. It is not ready to show full screen ads."

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/utils/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    const/4 p2, 0x3

    .line 157
    invoke-static {p2}, Lcom/appodeal/ads/Appodeal;->isInitialized(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 158
    invoke-direct {p0}, Lfast/dic/dict/services/FDAds;->initConfig()V

    return-void

    .line 164
    :cond_4
    invoke-static {p2}, Lcom/appodeal/ads/Appodeal;->isLoaded(I)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 p0, 0x4

    const/4 v1, 0x0

    .line 165
    invoke-static {p1, p2, v0, p0, v1}, Lcom/appodeal/ads/Appodeal;->cache$default(Landroid/app/Activity;IIILjava/lang/Object;)V

    return-void

    .line 169
    :cond_5
    iget-object p2, p0, Lfast/dic/dict/services/FDAds;->interstitialCountdown:Lfast/dic/dict/services/InterstitialCountdownDialog;

    if-eqz p2, :cond_6

    :goto_0
    return-void

    .line 173
    :cond_6
    invoke-direct {p0, p1}, Lfast/dic/dict/services/FDAds;->startInterstitialCountdown(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 175
    sget-object p1, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKt;->getCrashlytics(Lcom/google/firebase/Firebase;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final showRewardedAdsFor(Lfast/dic/dict/services/FDAds$AdForFeature;)V
    .locals 3

    const-string v0, "feature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Rewarded ads are disabled via feature flag"

    invoke-virtual {p1, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object p0, p0, Lfast/dic/dict/services/FDAds;->rewardedHasFinishedListener:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
