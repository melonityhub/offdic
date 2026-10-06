package fast.dic.dict.presentation.wod_history_screen;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WodHistoryFragmentArgs.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;", "Landroidx/navigation/NavArgs;", "year", "", "<init>", "(Ljava/lang/String;)V", "getYear", "()Ljava/lang/String;", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class WodHistoryFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String year;

    public static /* synthetic */ WodHistoryFragmentArgs copy$default(WodHistoryFragmentArgs wodHistoryFragmentArgs, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = wodHistoryFragmentArgs.year;
        }
        return wodHistoryFragmentArgs.copy(str);
    }

    @JvmStatic
    public static final WodHistoryFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final WodHistoryFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getYear() {
        return this.year;
    }

    public final WodHistoryFragmentArgs copy(String year) {
        Intrinsics.checkNotNullParameter(year, "year");
        return new WodHistoryFragmentArgs(year);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof WodHistoryFragmentArgs) && Intrinsics.areEqual(this.year, ((WodHistoryFragmentArgs) other).year);
    }

    public int hashCode() {
        return this.year.hashCode();
    }

    public String toString() {
        return "WodHistoryFragmentArgs(year=" + this.year + ")";
    }

    public WodHistoryFragmentArgs(String year) {
        Intrinsics.checkNotNullParameter(year, "year");
        this.year = year;
    }

    public final String getYear() {
        return this.year;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString("year", this.year);
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        savedStateHandle.set("year", this.year);
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: WodHistoryFragmentArgs.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\b\bJ\u0014\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\b¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs$Companion;", "", "<init>", "()V", "fromBundle", "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;", "bundle", "Landroid/os/Bundle;", "Lkotlin/jvm/JvmStatic;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final WodHistoryFragmentArgs fromBundle(Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(WodHistoryFragmentArgs.class.getClassLoader());
            if (bundle.containsKey("year")) {
                String string = bundle.getString("year");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"year\" is marked as non-null but was passed a null value.");
                }
                return new WodHistoryFragmentArgs(string);
            }
            throw new IllegalArgumentException("Required argument \"year\" is missing and does not have an android:defaultValue");
        }

        @JvmStatic
        public final WodHistoryFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (savedStateHandle.contains("year")) {
                String str = (String) savedStateHandle.get("year");
                if (str == null) {
                    throw new IllegalArgumentException("Argument \"year\" is marked as non-null but was passed a null value");
                }
                return new WodHistoryFragmentArgs(str);
            }
            throw new IllegalArgumentException("Required argument \"year\" is missing and does not have an android:defaultValue");
        }
    }
}
