package fast.dic.dict.presentation.result_order_modal;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ResultOrderModalFragmentArgs.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u000e\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;", "Landroidx/navigation/NavArgs;", "forEnglish", "", "<init>", "(Z)V", "getForEnglish", "()Z", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class ResultOrderModalFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final boolean forEnglish;

    public ResultOrderModalFragmentArgs() {
        this(false, 1, null);
    }

    public static /* synthetic */ ResultOrderModalFragmentArgs copy$default(ResultOrderModalFragmentArgs resultOrderModalFragmentArgs, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = resultOrderModalFragmentArgs.forEnglish;
        }
        return resultOrderModalFragmentArgs.copy(z);
    }

    @JvmStatic
    public static final ResultOrderModalFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final ResultOrderModalFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getForEnglish() {
        return this.forEnglish;
    }

    public final ResultOrderModalFragmentArgs copy(boolean forEnglish) {
        return new ResultOrderModalFragmentArgs(forEnglish);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ResultOrderModalFragmentArgs) && this.forEnglish == ((ResultOrderModalFragmentArgs) other).forEnglish;
    }

    public int hashCode() {
        return Boolean.hashCode(this.forEnglish);
    }

    public String toString() {
        return "ResultOrderModalFragmentArgs(forEnglish=" + this.forEnglish + ")";
    }

    public ResultOrderModalFragmentArgs(boolean z) {
        this.forEnglish = z;
    }

    public /* synthetic */ ResultOrderModalFragmentArgs(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    public final boolean getForEnglish() {
        return this.forEnglish;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("forEnglish", this.forEnglish);
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        savedStateHandle.set("forEnglish", Boolean.valueOf(this.forEnglish));
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: ResultOrderModalFragmentArgs.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\b\bJ\u0014\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\b¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs$Companion;", "", "<init>", "()V", "fromBundle", "Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;", "bundle", "Landroid/os/Bundle;", "Lkotlin/jvm/JvmStatic;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ResultOrderModalFragmentArgs fromBundle(Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(ResultOrderModalFragmentArgs.class.getClassLoader());
            return new ResultOrderModalFragmentArgs(bundle.containsKey("forEnglish") ? bundle.getBoolean("forEnglish") : true);
        }

        @JvmStatic
        public final ResultOrderModalFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            Boolean bool;
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (savedStateHandle.contains("forEnglish")) {
                bool = (Boolean) savedStateHandle.get("forEnglish");
                if (bool == null) {
                    throw new IllegalArgumentException("Argument \"forEnglish\" of type boolean does not support null values");
                }
            } else {
                bool = true;
            }
            return new ResultOrderModalFragmentArgs(bool.booleanValue());
        }
    }
}
