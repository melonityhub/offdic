package fast.dic.dict.utils;

import io.sentry.protocol.SentryStackFrame;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDWordPartOfSpeech.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\r\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\t¨\u0006\u000e"}, d2 = {"Lfast/dic/dict/utils/FDWordPartOfSpeech;", "", "<init>", "()V", "getPos", "", "type", "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;", "posId", "", "findEnglishEquivalentInPersian", "getEnglish", "getPersian", "findPersianEquivalentInEnglish", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDWordPartOfSpeech {
    public static final FDWordPartOfSpeech INSTANCE = new FDWordPartOfSpeech();

    private FDWordPartOfSpeech() {
    }

    public final String getPos(FDLanguageWord.LanguageType type, int posId) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (type == FDLanguageWord.LanguageType.English) {
            return getEnglish(posId);
        }
        if (type == FDLanguageWord.LanguageType.Persian) {
            return getPersian(posId);
        }
        return "";
    }

    public final String findEnglishEquivalentInPersian(int posId) {
        switch (posId) {
            case 1:
                return "اسم";
            case 2:
                return "جمع";
            case 3:
                return "عبارت اسمی";
            case 4:
                return "صفت فعلی";
            case 5:
                return "فعل متعدی";
            case 6:
                return "فعل لازم";
            case 7:
                return "صفت";
            case 8:
                return "قید";
            case 9:
                return "حرف ربط";
            case 10:
                return "حرف اضافه";
            case 11:
                return "صوت";
            case 12:
                return "ضمیر";
            case 13:
                return "حرف معرفه، حرف تعریف";
            case 14:
                return "حرف نکره";
            case 15:
                return "نهاد";
            case 16:
                return "پیشوند";
            case 17:
                return "پسوند";
            case 18:
                return "اصطلاح";
            case 19:
                return "هم\u200cنشین";
            case 20:
                return "فعل عبارتی";
            case 21:
                return "فعل کمکی";
            case 22:
                return "معرفه\u200cی اسم";
            case 23:
                return "پیش\u200c معرفه";
            case 24:
                return "مخفف";
            case 25:
                return "عامیانه";
            case 26:
                return "عبارت اصطلاحی";
            case 27:
                return "سرواژه";
            case 28:
                return "نماد";
            case 29:
                return "عبارت فعلی";
            case 30:
                return "عبارت";
            case 31:
                return "اسم مفرد";
            case 32:
                return "حرف ندا";
            case 33:
                return "شکل اختصار";
            case 34:
                return "ضرب\u200cالمثل";
            default:
                return null;
        }
    }

    public final String getEnglish(int posId) {
        switch (posId) {
            case 1:
                return "noun";
            case 2:
                return "plural";
            case 3:
                return "noun phrase";
            case 4:
                return "verb - use participle";
            case 5:
                return "verb - transitive";
            case 6:
                return "verb - intransitive";
            case 7:
                return "adjective";
            case 8:
                return "adverb";
            case 9:
                return "conjunction";
            case 10:
                return "preposition";
            case 11:
                return "interjection";
            case 12:
                return "pronoun";
            case 13:
                return "definite article";
            case 14:
                return "indefinite article";
            case 15:
                return "nominative";
            case 16:
                return "prefix";
            case 17:
                return "suffix";
            case 18:
                return "idiom";
            case 19:
                return "collocation";
            case 20:
                return "phrasal verb";
            case 21:
                return "auxiliary verb";
            case 22:
                return "determiner";
            case 23:
                return "predeterminer";
            case 24:
                return "abbreviation";
            case 25:
                return "slang";
            case 26:
                return "idiomatic phrase";
            case 27:
                return "acronym";
            case 28:
                return SentryStackFrame.JsonKeys.SYMBOL;
            case 29:
                return "verb phrase";
            case 30:
                return "phrase";
            case 31:
                return "singular";
            case 32:
                return "exclamation";
            case 33:
                return "contraction";
            case 34:
                return "proverb";
            default:
                return "";
        }
    }

    public final String getPersian(int posId) {
        switch (posId) {
            case 1:
                return "اسم";
            case 2:
                return "صفت";
            case 3:
                return "قید";
            case 4:
                return "فعل لازم";
            case 5:
                return "فعل متعدی";
            case 6:
                return "پسوند";
            case 7:
                return "سازه\u200cی پیوندی";
            case 8:
                return "اسم خاص";
            case 9:
                return "اسم مشتق";
            case 10:
                return "فعل مشتق";
            case 11:
                return "نام آوا";
            case 12:
                return "حرف اضافه";
            case 13:
                return "پیشوند";
            case 14:
                return "اسم عام";
            case 15:
                return "شبه\u200cجمله";
            case 16:
                return "ضمیر";
            case 17:
                return "فعل پیشوندی";
            case 18:
                return "فعل مرکب";
            case 19:
                return "صفت مرکب اتباعی";
            case 20:
                return "حرف ندا";
            case 21:
                return "اسم جمع";
            case 22:
                return "حرف ربط";
            case 23:
                return "صوت";
            case 24:
                return "مخفف";
            case 25:
                return "سرواژه";
            case 26:
                return "نماد";
            case 27:
                return "جمله";
            case 28:
                return "ضرب\u200cالمثل";
            case 29:
                return "اصطلاح";
            case 30:
                return "عبارت";
            case 31:
                return "فعل کمکی";
            default:
                return "";
        }
    }

    public final String findPersianEquivalentInEnglish(int posId) {
        switch (posId) {
            case 1:
                return "noun";
            case 2:
                return "adjective";
            case 3:
                return "adverb";
            case 4:
                return "intransitive Verb";
            case 5:
                return "transitive Verb";
            case 6:
                return "suffix";
            case 7:
                return "compound Structure";
            case 8:
                return "proper Noun";
            case 9:
                return "derived Noun";
            case 10:
                return "derived Verb";
            case 11:
                return "onomatopoeia";
            case 12:
                return "preposition";
            case 13:
                return "prefix";
            case 14:
                return "common Noun";
            case 15:
                return "subordinate Clause";
            case 16:
                return "pronoun";
            case 17:
                return "prefix Verb";
            case 18:
                return "compound Verb";
            case 19:
                return "compound Adjective";
            case 20:
                return "vocative Particle";
            case 21:
                return "plural Noun";
            case 22:
                return "conjunction";
            case 23:
                return "interjection";
            case 24:
                return "abbreviation";
            case 25:
                return "acronym";
            case 26:
                return SentryStackFrame.JsonKeys.SYMBOL;
            case 27:
                return "sentence";
            case 28:
                return "proverb";
            case 29:
                return "idiom";
            case 30:
                return "phrase";
            case 31:
                return "auxiliary verb";
            default:
                return null;
        }
    }
}
