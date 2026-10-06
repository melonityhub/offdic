package fast.dic.dict.presentation.favorite_folders_screen;

import fast.dic.dict.models.database.ListModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DirectoryWordsUiState.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0006HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0010\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u000bR\u0011\u0010\f\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\f\u0010\u000b¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;", "", "items", "", "Lfast/dic/dict/models/database/ListModel;", "isLoading", "", "<init>", "(Ljava/util/List;Z)V", "getItems", "()Ljava/util/List;", "()Z", "isEmpty", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class DirectoryWordsUiState {
    private final boolean isLoading;
    private final List<ListModel> items;

    public DirectoryWordsUiState() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DirectoryWordsUiState copy$default(DirectoryWordsUiState directoryWordsUiState, List list, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            list = directoryWordsUiState.items;
        }
        if ((i & 2) != 0) {
            z = directoryWordsUiState.isLoading;
        }
        return directoryWordsUiState.copy(list, z);
    }

    public final List<ListModel> component1() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getIsLoading() {
        return this.isLoading;
    }

    public final DirectoryWordsUiState copy(List<ListModel> items, boolean isLoading) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new DirectoryWordsUiState(items, isLoading);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DirectoryWordsUiState)) {
            return false;
        }
        DirectoryWordsUiState directoryWordsUiState = (DirectoryWordsUiState) other;
        return Intrinsics.areEqual(this.items, directoryWordsUiState.items) && this.isLoading == directoryWordsUiState.isLoading;
    }

    public int hashCode() {
        return (this.items.hashCode() * 31) + Boolean.hashCode(this.isLoading);
    }

    public String toString() {
        return "DirectoryWordsUiState(items=" + this.items + ", isLoading=" + this.isLoading + ")";
    }

    public DirectoryWordsUiState(List<ListModel> items, boolean z) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
        this.isLoading = z;
    }

    public /* synthetic */ DirectoryWordsUiState(List list, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? false : z);
    }

    public final List<ListModel> getItems() {
        return this.items;
    }

    public final boolean isLoading() {
        return this.isLoading;
    }

    public final boolean isEmpty() {
        return this.items.isEmpty();
    }
}
