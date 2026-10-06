package fast.dic.dict.analytics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: compiled from: AnalyticsEvent.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/analytics/CrashlyticsKey;", "", "keyName", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getKeyName", "()Ljava/lang/String;", "IS_FREE", "IS_DARK_MODE", "APP_LANGUAGE_IS_PERSIAN", "IS_ENABLED_SYNC", "IS_KEYBOARD_READY", "IS_OFFLINE_PRONUNCIATION", "IS_OFFLINE_TRANSLATOR", "EMAIL_VERIFIED", "HAS_SUBSCRIPTION", "DISABLED", "BUILD_FLAVOR", "FLOATING_WINDOW", "CURRENT_PLAN", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public enum CrashlyticsKey {
    IS_FREE("isFree"),
    IS_DARK_MODE("is_dark_mode"),
    APP_LANGUAGE_IS_PERSIAN("app_language_is_persian"),
    IS_ENABLED_SYNC("is_enabled_sync"),
    IS_KEYBOARD_READY("is_keyboard_ready"),
    IS_OFFLINE_PRONUNCIATION("is_offline_pronunciation"),
    IS_OFFLINE_TRANSLATOR("is_offline_translator"),
    EMAIL_VERIFIED("email_verified"),
    HAS_SUBSCRIPTION("has_subscription"),
    DISABLED("disabled"),
    BUILD_FLAVOR("build_flavor"),
    FLOATING_WINDOW("floating_window"),
    CURRENT_PLAN("current_plan");

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
    private final String keyName;

    public static EnumEntries<CrashlyticsKey> getEntries() {
        return $ENTRIES;
    }

    CrashlyticsKey(String str) {
        this.keyName = str;
    }

    public final String getKeyName() {
        return this.keyName;
    }
}
