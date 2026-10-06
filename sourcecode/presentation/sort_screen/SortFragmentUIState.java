package fast.dic.dict.presentation.sort_screen;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SortFragmentUIState.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u0011\u001a\u00020\u00052\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;", "", "title", "", "selected", "", "<init>", "(Ljava/lang/String;Z)V", "getTitle", "()Ljava/lang/String;", "getSelected", "()Z", "setSelected", "(Z)V", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class SortFragmentUIState {
    private boolean selected;
    private final String title;

    public static /* synthetic */ SortFragmentUIState copy$default(SortFragmentUIState sortFragmentUIState, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sortFragmentUIState.title;
        }
        if ((i & 2) != 0) {
            z = sortFragmentUIState.selected;
        }
        return sortFragmentUIState.copy(str, z);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getSelected() {
        return this.selected;
    }

    public final SortFragmentUIState copy(String title, boolean selected) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new SortFragmentUIState(title, selected);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SortFragmentUIState)) {
            return false;
        }
        SortFragmentUIState sortFragmentUIState = (SortFragmentUIState) other;
        return Intrinsics.areEqual(this.title, sortFragmentUIState.title) && this.selected == sortFragmentUIState.selected;
    }

    public int hashCode() {
        return (this.title.hashCode() * 31) + Boolean.hashCode(this.selected);
    }

    public String toString() {
        return "SortFragmentUIState(title=" + this.title + ", selected=" + this.selected + ")";
    }

    public SortFragmentUIState(String title, boolean z) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.title = title;
        this.selected = z;
    }

    public final String getTitle() {
        return this.title;
    }

    public final boolean getSelected() {
        return this.selected;
    }

    public final void setSelected(boolean z) {
        this.selected = z;
    }
}
