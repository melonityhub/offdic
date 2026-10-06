package fast.dic.dict.services;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.appodeal.ads.Appodeal;
import com.appodeal.ads.BannerCallbacks;
import com.appodeal.ads.BannerView;
import com.appodeal.ads.InterstitialCallbacks;
import com.appodeal.ads.RewardedVideoCallbacks;
import com.appodeal.ads.initializing.ApdInitializationCallback;
import com.google.firebase.Firebase;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.firebase.crashlytics.FirebaseCrashlyticsKt;
import com.ironsource.U3;
import com.parse.ParseException;
import com.parse.ParseUser;
import dagger.hilt.android.qualifiers.ApplicationContext;
import fast.dic.dict.R;
import fast.dic.dict.analytics.AdType;
import fast.dic.dict.analytics.FirebaseUserPropertiesManager;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.p000const.ConfigConstKt;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.FDParseUserExtensionKt;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.StringExtKt;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDAds.kt */
/* JADX INFO: loaded from: classes11.dex */
@Singleton
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0002BCB+\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\b\u0001\u0010\u0004\u001a\u00020\u0005:\u0002\b\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u001a\u0002\b\u000b¢\u0006\u0004\b\t\u0010\nJ\u0006\u0010,\u001a\u00020\u000fJ\u000e\u0010-\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020\rJ\u0006\u0010/\u001a\u00020\u001eJ\u0006\u00100\u001a\u00020\u001eJ\u0006\u00101\u001a\u00020\u000fJ\u001e\u00102\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020\r2\u000e\b\u0002\u00103\u001a\b\u0012\u0004\u0012\u00020\u001e04J\u0010\u00105\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020\rH\u0002J\u0010\u00106\u001a\u00020\u001e2\u0006\u0010.\u001a\u00020\rH\u0002J\u000e\u00107\u001a\u00020\u001e2\u0006\u00108\u001a\u00020$J\u0006\u00109\u001a\u00020\u001eJ\b\u0010:\u001a\u00020;H\u0002J\b\u0010<\u001a\u00020\u001eH\u0002J\b\u0010=\u001a\u00020\u001eH\u0002J\b\u0010>\u001a\u00020\u001eH\u0002J\b\u0010?\u001a\u00020\u001eH\u0002J\u0006\u0010@\u001a\u00020\u000fJ\b\u0010A\u001a\u00020\u001eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R5\u0010\u0019\u001a\u001d\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\u0004\u0012\u00020\u001e0\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020'0&X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010(\u001a\b\u0012\u0004\u0012\u00020'0)¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+Ê\u0001\u0002\bE¨\u0006D"}, d2 = {"Lfast/dic/dict/services/FDAds;", "", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "appContext", "Landroid/content/Context;", "Ldagger/hilt/android/qualifiers/ApplicationContext;", "firebaseUserPropertiesManager", "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "<init>", "(Lfast/dic/dict/database/LocalStorage;Landroid/content/Context;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V", "Ljavax/inject/Inject;", "activityContext", "Landroid/app/Activity;", "_isInterstitialShown", "", "_isRewardedVideoShown", "sessionSearchCount", "", "lastSearchAt", "", "interstitialCountdown", "Lfast/dic/dict/services/InterstitialCountdownDialog;", "mainHandler", "Landroid/os/Handler;", "rewardedHasFinishedListener", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "state", "", "getRewardedHasFinishedListener", "()Lkotlin/jvm/functions/Function1;", "setRewardedHasFinishedListener", "(Lkotlin/jvm/functions/Function1;)V", "currentAdForFeature", "Lfast/dic/dict/services/FDAds$AdForFeature;", "_rewardedAdStatus", "Landroidx/lifecycle/MutableLiveData;", "Lfast/dic/dict/services/FDAds$RewardedAdStatus;", "rewardedAdStatus", "Landroidx/lifecycle/LiveData;", "getRewardedAdStatus", "()Landroidx/lifecycle/LiveData;", "isRewardedAdsEnabled", "initializeAds", "activity", "showBanner", "hideBanner", "hasActivityContext", U3.h.H, "onShowReason", "Lkotlin/Function0;", "startInterstitialCountdown", "presentInterstitialAfterCountdown", "showRewardedAdsFor", "feature", "hideInterstitial", "getUserId", "", "initConfig", "configureAdApoDealBanner", "configureAdApoDealInterstitial", "configureAdApoDealRewardedVideo", "isReadyToShowFullscreenAds", "markInterstitialShown", "AdForFeature", "RewardedAdStatus", "app", "Ljavax/inject/Singleton;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDAds {
    private boolean _isInterstitialShown;
    private boolean _isRewardedVideoShown;
    private MutableLiveData<RewardedAdStatus> _rewardedAdStatus;
    private Activity activityContext;
    private final Context appContext;
    private AdForFeature currentAdForFeature;
    private final FirebaseUserPropertiesManager firebaseUserPropertiesManager;
    private InterstitialCountdownDialog interstitialCountdown;
    private long lastSearchAt;
    private final LocalStorage localStorage;
    private final Handler mainHandler;
    private final LiveData<RewardedAdStatus> rewardedAdStatus;
    private Function1<? super Boolean, Unit> rewardedHasFinishedListener;
    private int sessionSearchCount;

    /* JADX INFO: compiled from: FDAds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/services/FDAds$AdForFeature;", "", "<init>", "(Ljava/lang/String;I)V", "Translator", "AiTranslator", "ImageTranslator", "SentencePronunciation", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public enum AdForFeature {
        Translator,
        AiTranslator,
        ImageTranslator,
        SentencePronunciation;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<AdForFeature> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: FDAds.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lfast/dic/dict/services/FDAds$RewardedAdStatus;", "", "<init>", "(Ljava/lang/String;I)V", "LOADING", "LOADED", "FAILED", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public enum RewardedAdStatus {
        LOADING,
        LOADED,
        FAILED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<RewardedAdStatus> getEntries() {
            return $ENTRIES;
        }
    }

    public final boolean isRewardedAdsEnabled() {
        return false;
    }

    @Inject
    public FDAds(LocalStorage localStorage, @ApplicationContext Context appContext, FirebaseUserPropertiesManager firebaseUserPropertiesManager) {
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(firebaseUserPropertiesManager, "firebaseUserPropertiesManager");
        this.localStorage = localStorage;
        this.appContext = appContext;
        this.firebaseUserPropertiesManager = firebaseUserPropertiesManager;
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.rewardedHasFinishedListener = new Function1() { // from class: fast.dic.dict.services.FDAds$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((Boolean) obj).booleanValue();
                return Unit.INSTANCE;
            }
        };
        MutableLiveData<RewardedAdStatus> mutableLiveData = new MutableLiveData<>(RewardedAdStatus.LOADING);
        this._rewardedAdStatus = mutableLiveData;
        this.rewardedAdStatus = mutableLiveData;
    }

    public final Function1<Boolean, Unit> getRewardedHasFinishedListener() {
        return this.rewardedHasFinishedListener;
    }

    public final void setRewardedHasFinishedListener(Function1<? super Boolean, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.rewardedHasFinishedListener = function1;
    }

    public final LiveData<RewardedAdStatus> getRewardedAdStatus() {
        return this.rewardedAdStatus;
    }

    public final void initializeAds(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.activityContext = activity;
        initConfig();
    }

    public final void showBanner() {
        try {
            if (FDParseUserExtensionKt.hasFreePlan()) {
                if (!Appodeal.isInitialized(64)) {
                    initConfig();
                    return;
                }
                if (!Appodeal.isLoaded(64)) {
                    Activity activity = this.activityContext;
                    if (activity == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                        activity = null;
                    }
                    Appodeal.cache$default(activity, 64, 0, 4, null);
                }
                Activity activity2 = this.activityContext;
                if (activity2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                    activity2 = null;
                }
                Appodeal.show$default(activity2, 64, null, 4, null);
            }
        } catch (Exception e) {
            FirebaseCrashlyticsKt.getCrashlytics(Firebase.INSTANCE).recordException(e);
            e.printStackTrace();
        }
    }

    public final void hideBanner() {
        try {
            if (!Appodeal.isInitialized(64)) {
                initConfig();
            }
            Activity activity = this.activityContext;
            if (activity == null) {
                Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                activity = null;
            }
            Appodeal.hide(activity, 64);
            Appodeal.destroy(64);
            Appodeal.destroy(3);
            Appodeal.destroy(128);
        } catch (Exception e) {
            FirebaseCrashlyticsKt.getCrashlytics(Firebase.INSTANCE).recordException(e);
            e.printStackTrace();
        }
    }

    public final boolean hasActivityContext() {
        return this.activityContext != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void showInterstitial$default(FDAds fDAds, Activity activity, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = new Function0() { // from class: fast.dic.dict.services.FDAds$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Unit.INSTANCE;
                }
            };
        }
        fDAds.showInterstitial(activity, function0);
    }

    public final void showInterstitial(Activity activity, Function0<Unit> onShowReason) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onShowReason, "onShowReason");
        try {
            if (FDParseUserExtensionKt.hasFreePlan()) {
                this.localStorage.incrementSearchCount();
                int adsSearchCount = this.localStorage.getAdsSearchCount();
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j = this.lastSearchAt;
                int i = 1;
                if (j != 0 && jCurrentTimeMillis - j < 300000) {
                    i = 1 + this.sessionSearchCount;
                }
                this.sessionSearchCount = i;
                this.lastSearchAt = jCurrentTimeMillis;
                if (ArraysKt.contains(ConfigConstKt.getAD_EXPLANATION_POPUP_TRIGGERS(), Integer.valueOf(adsSearchCount))) {
                    onShowReason.invoke();
                    return;
                }
                if (!isReadyToShowFullscreenAds()) {
                    LoggerKt.getLogger().warn("Prevent showing interstitial ads. It is not ready to show full screen ads.", new Object[0]);
                    return;
                }
                if (!Appodeal.isInitialized(3)) {
                    initConfig();
                } else if (!Appodeal.isLoaded(3)) {
                    Appodeal.cache$default(activity, 3, 0, 4, null);
                } else {
                    if (this.interstitialCountdown != null) {
                        return;
                    }
                    startInterstitialCountdown(activity);
                }
            }
        } catch (Exception e) {
            FirebaseCrashlyticsKt.getCrashlytics(Firebase.INSTANCE).recordException(e);
            e.printStackTrace();
        }
    }

    private final void startInterstitialCountdown(final Activity activity) {
        if (activity.isFinishing() || activity.isDestroyed()) {
            return;
        }
        InterstitialCountdownDialog interstitialCountdownDialog = new InterstitialCountdownDialog(activity, 2, new Function0() { // from class: fast.dic.dict.services.FDAds$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FDAds.startInterstitialCountdown$lambda$0(this.f$0, activity);
            }
        }, new Function1() { // from class: fast.dic.dict.services.FDAds$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FDAds.startInterstitialCountdown$lambda$1(this.f$0, (InterstitialCountdownDialog) obj);
            }
        });
        interstitialCountdownDialog.show();
        this.interstitialCountdown = interstitialCountdownDialog;
    }

    static final Unit startInterstitialCountdown$lambda$0(FDAds fDAds, Activity activity) {
        fDAds.presentInterstitialAfterCountdown(activity);
        return Unit.INSTANCE;
    }

    static final Unit startInterstitialCountdown$lambda$1(FDAds fDAds, InterstitialCountdownDialog closed) {
        Intrinsics.checkNotNullParameter(closed, "closed");
        if (fDAds.interstitialCountdown == closed) {
            fDAds.interstitialCountdown = null;
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void presentInterstitialAfterCountdown(Activity activity) {
        Lifecycle lifecycle;
        Lifecycle.State state;
        try {
            LifecycleOwner lifecycleOwner = activity instanceof LifecycleOwner ? (LifecycleOwner) activity : null;
            boolean zIsAtLeast = (lifecycleOwner == null || (lifecycle = lifecycleOwner.get$lifecycle()) == null || (state = lifecycle.getState()) == null) ? true : state.isAtLeast(Lifecycle.State.RESUMED);
            if (activity.isFinishing() || activity.isDestroyed() || !zIsAtLeast || !Appodeal.isLoaded(3) || !Appodeal.show$default(activity, 3, null, 4, null)) {
                InterstitialCountdownDialog interstitialCountdownDialog = this.interstitialCountdown;
                if (interstitialCountdownDialog != null) {
                    interstitialCountdownDialog.close();
                    return;
                }
                return;
            }
            markInterstitialShown();
        } catch (Exception e) {
            InterstitialCountdownDialog interstitialCountdownDialog2 = this.interstitialCountdown;
            if (interstitialCountdownDialog2 != null) {
                interstitialCountdownDialog2.close();
            }
            FirebaseCrashlyticsKt.getCrashlytics(Firebase.INSTANCE).recordException(e);
            e.printStackTrace();
        }
    }

    public final void showRewardedAdsFor(AdForFeature feature) {
        Intrinsics.checkNotNullParameter(feature, "feature");
        LoggerKt.getLogger().debug("Rewarded ads are disabled via feature flag", new Object[0]);
        this.rewardedHasFinishedListener.invoke(false);
    }

    public final void hideInterstitial() {
        if (!Appodeal.isInitialized(3)) {
            initConfig();
        }
        Activity activity = this.activityContext;
        if (activity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("activityContext");
            activity = null;
        }
        Appodeal.hide(activity, 3);
    }

    private final String getUserId() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser != null) {
            String email = fDParseUser.getEmail();
            Intrinsics.checkNotNullExpressionValue(email, "getEmail(...)");
            return StringExtKt.urlEncoded(email);
        }
        return "";
    }

    private final void initConfig() {
        if (FDParseUserExtensionKt.hasFreePlan()) {
            Appodeal.muteVideosIfCallsMuted(true);
            Appodeal.setAutoCache(3, false);
            Appodeal.setUserId(getUserId());
            Activity activity = this.activityContext;
            BannerView bannerView = null;
            if (activity != null) {
                if (activity == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("activityContext");
                    activity = null;
                }
                bannerView = (BannerView) activity.findViewById(R.id.banner_view);
            }
            if (bannerView != null) {
                Appodeal.setBannerViewId(bannerView.getId());
            } else {
                FirebaseCrashlytics.getInstance().log("banner_view not present in current activity; skipping setBannerViewId");
            }
            configureAdApoDealBanner();
            configureAdApoDealInterstitial();
            Appodeal.initialize(this.appContext, ConfigConstKt.APPODEAL_API_KEY, 67, new ApdInitializationCallback() { // from class: fast.dic.dict.services.FDAds$$ExternalSyntheticLambda0
                @Override // com.appodeal.ads.initializing.ApdInitializationCallback
                public final void onInitializationFinished(List list) {
                    FDAds.initConfig$lambda$0(list);
                }
            });
        }
    }

    static final void initConfig$lambda$0(List list) {
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        LoggerKt.getLogger().error("Appodeal onInitializationFinished is called with errors = " + list, new Object[0]);
    }

    private final void configureAdApoDealBanner() {
        Appodeal.setBannerCallbacks(new BannerCallbacks() { // from class: fast.dic.dict.services.FDAds.configureAdApoDealBanner.1
            @Override // com.appodeal.ads.BannerCallbacks
            public void onBannerLoaded(int height, boolean isPrecache) {
                LoggerKt.getLogger().debug("Log", "ApoDeal  Banner Loaded");
                FirebaseUserPropertiesManager.logAdLoaded$default(FDAds.this.firebaseUserPropertiesManager, AdType.BANNER, null, isPrecache, 2, null);
                if (FDParseUserExtensionKt.hasFreePlan()) {
                    FDAds.this.showBanner();
                }
            }

            @Override // com.appodeal.ads.BannerCallbacks
            public void onBannerFailedToLoad() {
                LoggerKt.getLogger().debug("configureAdApoDealBanner: onBannerFailedToLoad.", new Object[0]);
                FirebaseUserPropertiesManager.logAdFailedToLoad$default(FDAds.this.firebaseUserPropertiesManager, AdType.BANNER, null, 2, null);
            }

            @Override // com.appodeal.ads.BannerCallbacks
            public void onBannerShown() {
                LoggerKt.getLogger().debug("configureAdApoDealBanner: onBannerShown.", new Object[0]);
                FirebaseUserPropertiesManager.logAdShown$default(FDAds.this.firebaseUserPropertiesManager, AdType.BANNER, null, 2, null);
            }

            @Override // com.appodeal.ads.BannerCallbacks
            public void onBannerShowFailed() {
                LoggerKt.getLogger().debug("configureAdApoDealBanner: onBannerShowFailed.", new Object[0]);
                FirebaseUserPropertiesManager.logAdShowFailed$default(FDAds.this.firebaseUserPropertiesManager, AdType.BANNER, null, 2, null);
            }

            @Override // com.appodeal.ads.BannerCallbacks
            public void onBannerClicked() {
                FirebaseUserPropertiesManager.logAdClicked$default(FDAds.this.firebaseUserPropertiesManager, AdType.BANNER, null, 2, null);
            }

            @Override // com.appodeal.ads.BannerCallbacks
            public void onBannerExpired() {
                LoggerKt.getLogger().debug("configureAdApoDealBanner: onBannerExpired.", new Object[0]);
                FDAds.this.firebaseUserPropertiesManager.logAdExpired(AdType.BANNER);
            }
        });
    }

    /* JADX INFO: renamed from: fast.dic.dict.services.FDAds$configureAdApoDealInterstitial$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: FDAds.kt */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\u0003H\u0016J\b\u0010\t\u001a\u00020\u0003H\u0016J\b\u0010\n\u001a\u00020\u0003H\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016¨\u0006\f"}, d2 = {"fast/dic/dict/services/FDAds$configureAdApoDealInterstitial$1", "Lcom/appodeal/ads/InterstitialCallbacks;", "onInterstitialLoaded", "", "isPrecache", "", "onInterstitialFailedToLoad", "onInterstitialShown", "onInterstitialShowFailed", "onInterstitialClicked", "onInterstitialClosed", "onInterstitialExpired", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class C45371 implements InterstitialCallbacks {
        C45371() {
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialLoaded(boolean isPrecache) {
            LoggerKt.getLogger().debug("ApoDeal  Interstitial Loaded", new Object[0]);
            FirebaseUserPropertiesManager.logAdLoaded$default(FDAds.this.firebaseUserPropertiesManager, AdType.INTERSTITIAL, null, isPrecache, 2, null);
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialFailedToLoad() {
            LoggerKt.getLogger().debug("ApoDeal onInterstitialFailedToLoad", new Object[0]);
            FirebaseUserPropertiesManager.logAdFailedToLoad$default(FDAds.this.firebaseUserPropertiesManager, AdType.INTERSTITIAL, null, 2, null);
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialShown() {
            LoggerKt.getLogger().debug("ApoDeal onInterstitialShown", new Object[0]);
            FDAds.this._isInterstitialShown = true;
            FirebaseUserPropertiesManager.logAdShown$default(FDAds.this.firebaseUserPropertiesManager, AdType.INTERSTITIAL, null, 2, null);
            Handler handler = FDAds.this.mainHandler;
            final FDAds fDAds = FDAds.this;
            handler.post(new Runnable() { // from class: fast.dic.dict.services.FDAds$configureAdApoDealInterstitial$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FDAds.C45371.onInterstitialShown$lambda$0(fDAds);
                }
            });
        }

        static final void onInterstitialShown$lambda$0(FDAds fDAds) {
            InterstitialCountdownDialog interstitialCountdownDialog = fDAds.interstitialCountdown;
            if (interstitialCountdownDialog != null) {
                interstitialCountdownDialog.close();
            }
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialShowFailed() {
            LoggerKt.getLogger().debug("ApoDeal onInterstitialShowFailed", new Object[0]);
            FirebaseUserPropertiesManager.logAdShowFailed$default(FDAds.this.firebaseUserPropertiesManager, AdType.INTERSTITIAL, null, 2, null);
            Appodeal.destroy(3);
            Handler handler = FDAds.this.mainHandler;
            final FDAds fDAds = FDAds.this;
            handler.post(new Runnable() { // from class: fast.dic.dict.services.FDAds$configureAdApoDealInterstitial$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FDAds.C45371.onInterstitialShowFailed$lambda$1(fDAds);
                }
            });
        }

        static final void onInterstitialShowFailed$lambda$1(FDAds fDAds) {
            InterstitialCountdownDialog interstitialCountdownDialog = fDAds.interstitialCountdown;
            if (interstitialCountdownDialog != null) {
                interstitialCountdownDialog.close();
            }
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialClicked() {
            LoggerKt.getLogger().debug("ApoDeal onInterstitialClicked", new Object[0]);
            FirebaseUserPropertiesManager.logAdClicked$default(FDAds.this.firebaseUserPropertiesManager, AdType.INTERSTITIAL, null, 2, null);
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialClosed() {
            FDAds.this._isInterstitialShown = false;
            FirebaseUserPropertiesManager.logAdClosed$default(FDAds.this.firebaseUserPropertiesManager, AdType.INTERSTITIAL, false, 2, null);
        }

        @Override // com.appodeal.ads.InterstitialCallbacks
        public void onInterstitialExpired() {
            FDAds.this.firebaseUserPropertiesManager.logAdExpired(AdType.INTERSTITIAL);
        }
    }

    private final void configureAdApoDealInterstitial() {
        Appodeal.setInterstitialCallbacks(new C45371());
    }

    private final void configureAdApoDealRewardedVideo() {
        Appodeal.setRewardedVideoCallbacks(new RewardedVideoCallbacks() { // from class: fast.dic.dict.services.FDAds.configureAdApoDealRewardedVideo.1
            @Override // com.appodeal.ads.RewardedVideoCallbacks
            public void onRewardedVideoLoaded(boolean isPrecache) {
                if (!FDAds.this._isRewardedVideoShown) {
                    LoggerKt.getLogger().debug("ApoDeal RewardedVideo Loaded", new Object[0]);
                    FirebaseUserPropertiesManager.logAdLoaded$default(FDAds.this.firebaseUserPropertiesManager, AdType.REWARDED_VIDEO, null, isPrecache, 2, null);
                    FDAds.this._isRewardedVideoShown = true;
                }
                FDAds.this._rewardedAdStatus.setValue(RewardedAdStatus.LOADED);
            }

            @Override // com.appodeal.ads.RewardedVideoCallbacks
            public void onRewardedVideoFailedToLoad() {
                LoggerKt.getLogger().debug("ApoDeal onRewardedVideoFailedToLoad", new Object[0]);
                FirebaseUserPropertiesManager.logAdFailedToLoad$default(FDAds.this.firebaseUserPropertiesManager, AdType.REWARDED_VIDEO, null, 2, null);
                FDAds.this._rewardedAdStatus.setValue(RewardedAdStatus.FAILED);
                FDAds.this.getRewardedHasFinishedListener().invoke(false);
            }

            @Override // com.appodeal.ads.RewardedVideoCallbacks
            public void onRewardedVideoShown() {
                LoggerKt.getLogger().debug("ApoDeal onRewardedVideoShown", new Object[0]);
                FirebaseUserPropertiesManager.logAdShown$default(FDAds.this.firebaseUserPropertiesManager, AdType.REWARDED_VIDEO, null, 2, null);
            }

            @Override // com.appodeal.ads.RewardedVideoCallbacks
            public void onRewardedVideoShowFailed() {
                LoggerKt.getLogger().debug("ApoDeal onRewardedVideoShowFailed", new Object[0]);
                FirebaseUserPropertiesManager.logAdShowFailed$default(FDAds.this.firebaseUserPropertiesManager, AdType.REWARDED_VIDEO, null, 2, null);
                FDAds.this._rewardedAdStatus.setValue(RewardedAdStatus.FAILED);
                FDAds.this.getRewardedHasFinishedListener().invoke(false);
            }

            @Override // com.appodeal.ads.RewardedVideoCallbacks
            public void onRewardedVideoClicked() {
                LoggerKt.getLogger().debug("ApoDeal onRewardedVideoClicked", new Object[0]);
                FirebaseUserPropertiesManager.logAdClicked$default(FDAds.this.firebaseUserPropertiesManager, AdType.REWARDED_VIDEO, null, 2, null);
            }

            @Override // com.appodeal.ads.RewardedVideoCallbacks
            public void onRewardedVideoFinished(double amount, String currency) {
                Intrinsics.checkNotNullParameter(currency, "currency");
                LoggerKt.getLogger().debug("ApoDeal onRewardedVideoFinished amount: " + amount + ", currency: " + currency, new Object[0]);
                FirebaseUserPropertiesManager firebaseUserPropertiesManager = FDAds.this.firebaseUserPropertiesManager;
                AdType adType = AdType.REWARDED_VIDEO;
                AdForFeature adForFeature = FDAds.this.currentAdForFeature;
                firebaseUserPropertiesManager.logAdRewardEarned(adType, amount, currency, adForFeature != null ? adForFeature.name() : null);
                AdForFeature adForFeature2 = FDAds.this.currentAdForFeature;
                AdForFeature adForFeature3 = AdForFeature.Translator;
                FDAds fDAds = FDAds.this;
                if (adForFeature2 == adForFeature3) {
                    fDAds.localStorage.validRewardedAdsForTranslator();
                    FDAds.this.getRewardedHasFinishedListener().invoke(true);
                } else {
                    AdForFeature adForFeature4 = fDAds.currentAdForFeature;
                    AdForFeature adForFeature5 = AdForFeature.AiTranslator;
                    FDAds fDAds2 = FDAds.this;
                    if (adForFeature4 == adForFeature5) {
                        fDAds2.localStorage.validRewardedAdsForAiTranslator();
                        FDAds.this.getRewardedHasFinishedListener().invoke(true);
                    } else {
                        AdForFeature adForFeature6 = fDAds2.currentAdForFeature;
                        AdForFeature adForFeature7 = AdForFeature.ImageTranslator;
                        FDAds fDAds3 = FDAds.this;
                        if (adForFeature6 == adForFeature7) {
                            fDAds3.localStorage.validRewardedAdsForImageTranslator();
                            FDAds.this.localStorage.setImageTranslatorLimitation(10);
                            FDAds.this.getRewardedHasFinishedListener().invoke(true);
                        } else if (fDAds3.currentAdForFeature == AdForFeature.SentencePronunciation) {
                            FDAds.this.localStorage.validRewardedAdsForSentencePronunciation();
                            FDAds.this.localStorage.setSentencePronunciationLimitation(10);
                            FDAds.this.getRewardedHasFinishedListener().invoke(true);
                        }
                    }
                }
                FDAds.this.currentAdForFeature = null;
            }

            @Override // com.appodeal.ads.RewardedVideoCallbacks
            public void onRewardedVideoClosed(boolean finished) {
                LoggerKt.getLogger().debug("ApoDeal onRewardedVideoClosed " + finished, new Object[0]);
                FirebaseUserPropertiesManager firebaseUserPropertiesManager = FDAds.this.firebaseUserPropertiesManager;
                AdForFeature adForFeature = FDAds.this.currentAdForFeature;
                firebaseUserPropertiesManager.logRewardedAdCompleted(finished, adForFeature != null ? adForFeature.name() : null);
                FDAds.this.firebaseUserPropertiesManager.logAdClosed(AdType.REWARDED_VIDEO, finished);
                if (finished) {
                    return;
                }
                FDAds.this.getRewardedHasFinishedListener().invoke(false);
            }

            @Override // com.appodeal.ads.RewardedVideoCallbacks
            public void onRewardedVideoExpired() {
                LoggerKt.getLogger().debug("ApoDeal onRewardedVideoExpired", new Object[0]);
                FDAds.this.firebaseUserPropertiesManager.logAdExpired(AdType.REWARDED_VIDEO);
                FDAds.this._rewardedAdStatus.setValue(RewardedAdStatus.FAILED);
                FDAds.this.getRewardedHasFinishedListener().invoke(false);
            }
        });
    }

    public final boolean isReadyToShowFullscreenAds() {
        long lastInterstitialTs = this.localStorage.getLastInterstitialTs();
        if (lastInterstitialTs > 0 && System.currentTimeMillis() - lastInterstitialTs < 75000) {
            return false;
        }
        int adsSearchCount = this.localStorage.getAdsSearchCount() - this.localStorage.getLastInterstitialCount();
        if (this.sessionSearchCount <= 1) {
            return adsSearchCount >= 5;
        }
        return adsSearchCount >= 2;
    }

    private final void markInterstitialShown() {
        this.localStorage.setLastInterstitialTs(System.currentTimeMillis());
        LocalStorage localStorage = this.localStorage;
        localStorage.setLastInterstitialCount(localStorage.getAdsSearchCount());
    }
}
