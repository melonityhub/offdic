package fast.dic.dict.domain.entity;

import androidx.exifinterface.media.ExifInterface;
import com.ironsource.U3;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ResultOrderEnum.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0019\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/domain/entity/EnglishResultOrder;", "", "value", "", U3.i.W, "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "getKey", "MEANING", "ENGLISH_SYNONYMS_ANTONYMS", "PHRASAL_VERBS", "COLLOCATIONS", "IDIOMS", "WORD_FAMILY", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public enum EnglishResultOrder {
    MEANING("0", "meaings-sentences"),
    ENGLISH_SYNONYMS_ANTONYMS("1", "synonyms-antonyms"),
    PHRASAL_VERBS("2", "phrasal-verbs"),
    COLLOCATIONS(ExifInterface.GPS_MEASUREMENT_3D, "collocations"),
    IDIOMS("4", "idioms"),
    WORD_FAMILY(CampaignEx.CLICKMODE_ON, "word-family");

    private final String key;
    private final String value;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public static EnumEntries<EnglishResultOrder> getEntries() {
        return $ENTRIES;
    }

    EnglishResultOrder(String str, String str2) {
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
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/domain/entity/EnglishResultOrder$Companion;", "", "<init>", "()V", "convertTo", "Lfast/dic/dict/domain/entity/EnglishResultOrder;", "value", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final EnglishResultOrder convertTo(String value) {
            EnglishResultOrder next;
            Intrinsics.checkNotNullParameter(value, "value");
            Iterator<EnglishResultOrder> it = EnglishResultOrder.getEntries().iterator();
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
