package fast.dic.dict.presentation.history_screen;

import fast.dic.dict.models.database.ListModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HistoryUiState.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\r\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\u000e\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\t\u0010\u000b¨\u0006\u0014"}, d2 = {"Lfast/dic/dict/presentation/history_screen/HistoryUiState;", "", "items", "", "Lfast/dic/dict/models/database/ListModel;", "<init>", "(Ljava/util/List;)V", "getItems", "()Ljava/util/List;", "isEmpty", "", "()Z", "component1", "copy", "equals", "other", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class HistoryUiState {
    private final List<ListModel> items;

    public HistoryUiState() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ HistoryUiState copy$default(HistoryUiState historyUiState, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = historyUiState.items;
        }
        return historyUiState.copy(list);
    }

    public final List<ListModel> component1() {
        return this.items;
    }

    public final HistoryUiState copy(List<ListModel> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new HistoryUiState(items);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof HistoryUiState) && Intrinsics.areEqual(this.items, ((HistoryUiState) other).items);
    }

    public int hashCode() {
        return this.items.hashCode();
    }

    public String toString() {
        return "HistoryUiState(items=" + this.items + ")";
    }

    public HistoryUiState(List<ListModel> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
    }

    public /* synthetic */ HistoryUiState(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list);
    }

    public final List<ListModel> getItems() {
        return this.items;
    }

    public final boolean isEmpty() {
        return this.items.isEmpty();
    }
}
