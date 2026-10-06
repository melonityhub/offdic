package fast.dic.dict.presentation.sort_screen;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SortDialogArgs.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u0000  2\u00020\u0001:\u0001 B+\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003J4\u0010\u0018\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001¢\u0006\u0002\u0010\u0019J\u0014\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dHÖ\u0083\u0004J\n\u0010\u001e\u001a\u00020\u0007HÖ\u0081\u0004J\n\u0010\u001f\u001a\u00020\u0004HÖ\u0081\u0004R\u0019\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006!"}, d2 = {"Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;", "Landroidx/navigation/NavArgs;", "items", "", "", "selectedItem", "selectedIndex", "", "<init>", "([Ljava/lang/String;Ljava/lang/String;I)V", "getItems", "()[Ljava/lang/String;", "[Ljava/lang/String;", "getSelectedItem", "()Ljava/lang/String;", "getSelectedIndex", "()I", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "component1", "component2", "component3", "copy", "([Ljava/lang/String;Ljava/lang/String;I)Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;", "equals", "", "other", "", "hashCode", "toString", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class SortDialogArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String[] items;
    private final int selectedIndex;
    private final String selectedItem;

    public static /* synthetic */ SortDialogArgs copy$default(SortDialogArgs sortDialogArgs, String[] strArr, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            strArr = sortDialogArgs.items;
        }
        if ((i2 & 2) != 0) {
            str = sortDialogArgs.selectedItem;
        }
        if ((i2 & 4) != 0) {
            i = sortDialogArgs.selectedIndex;
        }
        return sortDialogArgs.copy(strArr, str, i);
    }

    @JvmStatic
    public static final SortDialogArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final SortDialogArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String[] getItems() {
        return this.items;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSelectedItem() {
        return this.selectedItem;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    public final SortDialogArgs copy(String[] items, String selectedItem, int selectedIndex) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new SortDialogArgs(items, selectedItem, selectedIndex);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SortDialogArgs)) {
            return false;
        }
        SortDialogArgs sortDialogArgs = (SortDialogArgs) other;
        return Intrinsics.areEqual(this.items, sortDialogArgs.items) && Intrinsics.areEqual(this.selectedItem, sortDialogArgs.selectedItem) && this.selectedIndex == sortDialogArgs.selectedIndex;
    }

    public int hashCode() {
        int iHashCode = Arrays.hashCode(this.items) * 31;
        String str = this.selectedItem;
        return ((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Integer.hashCode(this.selectedIndex);
    }

    public String toString() {
        return "SortDialogArgs(items=" + Arrays.toString(this.items) + ", selectedItem=" + this.selectedItem + ", selectedIndex=" + this.selectedIndex + ")";
    }

    public SortDialogArgs(String[] items, String str, int i) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
        this.selectedItem = str;
        this.selectedIndex = i;
    }

    public /* synthetic */ SortDialogArgs(String[] strArr, String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(strArr, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? -1 : i);
    }

    public final String[] getItems() {
        return this.items;
    }

    public final String getSelectedItem() {
        return this.selectedItem;
    }

    public final int getSelectedIndex() {
        return this.selectedIndex;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putStringArray("items", this.items);
        bundle.putString("selectedItem", this.selectedItem);
        bundle.putInt("selectedIndex", this.selectedIndex);
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        savedStateHandle.set("items", this.items);
        savedStateHandle.set("selectedItem", this.selectedItem);
        savedStateHandle.set("selectedIndex", Integer.valueOf(this.selectedIndex));
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: SortDialogArgs.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\b\bJ\u0014\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\b¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/sort_screen/SortDialogArgs$Companion;", "", "<init>", "()V", "fromBundle", "Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;", "bundle", "Landroid/os/Bundle;", "Lkotlin/jvm/JvmStatic;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SortDialogArgs fromBundle(Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(SortDialogArgs.class.getClassLoader());
            if (bundle.containsKey("items")) {
                String[] stringArray = bundle.getStringArray("items");
                if (stringArray == null) {
                    throw new IllegalArgumentException("Argument \"items\" is marked as non-null but was passed a null value.");
                }
                return new SortDialogArgs(stringArray, bundle.containsKey("selectedItem") ? bundle.getString("selectedItem") : null, bundle.containsKey("selectedIndex") ? bundle.getInt("selectedIndex") : -1);
            }
            throw new IllegalArgumentException("Required argument \"items\" is missing and does not have an android:defaultValue");
        }

        @JvmStatic
        public final SortDialogArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            Integer num;
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (savedStateHandle.contains("items")) {
                String[] strArr = (String[]) savedStateHandle.get("items");
                if (strArr == null) {
                    throw new IllegalArgumentException("Argument \"items\" is marked as non-null but was passed a null value");
                }
                String str = savedStateHandle.contains("selectedItem") ? (String) savedStateHandle.get("selectedItem") : null;
                if (savedStateHandle.contains("selectedIndex")) {
                    num = (Integer) savedStateHandle.get("selectedIndex");
                    if (num == null) {
                        throw new IllegalArgumentException("Argument \"selectedIndex\" of type integer does not support null values");
                    }
                } else {
                    num = -1;
                }
                return new SortDialogArgs(strArr, str, num.intValue());
            }
            throw new IllegalArgumentException("Required argument \"items\" is missing and does not have an android:defaultValue");
        }
    }
}
