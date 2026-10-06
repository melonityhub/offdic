package fast.dic.dict.p000const;

import fast.dic.dict.domain.entity.EnglishResultOrder;
import fast.dic.dict.domain.entity.PersianResultOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;

/* JADX INFO: compiled from: ConfigConst.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\u0019\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011\"\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0011\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u0019\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00030\u001b¢\u0006\n\n\u0002\u0010\u001e\u001a\u0004\b\u001c\u0010\u001d\"\u000e\u0010\u001f\u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u000bX\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010#\u001a\u00020\u0003X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010$\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010%\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010&\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010'\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010(\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010)\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010*\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010+\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010,\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010-\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010.\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010/\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u00100\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u00101\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u00102\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u00103\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"LOG_TAG", "", "LIMIT", "", "MAX_SHAKE_RANGE", "MIN_SHAKE_RANGE", "STEP_SHAKE_RANGE", "HISTORY_SEARCH_LIMIT", "MAX_TRANSLATOR_WORDS", "MAX_LENGTH_DB_SEARCH", "GOOGLE_PLAY_PRICES_TIMEOUT_MS", "", "GOOGLE_PLAY_PAYMENT_TIMEOUT_MS", "FLOATING_BACKGROUND_WORDS_LIMIT", "DEFAULT_ENGLISH_RESULT_ORDER_BY", "", "getDEFAULT_ENGLISH_RESULT_ORDER_BY", "()Ljava/util/List;", "DEFAULT_PERSIAN_RESULT_ORDER_BY", "getDEFAULT_PERSIAN_RESULT_ORDER_BY", "DEFAULT_CB_EXPIRES", "MAX_TRANSLATOR_WORDS_LOGGED_IN", "DEFAULT_LAST_SYNC_DATE", "DEFAULT_SYNC_IS_ENABLE", "DEFAULT_FIRST_TIME_FULLSCREEN_ADS", "DEFAULT_AD_SEARCH_COUNT", "AD_EXPLANATION_POPUP_TRIGGERS", "", "getAD_EXPLANATION_POPUP_TRIGGERS", "()[Ljava/lang/Integer;", "[Ljava/lang/Integer;", "SESSION_GAP_SECONDS", "INTERSTITIAL_MIN_INTERVAL_SECONDS", "INTERSTITIAL_MIN_SEARCHES_BETWEEN", "INTERSTITIAL_FIRST_SEARCH_OVERDUE", "INTERSTITIAL_COUNTDOWN_SECONDS", "DEFAULT_AD_LAST_INTERSTITIAL_TS", "DEFAULT_AD_LAST_INTERSTITIAL_COUNT", "DEFAULT_SORT_STATE", "DEFAULT_CB_SESSION_ID", "API_BASE_URL", "FLOATING_WINDOWS_CHANNEL_ID", "GOOGLE_SERVER_URL", "PARSE_SERVER_URL", "PARSE_APP_ID", "FD_AD_URL", "PARSE_CLIENT_KEY", "COUCHBASE_SYNC_SERVER", "AUDIO_HELP_FILE_BASE_URL", "APPODEAL_API_KEY", "PUBLIC_KEY_IAP_BAZAAR", "GOOGLE_PUBLIC_KEY", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class ConfigConstKt {
    private static final Integer[] AD_EXPLANATION_POPUP_TRIGGERS;
    public static final String API_BASE_URL = "https://fastdic.com/api/v2";
    public static final String APPODEAL_API_KEY = "9ba789854046103587277ee8ed36b6d904ca495954fe43ad";
    public static final String AUDIO_HELP_FILE_BASE_URL = "http://cdn.fastdic.com/c-en-audios/";
    public static final String COUCHBASE_SYNC_SERVER = "wss://sync.fastdic.com:4984/sync_gateway";
    public static final String DEFAULT_AD_LAST_INTERSTITIAL_COUNT = "AD_LAST_INTERSTITIAL_COUNT";
    public static final String DEFAULT_AD_LAST_INTERSTITIAL_TS = "AD_LAST_INTERSTITIAL_TS";
    public static final String DEFAULT_AD_SEARCH_COUNT = "AD_SEARCH_COUNT";
    public static final String DEFAULT_CB_EXPIRES = "FD_CB_EXPIRES_TS";
    public static final String DEFAULT_CB_SESSION_ID = "FD_CB_SESSION_ID";
    private static final List<String> DEFAULT_ENGLISH_RESULT_ORDER_BY;
    public static final String DEFAULT_FIRST_TIME_FULLSCREEN_ADS = "FD_FADS";
    public static final String DEFAULT_LAST_SYNC_DATE = "LAST_SYNC_DATE";
    private static final List<String> DEFAULT_PERSIAN_RESULT_ORDER_BY;
    public static final String DEFAULT_SORT_STATE = "FD_SORT_STATE";
    public static final String DEFAULT_SYNC_IS_ENABLE = "IS_SYNC_ENABLE";
    public static final String FD_AD_URL = "https://fastdic.com";
    public static final int FLOATING_BACKGROUND_WORDS_LIMIT = 50;
    public static final String FLOATING_WINDOWS_CHANNEL_ID = "FD_FLOATING_WINDOW";
    public static final long GOOGLE_PLAY_PAYMENT_TIMEOUT_MS = 10000;
    public static final long GOOGLE_PLAY_PRICES_TIMEOUT_MS = 6000;
    public static final String GOOGLE_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiVbodvEKBr22ZSH/M+FIwGcGxgqhZwXfJhUccykUwaZMB/MXODPOxGMNSpuXsDKXaDCC1bwueaD1YCws+SKqM9pVWZc3LlurFdWZTVBV/kIaO3dKT+FEmGzKkeYRp459ByidcsULdZ7dtYfpr42pkxlE0BcZ3kWTIpkqVC3lNc/vf1dcez97F4p4MeRLIynL14Hm+7Nu5rD5olbPa8ySoWNYoGwk4Hy90O9HtrrDAqWjdc/wAF4+OZrmhYDJD2YzMHgxlLUDcFb3DAF3eAXWRwvE2Z1SE0lS9avi6aJm+DBjubVOj2VNnAwv9cfbOzk4O6PRfTdEDqWgluB2XkMuKwIDAQAB";
    public static final String GOOGLE_SERVER_URL = "https://translate.google.com/";
    public static final int HISTORY_SEARCH_LIMIT = 2;
    public static final int INTERSTITIAL_COUNTDOWN_SECONDS = 2;
    public static final int INTERSTITIAL_FIRST_SEARCH_OVERDUE = 5;
    public static final long INTERSTITIAL_MIN_INTERVAL_SECONDS = 75;
    public static final int INTERSTITIAL_MIN_SEARCHES_BETWEEN = 2;
    public static final int LIMIT = 50;
    public static final String LOG_TAG = "(FASTDIC)";
    public static final int MAX_LENGTH_DB_SEARCH = 100;
    public static final int MAX_SHAKE_RANGE = 80;
    public static final int MAX_TRANSLATOR_WORDS = 500;
    public static final int MAX_TRANSLATOR_WORDS_LOGGED_IN = 1000;
    public static final int MIN_SHAKE_RANGE = -20;
    public static final String PARSE_APP_ID = "ga7la7qzewqx68pcckpdmptswcsw6wrbcqhhs107";
    public static final String PARSE_CLIENT_KEY = "j1kacghc0j2h6v5gp6ba5snamhjwj1i2vln6jggm";
    public static final String PARSE_SERVER_URL = "https://parse.fastdic.com/parse/";
    public static final String PUBLIC_KEY_IAP_BAZAAR = "MIHNMA0GCSqGSIb3DQEBAQUAA4G7ADCBtwKBrwCm+BfmJw4SNGgDkmrTXhBu0Eo3WpZ1dtLvyVDRfoVVT6i1m18mL8gJoTsAKaRCBbrRSZehbpjXcsaOrHScmrlO/7rY7NcFm3Vn0qqNHxVi8SPdxF3V6x/15WA5/UzqPL2pEg1GD/FfyFNXMo7F8jEbd6s/OwEIwxYIZB/vILffxqc4bSRdep6wW3/nbNMSmIO4S5QsuYrRpEeNxDYW9H26nIOxQUgo1tdjG1hoLxsCAwEAAQ==";
    public static final long SESSION_GAP_SECONDS = 300;
    public static final int STEP_SHAKE_RANGE = 10;

    static {
        EnumEntries<EnglishResultOrder> entries = EnglishResultOrder.getEntries();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(entries, 10));
        Iterator<EnglishResultOrder> it = entries.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        DEFAULT_ENGLISH_RESULT_ORDER_BY = arrayList;
        EnumEntries<PersianResultOrder> entries2 = PersianResultOrder.getEntries();
        ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(entries2, 10));
        Iterator<PersianResultOrder> it2 = entries2.iterator();
        while (it2.hasNext()) {
            arrayList2.add(it2.next().getValue());
        }
        DEFAULT_PERSIAN_RESULT_ORDER_BY = arrayList2;
        AD_EXPLANATION_POPUP_TRIGGERS = new Integer[]{5};
    }

    public static final List<String> getDEFAULT_ENGLISH_RESULT_ORDER_BY() {
        return DEFAULT_ENGLISH_RESULT_ORDER_BY;
    }

    public static final List<String> getDEFAULT_PERSIAN_RESULT_ORDER_BY() {
        return DEFAULT_PERSIAN_RESULT_ORDER_BY;
    }

    public static final Integer[] getAD_EXPLANATION_POPUP_TRIGGERS() {
        return AD_EXPLANATION_POPUP_TRIGGERS;
    }
}
