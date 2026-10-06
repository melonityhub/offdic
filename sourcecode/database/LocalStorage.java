package fast.dic.dict.database;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.Gson;
import com.google.mlkit.nl.translate.TranslateLanguage;
import com.yandex.div.core.dagger.Names;
import dagger.hilt.android.qualifiers.ApplicationContext;
import fast.dic.dict.BuildConfig;
import fast.dic.dict.data.sync.model.SyncSessionModel;
import fast.dic.dict.domain.entity.WordSortEnum;
import fast.dic.dict.models.api.WodApiModel;
import fast.dic.dict.p000const.ConfigConstKt;
import fast.dic.dict.utils.DateExtKt;
import fast.dic.dict.utils.StringExtKt;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: LocalStorage.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b0\n\u0002\u0010#\n\u0000\u0018\u00002\u00020\u0001B\u001b\b\u0007\u0012\f\b\u0001\u0010\u0002\u001a\u00020\u0003:\u0002\b\u0004\u001a\u0002\b\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010-\u001a\u00020.J\u0006\u0010/\u001a\u000200J\u000e\u00101\u001a\u00020.2\u0006\u00102\u001a\u000200J\u0006\u00103\u001a\u00020$J\u000e\u00104\u001a\u00020.2\u0006\u00105\u001a\u00020$J\b\u00106\u001a\u0004\u0018\u000107J\b\u00108\u001a\u0004\u0018\u00010\u0013J\u000e\u00109\u001a\u00020.2\u0006\u0010:\u001a\u00020;J\u000e\u0010<\u001a\u00020.2\u0006\u0010=\u001a\u00020>J\u000e\u0010?\u001a\u00020.2\u0006\u0010@\u001a\u00020$J\u0006\u0010A\u001a\u00020$J\u000e\u0010B\u001a\u00020.2\u0006\u0010@\u001a\u00020$J\u0006\u0010C\u001a\u00020$J\b\u0010D\u001a\u0004\u0018\u00010>J\u0006\u0010E\u001a\u00020\u000bJ\u0006\u0010F\u001a\u00020\u000bJ\u000e\u0010G\u001a\u00020.2\u0006\u0010H\u001a\u00020\u000bJ\u0006\u0010I\u001a\u00020\u000bJ\u000e\u0010J\u001a\u00020.2\u0006\u0010K\u001a\u00020\u000bJ\u0006\u0010L\u001a\u00020MJ\u000e\u0010N\u001a\u00020M2\u0006\u0010O\u001a\u000207J\u0006\u0010P\u001a\u00020\u000bJ\u000e\u0010Q\u001a\u00020.2\u0006\u0010R\u001a\u000207J\b\u0010S\u001a\u0004\u0018\u000107J\u0006\u0010T\u001a\u00020.J\u000e\u0010U\u001a\u00020.2\u0006\u0010R\u001a\u000207J\b\u0010V\u001a\u0004\u0018\u000107J\u0006\u0010W\u001a\u00020.J\u000e\u0010X\u001a\u00020.2\u0006\u0010R\u001a\u000207J\u000e\u0010Y\u001a\u00020.2\u0006\u0010R\u001a\u000207J\b\u0010Z\u001a\u0004\u0018\u000107J\b\u0010[\u001a\u0004\u0018\u000107J\u0006\u0010\\\u001a\u00020.J\u0006\u0010]\u001a\u00020.J\u000e\u0010^\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020$J\u0006\u0010_\u001a\u00020$J\u000e\u0010`\u001a\u00020.2\u0006\u0010a\u001a\u00020\u000bJ\u0006\u0010b\u001a\u00020\u000bJ\u000e\u0010c\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020$J\u0006\u0010d\u001a\u00020$J\u000e\u0010e\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020\u000bJ\u0006\u0010f\u001a\u00020\u000bJ\u000e\u0010g\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020\u000bJ\u0006\u0010h\u001a\u00020\u000bJ\u000e\u0010i\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020\u000bJ\u0006\u0010j\u001a\u00020\u000bJ\u000e\u0010k\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020\u000bJ\u0006\u0010l\u001a\u00020\u000bJ\u000e\u0010m\u001a\u00020.2\u0006\u00102\u001a\u000200J\u0006\u0010n\u001a\u000200J\u000e\u0010o\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020$J\u0006\u0010p\u001a\u00020$J\u000e\u0010q\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020$J\u0006\u0010r\u001a\u00020$J\u0006\u0010s\u001a\u00020\u000bJ\u0006\u0010t\u001a\u00020.J\u0006\u0010u\u001a\u00020\u000bJ\u0006\u0010v\u001a\u00020.J\u0006\u0010w\u001a\u00020\u000bJ\u0006\u0010x\u001a\u00020.J\u0006\u0010y\u001a\u00020\u000bJ\u0006\u0010z\u001a\u00020.J\u0010\u0010{\u001a\u00020\u000b2\b\u0010|\u001a\u0004\u0018\u000107J\u0010\u0010}\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010~H\u0002R\u001b\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u0092\u0002\u0002\b\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\n\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u00138F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R&\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00198F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR&\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000b8F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R&\u0010%\u001a\u00020$2\u0006\u0010\u0012\u001a\u00020$8F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R&\u0010*\u001a\u00020$2\u0006\u0010\u0012\u001a\u00020$8F@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010'\"\u0004\b,\u0010)¨\u0006\u007f"}, d2 = {"Lfast/dic/dict/database/LocalStorage;", "", Names.CONTEXT, "Landroid/content/Context;", "Ldagger/hilt/android/qualifiers/ApplicationContext;", "<init>", "(Landroid/content/Context;)V", "Ljavax/inject/Inject;", "getContext", "()Landroid/content/Context;", "isFirstLaunch", "", "()Ljava/lang/Boolean;", "setFirstLaunch", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "preferences", "Landroid/content/SharedPreferences;", "value", "Ljava/util/Date;", "defaultsLastSyncDate", "getDefaultsLastSyncDate", "()Ljava/util/Date;", "setDefaultsLastSyncDate", "(Ljava/util/Date;)V", "Lfast/dic/dict/domain/entity/WordSortEnum;", "selectedSort", "getSelectedSort", "()Lfast/dic/dict/domain/entity/WordSortEnum;", "setSelectedSort", "(Lfast/dic/dict/domain/entity/WordSortEnum;)V", "enableSync", "getEnableSync", "()Z", "setEnableSync", "(Z)V", "", "firstTimeFullscreenAds", "getFirstTimeFullscreenAds", "()I", "setFirstTimeFullscreenAds", "(I)V", "adsSearchCount", "getAdsSearchCount", "setAdsSearchCount", "incrementSearchCount", "", "getLastInterstitialTs", "", "setLastInterstitialTs", "ts", "getLastInterstitialCount", "setLastInterstitialCount", "count", "getCbSessionId", "", "getCbExpires", "setCbSession", "syncSessionModel", "Lfast/dic/dict/data/sync/model/SyncSessionModel;", "storeWod", "wodApiModel", "Lfast/dic/dict/models/api/WodApiModel;", "setImageTranslatorLimitation", "number", "getImageTranslatorLimitation", "setSentencePronunciationLimitation", "getSentencePronunciationLimitation", "getWod", "isNewInstalled", "seenOnBoarding", "setSeenOnBoarding", "seen", "offlineTranslatorIsEnabled", "setOfflineTranslator", "offline", "getCurrentLanguage", "Ljava/util/Locale;", "saveCurrentLanguage", "language", "currentLanguageIsPersian", "storeIAP", "iap", "getIAP", "removeIAP", "storeIAPPlan1", "getIAPPlan1", "removeIAPPlan1", "storeIAPPlan2", "storeIAPPlan3", "getIAPPlan2", "getIAPPlan3", "removeIAPPlan2", "removeIAPPlan3", "storeShakeSensitivity", "getShakeSensitivity", "storeEnableShake", "state", "getEnableShake", "storeOfflineSpeechSpeed", "getOfflineSpeechSpeed", "storeFloatingWindow", "getFloatingWindow", "storeOfflineMode", "getOfflineMode", "storeExitMessage", "getExitMessage", "storeMakeKeyboardOpen", "getMakeKeyboardOpen", "setShowAdvertisingAfter", "getShowAdvertisingAfter", "storeFloatingHeadXPrefs", "getFloatingHeadXPrefs", "storeFloatingHeadYPrefs", "getFloatingHeadYPrefs", "validRewardedAdsForImageTranslator", "resetRewardedAdsForImageTranslator", "validRewardedAdsForAiTranslator", "resetRewardedAdsForAiTranslator", "validRewardedAdsForSentencePronunciation", "resetRewardedAdsForSentencePronunciation", "validRewardedAdsForTranslator", "resetRewardedAdsForTranslator", "isDuplicateMessageId", "messageId", "getListOfMessageIds", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class LocalStorage {
    private int adsSearchCount;

    @ApplicationContext
    private final Context context;
    private Date defaultsLastSyncDate;
    private boolean enableSync;
    private int firstTimeFullscreenAds;
    private Boolean isFirstLaunch;
    private final SharedPreferences preferences;
    private WordSortEnum selectedSort;

    @Inject
    public LocalStorage(@ApplicationContext Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        SharedPreferences sharedPreferences = context.getSharedPreferences("fastdic", 0);
        Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
        this.preferences = sharedPreferences;
        this.selectedSort = WordSortEnum.NEWEST;
        this.firstTimeFullscreenAds = 5;
    }

    public final Context getContext() {
        return this.context;
    }

    /* JADX INFO: renamed from: isFirstLaunch, reason: from getter */
    public final Boolean getIsFirstLaunch() {
        return this.isFirstLaunch;
    }

    public final void setFirstLaunch(Boolean bool) {
        this.isFirstLaunch = bool;
    }

    public final void setDefaultsLastSyncDate(Date date) {
        String string;
        this.defaultsLastSyncDate = date;
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        if (date != null) {
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            string = DateExtKt.toString(date, "yy'-'MM'-'dd'T'HH:mm:ss'Z'", locale);
        } else {
            string = null;
        }
        editorEdit.putString(ConfigConstKt.DEFAULT_LAST_SYNC_DATE, string).apply();
    }

    public final Date getDefaultsLastSyncDate() {
        String string = this.preferences.getString(ConfigConstKt.DEFAULT_LAST_SYNC_DATE, null);
        if (string != null) {
            return StringExtKt.toDate(string);
        }
        return null;
    }

    public final void setSelectedSort(WordSortEnum value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.selectedSort = value;
        this.preferences.edit().putInt(ConfigConstKt.DEFAULT_SORT_STATE, value.getValue()).apply();
    }

    public final WordSortEnum getSelectedSort() {
        return WordSortEnum.getEntries().get(this.preferences.getInt(ConfigConstKt.DEFAULT_SORT_STATE, 0));
    }

    public final void setEnableSync(boolean z) {
        this.enableSync = z;
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        Intrinsics.checkNotNull(editorEdit);
        editorEdit.putBoolean(ConfigConstKt.DEFAULT_SYNC_IS_ENABLE, z);
        editorEdit.apply();
    }

    public final boolean getEnableSync() {
        return this.preferences.getBoolean(ConfigConstKt.DEFAULT_SYNC_IS_ENABLE, false);
    }

    public final void setFirstTimeFullscreenAds(int i) {
        this.firstTimeFullscreenAds = i;
        SharedPreferences sharedPreferences = this.preferences;
        if (i <= 0) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            Intrinsics.checkNotNull(editorEdit);
            editorEdit.putInt(ConfigConstKt.DEFAULT_FIRST_TIME_FULLSCREEN_ADS, 0);
            editorEdit.apply();
            return;
        }
        SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
        Intrinsics.checkNotNull(editorEdit2);
        editorEdit2.putInt(ConfigConstKt.DEFAULT_FIRST_TIME_FULLSCREEN_ADS, this.firstTimeFullscreenAds);
        editorEdit2.apply();
    }

    public final int getFirstTimeFullscreenAds() {
        return this.preferences.getInt(ConfigConstKt.DEFAULT_FIRST_TIME_FULLSCREEN_ADS, 5);
    }

    public final void setAdsSearchCount(int i) {
        this.adsSearchCount = i;
        SharedPreferences sharedPreferences = this.preferences;
        if (i <= 0) {
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            Intrinsics.checkNotNull(editorEdit);
            editorEdit.putInt(ConfigConstKt.DEFAULT_AD_SEARCH_COUNT, 0);
            editorEdit.apply();
            return;
        }
        SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
        Intrinsics.checkNotNull(editorEdit2);
        editorEdit2.putInt(ConfigConstKt.DEFAULT_AD_SEARCH_COUNT, this.adsSearchCount);
        editorEdit2.apply();
    }

    public final int getAdsSearchCount() {
        return this.preferences.getInt(ConfigConstKt.DEFAULT_AD_SEARCH_COUNT, 0);
    }

    public final void incrementSearchCount() {
        setAdsSearchCount(getAdsSearchCount() + 1);
    }

    public final long getLastInterstitialTs() {
        return this.preferences.getLong(ConfigConstKt.DEFAULT_AD_LAST_INTERSTITIAL_TS, 0L);
    }

    public final void setLastInterstitialTs(long ts) {
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        Intrinsics.checkNotNull(editorEdit);
        editorEdit.putLong(ConfigConstKt.DEFAULT_AD_LAST_INTERSTITIAL_TS, ts);
        editorEdit.apply();
    }

    public final int getLastInterstitialCount() {
        return this.preferences.getInt(ConfigConstKt.DEFAULT_AD_LAST_INTERSTITIAL_COUNT, 0);
    }

    public final void setLastInterstitialCount(int count) {
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        Intrinsics.checkNotNull(editorEdit);
        editorEdit.putInt(ConfigConstKt.DEFAULT_AD_LAST_INTERSTITIAL_COUNT, count);
        editorEdit.apply();
    }

    public final String getCbSessionId() {
        return this.preferences.getString(ConfigConstKt.DEFAULT_CB_SESSION_ID, null);
    }

    public final Date getCbExpires() {
        long j = this.preferences.getLong(ConfigConstKt.DEFAULT_CB_EXPIRES, 0L);
        if (j == 0) {
            return null;
        }
        return new Date(j);
    }

    public final void setCbSession(SyncSessionModel syncSessionModel) {
        Intrinsics.checkNotNullParameter(syncSessionModel, "syncSessionModel");
        SharedPreferences.Editor editorEdit = this.preferences.edit();
        editorEdit.putString(ConfigConstKt.DEFAULT_CB_SESSION_ID, syncSessionModel.getSession_id());
        Date expires = syncSessionModel.getExpires();
        editorEdit.putLong(ConfigConstKt.DEFAULT_CB_EXPIRES, expires != null ? expires.getTime() : 0L);
        editorEdit.apply();
    }

    public final void storeWod(WodApiModel wodApiModel) {
        Intrinsics.checkNotNullParameter(wodApiModel, "wodApiModel");
        this.preferences.edit().putString("wod", new Gson().toJson(wodApiModel).toString()).apply();
    }

    public final void setImageTranslatorLimitation(int number) {
        this.preferences.edit().putInt("FD_IM_LMT", number).apply();
    }

    public final int getImageTranslatorLimitation() {
        return this.preferences.getInt("FD_IM_LMT", 10);
    }

    public final void setSentencePronunciationLimitation(int number) {
        this.preferences.edit().putInt("FD_SP_LMT", number).apply();
    }

    public final int getSentencePronunciationLimitation() {
        return this.preferences.getInt("FD_SP_LMT", 10);
    }

    public final WodApiModel getWod() {
        return (WodApiModel) new Gson().fromJson(this.preferences.getString("wod", null), WodApiModel.class);
    }

    public final boolean isNewInstalled() {
        Boolean boolValueOf = this.isFirstLaunch;
        if (boolValueOf == null) {
            boolValueOf = Boolean.valueOf(!this.preferences.contains("wod"));
            this.isFirstLaunch = boolValueOf;
        }
        Intrinsics.checkNotNull(boolValueOf);
        return boolValueOf.booleanValue();
    }

    public final boolean seenOnBoarding() {
        return this.preferences.getBoolean("fd_seen_2_on_boarding", false);
    }

    public final void setSeenOnBoarding(boolean seen) {
        this.preferences.edit().putBoolean("fd_seen_2_on_boarding", seen).apply();
    }

    public final boolean offlineTranslatorIsEnabled() {
        return this.preferences.getBoolean("fd_offline_translator", false);
    }

    public final void setOfflineTranslator(boolean offline) {
        this.preferences.edit().putBoolean("fd_offline_translator", offline).apply();
    }

    public final Locale getCurrentLanguage() {
        Object objLast;
        if (isNewInstalled()) {
            String[] TRANSLATION_ARRAY = BuildConfig.TRANSLATION_ARRAY;
            Intrinsics.checkNotNullExpressionValue(TRANSLATION_ARRAY, "TRANSLATION_ARRAY");
            objLast = ArraysKt.first(TRANSLATION_ARRAY);
        } else {
            String[] TRANSLATION_ARRAY2 = BuildConfig.TRANSLATION_ARRAY;
            Intrinsics.checkNotNullExpressionValue(TRANSLATION_ARRAY2, "TRANSLATION_ARRAY");
            objLast = ArraysKt.last(TRANSLATION_ARRAY2);
        }
        String string = this.preferences.getString("fd_language", (String) objLast);
        Intrinsics.checkNotNull(string);
        String str = string;
        return new Locale((String) CollectionsKt.first(StringsKt.split$default((CharSequence) str, new String[]{"_"}, false, 0, 6, (Object) null)), (String) CollectionsKt.last(StringsKt.split$default((CharSequence) str, new String[]{"_"}, false, 0, 6, (Object) null)));
    }

    public final Locale saveCurrentLanguage(String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        String lowerCase = language.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String str = StringsKt.startsWith$default(lowerCase, TranslateLanguage.ENGLISH, false, 2, (Object) null) ? "en_US" : "fa_IR";
        this.preferences.edit().putString("fd_language", str).apply();
        String str2 = str;
        return new Locale((String) CollectionsKt.first(StringsKt.split$default((CharSequence) str2, new String[]{"_"}, false, 0, 6, (Object) null)), (String) CollectionsKt.last(StringsKt.split$default((CharSequence) str2, new String[]{"_"}, false, 0, 6, (Object) null)));
    }

    public final boolean currentLanguageIsPersian() {
        String language = getCurrentLanguage().getLanguage();
        Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
        return StringsKt.startsWith(language, TranslateLanguage.PERSIAN, true);
    }

    public final void storeIAP(String iap) {
        Intrinsics.checkNotNullParameter(iap, "iap");
        this.preferences.edit().putString("isP", iap).apply();
    }

    public final String getIAP() {
        return this.preferences.getString("isP", null);
    }

    public final void removeIAP() {
        this.preferences.edit().remove("isP").apply();
    }

    public final void storeIAPPlan1(String iap) {
        Intrinsics.checkNotNullParameter(iap, "iap");
        this.preferences.edit().putString("isP1", iap).apply();
    }

    public final String getIAPPlan1() {
        return this.preferences.getString("isP1", null);
    }

    public final void removeIAPPlan1() {
        this.preferences.edit().remove("isP1").apply();
    }

    public final void storeIAPPlan2(String iap) {
        Intrinsics.checkNotNullParameter(iap, "iap");
        this.preferences.edit().putString("isP2", iap).apply();
    }

    public final void storeIAPPlan3(String iap) {
        Intrinsics.checkNotNullParameter(iap, "iap");
        this.preferences.edit().putString("isP3", iap).apply();
    }

    public final String getIAPPlan2() {
        return this.preferences.getString("isP2", null);
    }

    public final String getIAPPlan3() {
        return this.preferences.getString("isP3", null);
    }

    public final void removeIAPPlan2() {
        this.preferences.edit().remove("isP2").apply();
    }

    public final void removeIAPPlan3() {
        this.preferences.edit().remove("isP3").apply();
    }

    public final void storeShakeSensitivity(int value) {
        this.preferences.edit().putInt("seekBarProgress", value).apply();
    }

    public final int getShakeSensitivity() {
        return this.preferences.getInt("seekBarProgress", 30);
    }

    public final void storeEnableShake(boolean state) {
        this.preferences.edit().putBoolean("enableShake", state).apply();
    }

    public final boolean getEnableShake() {
        return this.preferences.getBoolean("enableShake", true);
    }

    public final void storeOfflineSpeechSpeed(int value) {
        this.preferences.edit().putInt("seekBarOfflineSpeedProgress", value).apply();
    }

    public final int getOfflineSpeechSpeed() {
        return this.preferences.getInt("seekBarOfflineSpeedProgress", 2);
    }

    public final void storeFloatingWindow(boolean value) {
        this.preferences.edit().putBoolean("switchFloatingHead", value).apply();
    }

    public final boolean getFloatingWindow() {
        return this.preferences.getBoolean("switchFloatingHead", false);
    }

    public final void storeOfflineMode(boolean value) {
        this.preferences.edit().putBoolean("offinespeech", value).apply();
    }

    public final boolean getOfflineMode() {
        return this.preferences.getBoolean("offinespeech", false);
    }

    public final void storeExitMessage(boolean value) {
        this.preferences.edit().putBoolean("exitmessage", value).apply();
    }

    public final boolean getExitMessage() {
        return this.preferences.getBoolean("exitmessage", false);
    }

    public final void storeMakeKeyboardOpen(boolean value) {
        this.preferences.edit().putBoolean("fd_open_keyboard", value).apply();
    }

    public final boolean getMakeKeyboardOpen() {
        return this.preferences.getBoolean("fd_open_keyboard", false);
    }

    public final void setShowAdvertisingAfter(long ts) {
        this.preferences.edit().putLong("AD_EXP_TS", ts).apply();
    }

    public final long getShowAdvertisingAfter() {
        return this.preferences.getLong("AD_EXP_TS", 0L);
    }

    public final void storeFloatingHeadXPrefs(int value) {
        this.preferences.edit().putInt("floatingHeadXPrefs", value).apply();
    }

    public final int getFloatingHeadXPrefs() {
        return this.preferences.getInt("floatingHeadXPrefs", 0);
    }

    public final void storeFloatingHeadYPrefs(int value) {
        this.preferences.edit().putInt("floatingHeadYPrefs", value).apply();
    }

    public final int getFloatingHeadYPrefs() {
        return this.preferences.getInt("floatingHeadYPrefs", 0);
    }

    public final boolean validRewardedAdsForImageTranslator() {
        long time = DateExtKt.nextDayAtMidnight(new Date()).getTime();
        if (!DateExtKt.isTomorrowOrLater(this.preferences.getLong("FD_RA_IT", DateExtKt.yesterday(new Date()).getTime()))) {
            return true;
        }
        this.preferences.edit().putLong("FD_RA_IT", time).apply();
        return false;
    }

    public final void resetRewardedAdsForImageTranslator() {
        this.preferences.edit().putLong("FD_RA_IT", DateExtKt.nextDayAtMidnight(new Date()).getTime()).apply();
    }

    public final boolean validRewardedAdsForAiTranslator() {
        long time = DateExtKt.nextDayAtMidnight(new Date()).getTime();
        if (!DateExtKt.isTomorrowOrLater(this.preferences.getLong("FD_RA_OT", DateExtKt.yesterday(new Date()).getTime()))) {
            return true;
        }
        this.preferences.edit().putLong("FD_RA_OT", time).apply();
        return false;
    }

    public final void resetRewardedAdsForAiTranslator() {
        this.preferences.edit().putLong("FD_RA_OT", DateExtKt.nextDayAtMidnight(new Date()).getTime()).apply();
    }

    public final boolean validRewardedAdsForSentencePronunciation() {
        long time = DateExtKt.nextDayAtMidnight(new Date()).getTime();
        if (!DateExtKt.isTomorrowOrLater(this.preferences.getLong("FD_RA_SP", DateExtKt.yesterday(new Date()).getTime()))) {
            return true;
        }
        this.preferences.edit().putLong("FD_RA_SP", time).apply();
        return false;
    }

    public final void resetRewardedAdsForSentencePronunciation() {
        this.preferences.edit().putLong("FD_RA_SP", DateExtKt.nextDayAtMidnight(new Date()).getTime()).apply();
    }

    public final boolean validRewardedAdsForTranslator() {
        long time = DateExtKt.nextDayAtMidnight(new Date()).getTime();
        if (!DateExtKt.isTomorrowOrLater(this.preferences.getLong("FD_RA_T", DateExtKt.yesterday(new Date()).getTime()))) {
            return true;
        }
        this.preferences.edit().putLong("FD_RA_T", time).apply();
        return false;
    }

    public final void resetRewardedAdsForTranslator() {
        this.preferences.edit().putLong("FD_RA_T", DateExtKt.nextDayAtMidnight(new Date()).getTime()).apply();
    }

    public final boolean isDuplicateMessageId(String messageId) {
        if (messageId == null) {
            return true;
        }
        LinkedHashSet listOfMessageIds = getListOfMessageIds();
        if (listOfMessageIds == null) {
            listOfMessageIds = new LinkedHashSet();
        }
        boolean zAdd = listOfMessageIds.add(messageId);
        if (zAdd) {
            this.preferences.edit().putString("message_ids", messageId).apply();
        }
        return !zAdd;
    }

    private final Set<String> getListOfMessageIds() {
        String string = this.preferences.getString("message_ids", null);
        if (string == null) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.add(string);
        return linkedHashSet;
    }
}
