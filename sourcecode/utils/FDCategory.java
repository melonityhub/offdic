package fast.dic.dict.utils;

import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDCategory.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\b\u0007\u001a\u0002\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0015\u0010\n\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"Lfast/dic/dict/utils/FDCategory;", "", "<init>", "()V", "Ljavax/inject/Inject;", "findLanguage", "", "word", "", "(Ljava/lang/String;)Ljava/lang/Integer;", "find", "category_id", "(Ljava/lang/Integer;)Ljava/lang/String;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDCategory {
    @Inject
    public FDCategory() {
    }

    public final Integer findLanguage(String word) {
        Intrinsics.checkNotNullParameter(word, "word");
        if (FDLanguageWord.INSTANCE.isEnglish(word)) {
            return Integer.valueOf(Category.English.getRawValue());
        }
        if (FDLanguageWord.INSTANCE.isPersian(word)) {
            return Integer.valueOf(Category.Persian.getRawValue());
        }
        return null;
    }

    public final String find(Integer category_id) {
        if (category_id == null) {
            return "";
        }
        switch (category_id.intValue()) {
            case 1:
                return "گیاه\u200cشناسی";
            case 2:
                return "جانورشناسی";
            case 3:
                return "شیمی";
            case 4:
                return "پزشکی";
            case 5:
                return "زیست\u200cشناسی";
            case 6:
                return "کالبدشناسی";
            case 7:
                return "حقوق";
            case 8:
                return "موسیقی";
            case 9:
                return "فیزیک";
            case 10:
                return "نجوم";
            case 11:
                return "ریاضی";
            case 12:
                return "داروسازی";
            case 13:
                return "معماری";
            case 14:
                return "مکانیک";
            case 15:
                return "کامپیوتر";
            case 16:
                return "برق";
            case 17:
                return "دستور زبان";
            case 18:
                return "غذا و آشپزی";
            case 19:
                return "حشره\u200cشناسی";
            case 20:
                return "زمین\u200cشناسی";
            case 21:
                return "ورزش";
            case 22:
                return "روان\u200cشناسی";
            case 23:
                return "روان\u200cپزشکی";
            case 24:
                return "آب و هوا";
            case 25:
                return "هتل";
            case 26:
                return "سفر";
            case 27:
                return "زبان\u200cشناسی";
            case 28:
                return "رنگ";
            case 29:
                return "ادبی";
            case 30:
                return "ناپسند";
            case 31:
                return "اقتصاد";
            case 32:
                return "تکنولوژی";
            case 33:
                return "پوشاک";
            case 34:
                return "عامیانه";
            case 35:
                return "کودکانه";
            case 36:
                return "قدیمی";
            case 37:
                return "سینما و تئاتر";
            case 38:
                return "کشور";
            case 39:
                return "جغرافیا";
            case 40:
                return "مجازی";
            case 41:
                return "هنر";
            case 42:
                return "آرایش و پیرایش";
            case 43:
                return "تقویم";
            case 44:
                return "سیاست";
            case 45:
                return "میوه";
            case 46:
                return "هندسه";
            case 47:
                return "دین";
            case 48:
                return "کسب\u200cوکار";
            case 49:
                return "نام تجاری";
            case 50:
                return "آمیزواج";
            case 51:
                return "لاتین";
            case 52:
                return "ادبیات";
            case 53:
                return "هوش مصنوعی";
            case 54:
                return "تاریخ";
            case 55:
                return "سلامت روان";
            case 56:
                return "جامعه\u200cشناسی";
            case 57:
                return "عنصر شیمیایی";
            default:
                return "";
        }
    }
}
