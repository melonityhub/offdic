package fast.dic.dict.analytics;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.U3;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: compiled from: AnalyticsEvent.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0017\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lfast/dic/dict/analytics/AnalyticsEvent;", "", U3.i.j0, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getEventName", "()Ljava/lang/String;", "AD_LOADED", "AD_FAILED_TO_LOAD", "AD_IMPRESSION", "AD_SHOW_FAILED", "AD_CLICK", "AD_CLOSED", "AD_EXPIRED", "AD_REWARD_EARNED", "REWARDED_AD_COMPLETED", "USER_LOGIN", "USER_REGISTER", "USER_REGISTER_FAILED", "USER_LOGOUT", "PASSWORD_CHANGE", "EMAIL_VERIFICATION_SENT", "PURCHASE_SUCCESS", "PURCHASE_FAILED", "DIRECT_PAYMENT", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public enum AnalyticsEvent {
    AD_LOADED("ad_loaded"),
    AD_FAILED_TO_LOAD("ad_failed_to_load"),
    AD_IMPRESSION(FirebaseAnalytics.Event.AD_IMPRESSION),
    AD_SHOW_FAILED("ad_show_failed"),
    AD_CLICK("ad_click"),
    AD_CLOSED("ad_closed"),
    AD_EXPIRED("ad_expired"),
    AD_REWARD_EARNED("ad_reward_earned"),
    REWARDED_AD_COMPLETED("rewarded_ad_completed"),
    USER_LOGIN("user_login"),
    USER_REGISTER("user_register"),
    USER_REGISTER_FAILED("user_register_failed"),
    USER_LOGOUT("user_logout"),
    PASSWORD_CHANGE("password_change"),
    EMAIL_VERIFICATION_SENT("email_verification_sent"),
    PURCHASE_SUCCESS("purchase_success"),
    PURCHASE_FAILED("purchase_failed"),
    DIRECT_PAYMENT("direct_payment");

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
    private final String eventName;

    public static EnumEntries<AnalyticsEvent> getEntries() {
        return $ENTRIES;
    }

    AnalyticsEvent(String str) {
        this.eventName = str;
    }

    public final String getEventName() {
        return this.eventName;
    }
}
