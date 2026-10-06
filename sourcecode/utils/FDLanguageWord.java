package fast.dic.dict.utils;

import androidx.exifinterface.media.ExifInterface;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.mlkit.nl.translate.TranslateLanguage;
import com.ironsource.Fc;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import fast.dic.dict.p000const.ConstKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: FDLanguageWord.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000 \u00052\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lfast/dic/dict/utils/FDLanguageWord;", "", "<init>", "()V", "LanguageType", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDLanguageWord {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: FDLanguageWord.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lfast/dic/dict/utils/FDLanguageWord$LanguageType;", "", "<init>", "(Ljava/lang/String;I)V", "Persian", "English", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public enum LanguageType {
        Persian,
        English;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<LanguageType> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: FDLanguageWord.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\u000e\u001a\u00020\u0007J\u0010\u0010\u000f\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0010\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0011\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007J\n\u0010\u0013\u001a\u00020\u0007*\u00020\u0007¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/utils/FDLanguageWord$Companion;", "", "<init>", "()V", "find", "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;", FirebaseAnalytics.Param.CHARACTER, "", "hasPersianChar", "", "element", "", "getSourceAndDestLanguage", "Lkotlin/Pair;", "sentence", "isEnglish", "isPersian", "replaceNumbers", "word", "replaceNumbersToFarsi", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final LanguageType find(String character) {
            String str = character;
            if (str == null || str.length() == 0) {
                return LanguageType.English;
            }
            int length = character.length();
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                if (hasPersianChar(character.charAt(i3))) {
                    i++;
                } else {
                    i2++;
                }
            }
            if (i >= i2) {
                return LanguageType.Persian;
            }
            return LanguageType.English;
        }

        private final boolean hasPersianChar(char element) {
            return (Regex.find$default(new Regex(ConstKt.PERSIAN_LETTERS_REGEX), String.valueOf(element), 0, 2, null) == null && Regex.find$default(new Regex(ConstKt.PERSIAN_NUMBERS_REGEX), String.valueOf(element), 0, 2, null) == null) ? false : true;
        }

        public final Pair<String, String> getSourceAndDestLanguage(String sentence) {
            Intrinsics.checkNotNullParameter(sentence, "sentence");
            return isEnglish(sentence) ? new Pair<>(TranslateLanguage.ENGLISH, TranslateLanguage.PERSIAN) : new Pair<>(TranslateLanguage.PERSIAN, TranslateLanguage.ENGLISH);
        }

        public final boolean isEnglish(String character) {
            return find(character) == LanguageType.English;
        }

        public final boolean isPersian(String character) {
            return find(character) == LanguageType.Persian;
        }

        public final String replaceNumbers(String word) {
            if (word == null || word.length() == 0) {
                return "";
            }
            return StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(word, "0", "", false, 4, (Object) null), "1", "", false, 4, (Object) null), "2", "", false, 4, (Object) null), ExifInterface.GPS_MEASUREMENT_3D, "", false, 4, (Object) null), "4", "", false, 4, (Object) null), CampaignEx.CLICKMODE_ON, "", false, 4, (Object) null), "6", "", false, 4, (Object) null), Fc.e, "", false, 4, (Object) null), "8", "", false, 4, (Object) null), "9", "", false, 4, (Object) null);
        }

        public final String replaceNumbersToFarsi(String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            if (str.length() == 0) {
                return "";
            }
            return StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(str, "0", "۰", false, 4, (Object) null), "1", "۱", false, 4, (Object) null), "2", "۲", false, 4, (Object) null), ExifInterface.GPS_MEASUREMENT_3D, "۳", false, 4, (Object) null), "4", "۴", false, 4, (Object) null), CampaignEx.CLICKMODE_ON, "۵", false, 4, (Object) null), "6", "۶", false, 4, (Object) null), Fc.e, "۷", false, 4, (Object) null), "8", "۸", false, 4, (Object) null), "9", "۹", false, 4, (Object) null);
        }
    }
}
