package fast.dic.dict.utils;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDCategory.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lfast/dic/dict/utils/Category;", "", "rawValue", "", "<init>", "(Ljava/lang/String;II)V", "getRawValue", "()I", "Persian", "English", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public enum Category {
    Persian(1),
    English(2);

    private final int rawValue;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public static EnumEntries<Category> getEntries() {
        return $ENTRIES;
    }

    Category(int i) {
        this.rawValue = i;
    }

    public final int getRawValue() {
        return this.rawValue;
    }

    /* JADX INFO: compiled from: FDCategory.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\u0002J\u000e\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nJ\u0011\u0010\u000b\u001a\u00020\u0005*\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\f¨\u0006\r"}, d2 = {"Lfast/dic/dict/utils/Category$Companion;", "", "<init>", "()V", "invoke", "Lfast/dic/dict/utils/Category;", "rawValue", "", "convert", "name", "", "convertToCategory", "(Ljava/lang/Integer;)Lfast/dic/dict/utils/Category;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Category invoke(int rawValue) {
            for (Category category : Category.values()) {
                if (category.getRawValue() == rawValue) {
                    return category;
                }
            }
            return null;
        }

        public final Category convert(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            Locale ROOT = Locale.ROOT;
            Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
            String lowerCase = "English".toLowerCase(ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return Intrinsics.areEqual(name, lowerCase) ? Category.English : Category.Persian;
        }

        public final Category convertToCategory(Integer num) {
            return ((num != null && num.intValue() == Category.English.getRawValue()) || num == null) ? Category.English : Category.Persian;
        }
    }
}
