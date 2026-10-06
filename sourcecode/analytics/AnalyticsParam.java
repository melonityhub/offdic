package fast.dic.dict.analytics;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.taurusx.tax.y.n.s;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: compiled from: AnalyticsEvent.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u001b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001d¨\u0006\u001e"}, d2 = {"Lfast/dic/dict/analytics/AnalyticsParam;", "", "paramName", "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getParamName", "()Ljava/lang/String;", "AD_TYPE", "AD_FORMAT", "AD_UNIT_ID", "IS_PRECACHE", "ERROR_MESSAGE", "WAS_COMPLETED", "VALUE", "CURRENCY", "FEATURE", "FINISHED", "STATUS", "REASON", "USERNAME", "METHOD", "SUCCESS", "EMAIL", "PLAN_TYPE", "PRICE", "DURATION", "PAYMENT_METHOD", "PRODUCT_ID", "BUILD_FLAVOR", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public enum AnalyticsParam {
    AD_TYPE("ad_type"),
    AD_FORMAT(FirebaseAnalytics.Param.AD_FORMAT),
    AD_UNIT_ID("ad_unit_id"),
    IS_PRECACHE("is_precache"),
    ERROR_MESSAGE(s.R),
    WAS_COMPLETED("was_completed"),
    VALUE("value"),
    CURRENCY("currency"),
    FEATURE("feature"),
    FINISHED("finished"),
    STATUS("status"),
    REASON("reason"),
    USERNAME("username"),
    METHOD("method"),
    SUCCESS("success"),
    EMAIL("email"),
    PLAN_TYPE("plan_type"),
    PRICE("price"),
    DURATION("duration"),
    PAYMENT_METHOD("payment_method"),
    PRODUCT_ID(FirebaseAnalytics.Param.PRODUCT_ID),
    BUILD_FLAVOR("build_flavor");

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
    private final String paramName;

    public static EnumEntries<AnalyticsParam> getEntries() {
        return $ENTRIES;
    }

    AnalyticsParam(String str) {
        this.paramName = str;
    }

    public final String getParamName() {
        return this.paramName;
    }
}
