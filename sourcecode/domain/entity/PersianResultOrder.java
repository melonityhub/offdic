package fast.dic.dict.domain.entity;

import com.ironsource.U3;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ResultOrderEnum.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lfast/dic/dict/domain/entity/PersianResultOrder;", "", "value", "", U3.i.W, "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "getKey", "MEANING", "PERSIAN_SYNONYMS_ANTONYMS", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public enum PersianResultOrder {
    MEANING("0", "meaings-sentences"),
    PERSIAN_SYNONYMS_ANTONYMS("1", "synonyms-antonyms");

    private final String key;
    private final String value;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public static EnumEntries<PersianResultOrder> getEntries() {
        return $ENTRIES;
    }

    PersianResultOrder(String str, String str2) {
        this.value = str;
        this.key = str2;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getValue() {
        return this.value;
    }

    /* JADX INFO: compiled from: ResultOrderEnum.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/domain/entity/PersianResultOrder$Companion;", "", "<init>", "()V", "convertTo", "Lfast/dic/dict/domain/entity/PersianResultOrder;", "value", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final PersianResultOrder convertTo(String value) {
            PersianResultOrder next;
            Intrinsics.checkNotNullParameter(value, "value");
            Iterator<PersianResultOrder> it = PersianResultOrder.getEntries().iterator();
            while (it.hasNext()) {
                next = it.next();
                if (Intrinsics.areEqual(next.getValue(), value)) {
                    return next;
                }
            }
            next = null;
            return next;
        }
    }
}
