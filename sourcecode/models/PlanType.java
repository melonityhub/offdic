package fast.dic.dict.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: compiled from: PricingResponse.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lfast/dic/dict/models/PlanType;", "", "index", "", "<init>", "(Ljava/lang/String;II)V", "getIndex", "()I", "FREE", "REMOVE_ADS", "PRO", "AI", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public enum PlanType {
    FREE(1),
    REMOVE_ADS(0),
    PRO(2),
    AI(3);

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
    private final int index;

    public static EnumEntries<PlanType> getEntries() {
        return $ENTRIES;
    }

    PlanType(int i) {
        this.index = i;
    }

    public final int getIndex() {
        return this.index;
    }
}
