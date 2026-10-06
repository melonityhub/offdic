package fast.dic.dict.analytics;

import android.content.Context;
import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.ironsource.U3;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.parse.ParseException;
import com.parse.ParseUser;
import com.yandex.div.core.dagger.Names;
import dagger.hilt.android.qualifiers.ApplicationContext;
import fast.dic.dict.BuildConfig;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.FDParseUserExtensionKt;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FirebaseUserPropertiesManager.kt */
/* JADX INFO: loaded from: classes11.dex */
@Singleton
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B#\b\u0007\u0012\f\b\u0001\u0010\u0002\u001a\u00020\u0003:\u0002\b\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0002\b\t¢\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u001eH\u0002J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u000e\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001aJ\u0006\u0010!\u001a\u00020\u0016J\b\u0010\"\u001a\u00020\u001aH\u0002J\u0016\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u001eJ\u000e\u0010&\u001a\u00020\u00162\u0006\u0010'\u001a\u00020\u001eJ\u0016\u0010(\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001eJ\u0016\u0010(\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001aJ\u0016\u0010(\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020)J\u0016\u0010(\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020*J\u0016\u0010(\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020+J\u0016\u0010(\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020,J\u001e\u0010(\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u001eJ\u001e\u0010(\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u001aJ$\u0010.\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u00102\u001a\u00020\u001eJ\u001a\u00103\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u001aJ\u001a\u00105\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u001aJ\u001a\u00106\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\n\b\u0002\u00104\u001a\u0004\u0018\u00010\u001aJ\u001a\u00107\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\n\b\u0002\u00101\u001a\u0004\u0018\u00010\u001aJ\u0018\u00108\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\b\b\u0002\u00109\u001a\u00020\u001eJ\u000e\u0010:\u001a\u00020\u00162\u0006\u0010/\u001a\u000200J*\u0010;\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\u0006\u0010<\u001a\u00020,2\u0006\u0010=\u001a\u00020\u001a2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u001aJ\u001a\u0010?\u001a\u00020\u00162\u0006\u0010@\u001a\u00020\u001e2\n\b\u0002\u0010>\u001a\u0004\u0018\u00010\u001aJB\u0010A\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u001a2\u0006\u0010C\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020\u001a2\b\u0010E\u001a\u0004\u0018\u00010\u001a2\u0006\u0010F\u001a\u00020\u001a2\b\u0010G\u001a\u0004\u0018\u00010\u001a2\u0006\u0010H\u001a\u00020\u001aJF\u0010I\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u001a2\b\u0010C\u001a\u0004\u0018\u00010\u001a2\b\u0010D\u001a\u0004\u0018\u00010\u001a2\b\u0010E\u001a\u0004\u0018\u00010\u001a2\b\u0010F\u001a\u0004\u0018\u00010\u001a2\u0006\u0010J\u001a\u00020\u001a2\u0006\u0010H\u001a\u00020\u001aJ0\u0010K\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u001a2\u0006\u0010C\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020\u001a2\b\u0010E\u001a\u0004\u0018\u00010\u001a2\u0006\u0010H\u001a\u00020\u001aJ$\u0010L\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001a2\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010N\u001a\u00020\u001eJ$\u0010O\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001a2\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010N\u001a\u00020\u001eJ\"\u0010P\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010J\u001a\u00020\u001a2\n\b\u0002\u0010M\u001a\u0004\u0018\u00010\u001aJ\u001e\u0010Q\u001a\u00020\u00162\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010J\u001a\u0004\u0018\u00010\u001aJ\u0018\u0010R\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001a2\b\b\u0002\u0010N\u001a\u00020\u001eJ$\u0010S\u001a\u00020\u00162\u0006\u0010T\u001a\u00020\u001a2\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010N\u001a\u00020\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0012\u0010\u0013Ê\u0001\u0002\bV¨\u0006U"}, d2 = {"Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;", "", Names.CONTEXT, "Landroid/content/Context;", "Ldagger/hilt/android/qualifiers/ApplicationContext;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "<init>", "(Landroid/content/Context;Lfast/dic/dict/database/LocalStorage;)V", "Ljavax/inject/Inject;", "firebaseAnalytics", "Lcom/google/firebase/analytics/FirebaseAnalytics;", "getFirebaseAnalytics", "()Lcom/google/firebase/analytics/FirebaseAnalytics;", "firebaseAnalytics$delegate", "Lkotlin/Lazy;", "crashlytics", "Lcom/google/firebase/crashlytics/FirebaseCrashlytics;", "getCrashlytics", "()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;", "crashlytics$delegate", "setUserProperty", "", "property", "Lfast/dic/dict/analytics/UserProperty;", "value", "", "setCrashlyticsKey", U3.i.W, "Lfast/dic/dict/analytics/CrashlyticsKey;", "", "setUserId", "userId", "setStandardUserProperties", "getCurrentPlan", "setAuthenticatedUserProperties", "username", "emailVerified", "setUserDisabled", "isDisabled", "addCustomProperty", "", "", "", "", "crashlyticsKey", "logAdLoaded", "adType", "Lfast/dic/dict/analytics/AdType;", "adUnitId", "isPrecache", "logAdFailedToLoad", "errorMessage", "logAdShown", "logAdShowFailed", "logAdClicked", "logAdClosed", "wasCompleted", "logAdExpired", "logAdRewardEarned", IronSourceConstants.EVENTS_REWARD_AMOUNT, "rewardCurrency", "featureName", "logRewardedAdCompleted", "finished", "logPurchaseSuccess", "planType", "price", "currency", "duration", "paymentMethod", "productId", "buildFlavor", "logPurchaseFailed", "reason", "logDirectPayment", "logUserLogin", "method", "success", "logUserRegister", "logUserRegisterFailed", "logUserLogout", "logPasswordChange", "logEmailVerificationSent", "email", "app", "Ljavax/inject/Singleton;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FirebaseUserPropertiesManager {
    private final Context context;

    /* JADX INFO: renamed from: crashlytics$delegate, reason: from kotlin metadata */
    private final Lazy crashlytics;

    /* JADX INFO: renamed from: firebaseAnalytics$delegate, reason: from kotlin metadata */
    private final Lazy firebaseAnalytics;
    private final LocalStorage localStorage;

    @Inject
    public FirebaseUserPropertiesManager(@ApplicationContext Context context, LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(localStorage, "localStorage");
        this.context = context;
        this.localStorage = localStorage;
        this.firebaseAnalytics = LazyKt.lazy(new Function0() { // from class: fast.dic.dict.analytics.FirebaseUserPropertiesManager$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FirebaseAnalytics.getInstance(this.f$0.context);
            }
        });
        this.crashlytics = LazyKt.lazy(new Function0() { // from class: fast.dic.dict.analytics.FirebaseUserPropertiesManager$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FirebaseCrashlytics.getInstance();
            }
        });
    }

    private final FirebaseAnalytics getFirebaseAnalytics() {
        Object value = this.firebaseAnalytics.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (FirebaseAnalytics) value;
    }

    private final FirebaseCrashlytics getCrashlytics() {
        Object value = this.crashlytics.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (FirebaseCrashlytics) value;
    }

    private final void setUserProperty(UserProperty property, String value) {
        getFirebaseAnalytics().setUserProperty(property.getPropertyName(), value);
    }

    private final void setCrashlyticsKey(CrashlyticsKey key, boolean value) {
        getCrashlytics().setCustomKey(key.getKeyName(), value);
    }

    private final void setCrashlyticsKey(CrashlyticsKey key, String value) {
        getCrashlytics().setCustomKey(key.getKeyName(), value);
    }

    public final void setUserId(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        getFirebaseAnalytics().setUserId(userId);
        getCrashlytics().setUserId(userId);
    }

    public final void setStandardUserProperties() throws ParseException {
        boolean zHasFreePlan = FDParseUserExtensionKt.hasFreePlan();
        setUserProperty(UserProperty.IS_FREE, String.valueOf(zHasFreePlan));
        setCrashlyticsKey(CrashlyticsKey.IS_FREE, zHasFreePlan);
        boolean zIsDarkThemeOn = ContextExtKt.isDarkThemeOn(this.context);
        setUserProperty(UserProperty.IS_DARK_MODE, String.valueOf(zIsDarkThemeOn));
        setCrashlyticsKey(CrashlyticsKey.IS_DARK_MODE, zIsDarkThemeOn);
        boolean zCurrentLanguageIsPersian = this.localStorage.currentLanguageIsPersian();
        setUserProperty(UserProperty.APP_LANGUAGE_IS_PERSIAN, String.valueOf(zCurrentLanguageIsPersian));
        setCrashlyticsKey(CrashlyticsKey.APP_LANGUAGE_IS_PERSIAN, zCurrentLanguageIsPersian);
        boolean enableSync = this.localStorage.getEnableSync();
        setUserProperty(UserProperty.IS_ENABLED_SYNC, String.valueOf(enableSync));
        setCrashlyticsKey(CrashlyticsKey.IS_ENABLED_SYNC, enableSync);
        boolean makeKeyboardOpen = this.localStorage.getMakeKeyboardOpen();
        setUserProperty(UserProperty.IS_KEYBOARD_READY, String.valueOf(makeKeyboardOpen));
        setCrashlyticsKey(CrashlyticsKey.IS_KEYBOARD_READY, makeKeyboardOpen);
        boolean offlineMode = this.localStorage.getOfflineMode();
        setUserProperty(UserProperty.IS_OFFLINE_PRONUNCIATION, String.valueOf(offlineMode));
        setCrashlyticsKey(CrashlyticsKey.IS_OFFLINE_PRONUNCIATION, offlineMode);
        boolean zOfflineTranslatorIsEnabled = this.localStorage.offlineTranslatorIsEnabled();
        setUserProperty(UserProperty.IS_OFFLINE_TRANSLATOR, String.valueOf(zOfflineTranslatorIsEnabled));
        setCrashlyticsKey(CrashlyticsKey.IS_OFFLINE_TRANSLATOR, zOfflineTranslatorIsEnabled);
        setUserProperty(UserProperty.BUILD_FLAVOR, BuildConfig.FLAVOR);
        setCrashlyticsKey(CrashlyticsKey.BUILD_FLAVOR, BuildConfig.FLAVOR);
        boolean floatingWindow = this.localStorage.getFloatingWindow();
        setUserProperty(UserProperty.FLOATING_WINDOW, String.valueOf(floatingWindow));
        setCrashlyticsKey(CrashlyticsKey.FLOATING_WINDOW, floatingWindow);
        String currentPlan = getCurrentPlan();
        setUserProperty(UserProperty.CURRENT_PLAN, currentPlan);
        setCrashlyticsKey(CrashlyticsKey.CURRENT_PLAN, currentPlan);
    }

    private final String getCurrentPlan() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null) {
            return "FREE";
        }
        if (fDParseUser.hasPlan3InView() && fDParseUser.hasPlan2InView()) {
            return "PRO_AI";
        }
        if (fDParseUser.hasPlan3InView()) {
            return "AI";
        }
        if (fDParseUser.hasPlan2InView()) {
            return "PRO";
        }
        return fDParseUser.hasPlan1InView() ? "REMOVE_ADS" : "FREE";
    }

    public final void setAuthenticatedUserProperties(String username, boolean emailVerified) {
        Intrinsics.checkNotNullParameter(username, "username");
        setUserId(username);
        setUserProperty(UserProperty.EMAIL_VERIFIED, String.valueOf(emailVerified));
        setCrashlyticsKey(CrashlyticsKey.EMAIL_VERIFIED, emailVerified);
        boolean zHasSubscription = FDParseUserExtensionKt.hasSubscription();
        setUserProperty(UserProperty.HAS_SUBSCRIPTION, String.valueOf(zHasSubscription));
        setCrashlyticsKey(CrashlyticsKey.HAS_SUBSCRIPTION, zHasSubscription);
    }

    public final void setUserDisabled(boolean isDisabled) {
        setCrashlyticsKey(CrashlyticsKey.DISABLED, isDisabled);
    }

    public final void addCustomProperty(String key, boolean value) {
        Intrinsics.checkNotNullParameter(key, "key");
        getFirebaseAnalytics().setUserProperty(key, String.valueOf(value));
        getCrashlytics().setCustomKey(key, value);
    }

    public final void addCustomProperty(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        getFirebaseAnalytics().setUserProperty(key, value);
        getCrashlytics().setCustomKey(key, value);
    }

    public final void addCustomProperty(String key, int value) {
        Intrinsics.checkNotNullParameter(key, "key");
        getFirebaseAnalytics().setUserProperty(key, String.valueOf(value));
        getCrashlytics().setCustomKey(key, value);
    }

    public final void addCustomProperty(String key, long value) {
        Intrinsics.checkNotNullParameter(key, "key");
        getFirebaseAnalytics().setUserProperty(key, String.valueOf(value));
        getCrashlytics().setCustomKey(key, value);
    }

    public final void addCustomProperty(String key, float value) {
        Intrinsics.checkNotNullParameter(key, "key");
        getFirebaseAnalytics().setUserProperty(key, String.valueOf(value));
        getCrashlytics().setCustomKey(key, value);
    }

    public final void addCustomProperty(String key, double value) {
        Intrinsics.checkNotNullParameter(key, "key");
        getFirebaseAnalytics().setUserProperty(key, String.valueOf(value));
        getCrashlytics().setCustomKey(key, value);
    }

    public final void addCustomProperty(UserProperty property, CrashlyticsKey crashlyticsKey, boolean value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(crashlyticsKey, "crashlyticsKey");
        setUserProperty(property, String.valueOf(value));
        setCrashlyticsKey(crashlyticsKey, value);
    }

    public final void addCustomProperty(UserProperty property, CrashlyticsKey crashlyticsKey, String value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(crashlyticsKey, "crashlyticsKey");
        Intrinsics.checkNotNullParameter(value, "value");
        setUserProperty(property, value);
        setCrashlyticsKey(crashlyticsKey, value);
    }

    public static /* synthetic */ void logAdLoaded$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, AdType adType, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        firebaseUserPropertiesManager.logAdLoaded(adType, str, z);
    }

    public final void logAdLoaded(AdType adType, String adUnitId, boolean isPrecache) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.AD_TYPE.getParamName(), adType.getTypeName());
        bundle.putString(AnalyticsParam.AD_FORMAT.getParamName(), adType.getTypeName());
        bundle.putBoolean(AnalyticsParam.IS_PRECACHE.getParamName(), isPrecache);
        if (adUnitId != null) {
            bundle.putString(AnalyticsParam.AD_UNIT_ID.getParamName(), adUnitId);
        }
        getFirebaseAnalytics().logEvent(AnalyticsEvent.AD_LOADED.getEventName(), bundle);
    }

    public static /* synthetic */ void logAdFailedToLoad$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, AdType adType, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        firebaseUserPropertiesManager.logAdFailedToLoad(adType, str);
    }

    public final void logAdFailedToLoad(AdType adType, String errorMessage) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.AD_TYPE.getParamName(), adType.getTypeName());
        bundle.putString(AnalyticsParam.AD_FORMAT.getParamName(), adType.getTypeName());
        if (errorMessage != null) {
            bundle.putString(AnalyticsParam.ERROR_MESSAGE.getParamName(), errorMessage);
        }
        getFirebaseAnalytics().logEvent(AnalyticsEvent.AD_FAILED_TO_LOAD.getEventName(), bundle);
    }

    public static /* synthetic */ void logAdShown$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, AdType adType, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        firebaseUserPropertiesManager.logAdShown(adType, str);
    }

    public final void logAdShown(AdType adType, String adUnitId) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.AD_TYPE.getParamName(), adType.getTypeName());
        bundle.putString(AnalyticsParam.AD_FORMAT.getParamName(), adType.getTypeName());
        if (adUnitId != null) {
            bundle.putString(AnalyticsParam.AD_UNIT_ID.getParamName(), adUnitId);
        }
        getFirebaseAnalytics().logEvent(AnalyticsEvent.AD_IMPRESSION.getEventName(), bundle);
    }

    public static /* synthetic */ void logAdShowFailed$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, AdType adType, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        firebaseUserPropertiesManager.logAdShowFailed(adType, str);
    }

    public final void logAdShowFailed(AdType adType, String errorMessage) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.AD_TYPE.getParamName(), adType.getTypeName());
        bundle.putString(AnalyticsParam.AD_FORMAT.getParamName(), adType.getTypeName());
        if (errorMessage != null) {
            bundle.putString(AnalyticsParam.ERROR_MESSAGE.getParamName(), errorMessage);
        }
        getFirebaseAnalytics().logEvent(AnalyticsEvent.AD_SHOW_FAILED.getEventName(), bundle);
    }

    public static /* synthetic */ void logAdClicked$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, AdType adType, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        firebaseUserPropertiesManager.logAdClicked(adType, str);
    }

    public final void logAdClicked(AdType adType, String adUnitId) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.AD_TYPE.getParamName(), adType.getTypeName());
        bundle.putString(AnalyticsParam.AD_FORMAT.getParamName(), adType.getTypeName());
        if (adUnitId != null) {
            bundle.putString(AnalyticsParam.AD_UNIT_ID.getParamName(), adUnitId);
        }
        getFirebaseAnalytics().logEvent(AnalyticsEvent.AD_CLICK.getEventName(), bundle);
    }

    public static /* synthetic */ void logAdClosed$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, AdType adType, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        firebaseUserPropertiesManager.logAdClosed(adType, z);
    }

    public final void logAdClosed(AdType adType, boolean wasCompleted) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.AD_TYPE.getParamName(), adType.getTypeName());
        bundle.putString(AnalyticsParam.AD_FORMAT.getParamName(), adType.getTypeName());
        bundle.putBoolean(AnalyticsParam.WAS_COMPLETED.getParamName(), wasCompleted);
        getFirebaseAnalytics().logEvent(AnalyticsEvent.AD_CLOSED.getEventName(), bundle);
    }

    public final void logAdExpired(AdType adType) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.AD_TYPE.getParamName(), adType.getTypeName());
        bundle.putString(AnalyticsParam.AD_FORMAT.getParamName(), adType.getTypeName());
        getFirebaseAnalytics().logEvent(AnalyticsEvent.AD_EXPIRED.getEventName(), bundle);
    }

    public static /* synthetic */ void logAdRewardEarned$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, AdType adType, double d, String str, String str2, int i, Object obj) {
        if ((i & 8) != 0) {
            str2 = null;
        }
        firebaseUserPropertiesManager.logAdRewardEarned(adType, d, str, str2);
    }

    public final void logAdRewardEarned(AdType adType, double rewardAmount, String rewardCurrency, String featureName) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        Intrinsics.checkNotNullParameter(rewardCurrency, "rewardCurrency");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.AD_TYPE.getParamName(), adType.getTypeName());
        bundle.putString(AnalyticsParam.AD_FORMAT.getParamName(), adType.getTypeName());
        bundle.putDouble(AnalyticsParam.VALUE.getParamName(), rewardAmount);
        bundle.putString(AnalyticsParam.CURRENCY.getParamName(), rewardCurrency);
        if (featureName != null) {
            bundle.putString(AnalyticsParam.FEATURE.getParamName(), featureName);
        }
        getFirebaseAnalytics().logEvent(AnalyticsEvent.AD_REWARD_EARNED.getEventName(), bundle);
    }

    public static /* synthetic */ void logRewardedAdCompleted$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, boolean z, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            str = null;
        }
        firebaseUserPropertiesManager.logRewardedAdCompleted(z, str);
    }

    public final void logRewardedAdCompleted(boolean finished, String featureName) {
        AdCompletionStatus adCompletionStatus = finished ? AdCompletionStatus.COMPLETED : AdCompletionStatus.CANCELED;
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.AD_TYPE.getParamName(), AdType.REWARDED_VIDEO.getTypeName());
        bundle.putBoolean(AnalyticsParam.FINISHED.getParamName(), finished);
        bundle.putString(AnalyticsParam.STATUS.getParamName(), adCompletionStatus.getStatusName());
        if (featureName != null) {
            bundle.putString(AnalyticsParam.FEATURE.getParamName(), featureName);
        }
        getFirebaseAnalytics().logEvent(AnalyticsEvent.REWARDED_AD_COMPLETED.getEventName(), bundle);
    }

    public final void logPurchaseSuccess(String planType, String price, String currency, String duration, String paymentMethod, String productId, String buildFlavor) {
        Intrinsics.checkNotNullParameter(planType, "planType");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        Intrinsics.checkNotNullParameter(buildFlavor, "buildFlavor");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.PLAN_TYPE.getParamName(), planType);
        bundle.putString(AnalyticsParam.PRICE.getParamName(), price);
        bundle.putString(AnalyticsParam.CURRENCY.getParamName(), currency);
        if (duration != null) {
            bundle.putString(AnalyticsParam.DURATION.getParamName(), duration);
        }
        bundle.putString(AnalyticsParam.PAYMENT_METHOD.getParamName(), paymentMethod);
        if (productId != null) {
            bundle.putString(AnalyticsParam.PRODUCT_ID.getParamName(), productId);
        }
        bundle.putString(AnalyticsParam.BUILD_FLAVOR.getParamName(), buildFlavor);
        getFirebaseAnalytics().logEvent(AnalyticsEvent.PURCHASE_SUCCESS.getEventName(), bundle);
    }

    public final void logPurchaseFailed(String planType, String price, String currency, String duration, String paymentMethod, String reason, String buildFlavor) {
        Intrinsics.checkNotNullParameter(planType, "planType");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(buildFlavor, "buildFlavor");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.PLAN_TYPE.getParamName(), planType);
        if (price != null) {
            bundle.putString(AnalyticsParam.PRICE.getParamName(), price);
        }
        if (currency != null) {
            bundle.putString(AnalyticsParam.CURRENCY.getParamName(), currency);
        }
        if (duration != null) {
            bundle.putString(AnalyticsParam.DURATION.getParamName(), duration);
        }
        if (paymentMethod != null) {
            bundle.putString(AnalyticsParam.PAYMENT_METHOD.getParamName(), paymentMethod);
        }
        bundle.putString(AnalyticsParam.REASON.getParamName(), reason);
        bundle.putString(AnalyticsParam.BUILD_FLAVOR.getParamName(), buildFlavor);
        getFirebaseAnalytics().logEvent(AnalyticsEvent.PURCHASE_FAILED.getEventName(), bundle);
    }

    public final void logDirectPayment(String planType, String price, String currency, String duration, String buildFlavor) {
        Intrinsics.checkNotNullParameter(planType, "planType");
        Intrinsics.checkNotNullParameter(price, "price");
        Intrinsics.checkNotNullParameter(currency, "currency");
        Intrinsics.checkNotNullParameter(buildFlavor, "buildFlavor");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.PLAN_TYPE.getParamName(), planType);
        bundle.putString(AnalyticsParam.PRICE.getParamName(), price);
        bundle.putString(AnalyticsParam.CURRENCY.getParamName(), currency);
        if (duration != null) {
            bundle.putString(AnalyticsParam.DURATION.getParamName(), duration);
        }
        bundle.putString(AnalyticsParam.PAYMENT_METHOD.getParamName(), "Shetab");
        bundle.putString(AnalyticsParam.BUILD_FLAVOR.getParamName(), buildFlavor);
        getFirebaseAnalytics().logEvent(AnalyticsEvent.DIRECT_PAYMENT.getEventName(), bundle);
    }

    public static /* synthetic */ void logUserLogin$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        firebaseUserPropertiesManager.logUserLogin(str, str2, z);
    }

    public final void logUserLogin(String username, String method, boolean success) {
        Intrinsics.checkNotNullParameter(username, "username");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.USERNAME.getParamName(), username);
        bundle.putBoolean(AnalyticsParam.SUCCESS.getParamName(), success);
        if (method != null) {
            bundle.putString(AnalyticsParam.METHOD.getParamName(), method);
        }
        getFirebaseAnalytics().logEvent(AnalyticsEvent.USER_LOGIN.getEventName(), bundle);
    }

    public static /* synthetic */ void logUserRegister$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        firebaseUserPropertiesManager.logUserRegister(str, str2, z);
    }

    public final void logUserRegister(String username, String method, boolean success) {
        Intrinsics.checkNotNullParameter(username, "username");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.USERNAME.getParamName(), username);
        bundle.putBoolean(AnalyticsParam.SUCCESS.getParamName(), success);
        if (method != null) {
            bundle.putString(AnalyticsParam.METHOD.getParamName(), method);
        }
        getFirebaseAnalytics().logEvent(AnalyticsEvent.USER_REGISTER.getEventName(), bundle);
    }

    public static /* synthetic */ void logUserRegisterFailed$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, String str, String str2, String str3, int i, Object obj) {
        if ((i & 4) != 0) {
            str3 = null;
        }
        firebaseUserPropertiesManager.logUserRegisterFailed(str, str2, str3);
    }

    public final void logUserRegisterFailed(String username, String reason, String method) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.USERNAME.getParamName(), username);
        bundle.putString(AnalyticsParam.REASON.getParamName(), reason);
        if (method != null) {
            bundle.putString(AnalyticsParam.METHOD.getParamName(), method);
        }
        getFirebaseAnalytics().logEvent(AnalyticsEvent.USER_REGISTER_FAILED.getEventName(), bundle);
    }

    public static /* synthetic */ void logUserLogout$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            str2 = null;
        }
        firebaseUserPropertiesManager.logUserLogout(str, str2);
    }

    public final void logUserLogout(String username, String reason) {
        Bundle bundle = new Bundle();
        if (username != null) {
            bundle.putString(AnalyticsParam.USERNAME.getParamName(), username);
        }
        if (reason != null) {
            bundle.putString(AnalyticsParam.REASON.getParamName(), reason);
        }
        getFirebaseAnalytics().logEvent(AnalyticsEvent.USER_LOGOUT.getEventName(), bundle);
    }

    public static /* synthetic */ void logPasswordChange$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        firebaseUserPropertiesManager.logPasswordChange(str, z);
    }

    public final void logPasswordChange(String username, boolean success) {
        Intrinsics.checkNotNullParameter(username, "username");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.USERNAME.getParamName(), username);
        bundle.putBoolean(AnalyticsParam.SUCCESS.getParamName(), success);
        getFirebaseAnalytics().logEvent(AnalyticsEvent.PASSWORD_CHANGE.getEventName(), bundle);
    }

    public static /* synthetic */ void logEmailVerificationSent$default(FirebaseUserPropertiesManager firebaseUserPropertiesManager, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        firebaseUserPropertiesManager.logEmailVerificationSent(str, str2, z);
    }

    public final void logEmailVerificationSent(String email, String username, boolean success) {
        Intrinsics.checkNotNullParameter(email, "email");
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsParam.EMAIL.getParamName(), email);
        if (username != null) {
            bundle.putString(AnalyticsParam.USERNAME.getParamName(), username);
        }
        bundle.putBoolean(AnalyticsParam.SUCCESS.getParamName(), success);
        getFirebaseAnalytics().logEvent(AnalyticsEvent.EMAIL_VERIFICATION_SENT.getEventName(), bundle);
    }
}
