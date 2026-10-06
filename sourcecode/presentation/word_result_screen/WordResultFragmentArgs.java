package fast.dic.dict.presentation.word_result_screen;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import fast.dic.dict.models.database.ListModel;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WordResultFragmentArgs.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB'\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0011J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J)\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u0016\u001a\u00020\u00052\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0083\u0004J\n\u0010\u0019\u001a\u00020\u001aHÖ\u0081\u0004J\n\u0010\u001b\u001a\u00020\u001cHÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u001e"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;", "Landroidx/navigation/NavArgs;", "listModel", "Lfast/dic/dict/models/database/ListModel;", "fromShare", "", "enableSearchbar", "<init>", "(Lfast/dic/dict/models/database/ListModel;ZZ)V", "getListModel", "()Lfast/dic/dict/models/database/ListModel;", "getFromShare", "()Z", "getEnableSearchbar", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "component1", "component2", "component3", "copy", "equals", "other", "", "hashCode", "", "toString", "", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class WordResultFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final boolean enableSearchbar;
    private final boolean fromShare;
    private final ListModel listModel;

    public WordResultFragmentArgs() {
        this(null, false, false, 7, null);
    }

    public static /* synthetic */ WordResultFragmentArgs copy$default(WordResultFragmentArgs wordResultFragmentArgs, ListModel listModel, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            listModel = wordResultFragmentArgs.listModel;
        }
        if ((i & 2) != 0) {
            z = wordResultFragmentArgs.fromShare;
        }
        if ((i & 4) != 0) {
            z2 = wordResultFragmentArgs.enableSearchbar;
        }
        return wordResultFragmentArgs.copy(listModel, z, z2);
    }

    @JvmStatic
    public static final WordResultFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final WordResultFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ListModel getListModel() {
        return this.listModel;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getFromShare() {
        return this.fromShare;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getEnableSearchbar() {
        return this.enableSearchbar;
    }

    public final WordResultFragmentArgs copy(ListModel listModel, boolean fromShare, boolean enableSearchbar) {
        return new WordResultFragmentArgs(listModel, fromShare, enableSearchbar);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WordResultFragmentArgs)) {
            return false;
        }
        WordResultFragmentArgs wordResultFragmentArgs = (WordResultFragmentArgs) other;
        return Intrinsics.areEqual(this.listModel, wordResultFragmentArgs.listModel) && this.fromShare == wordResultFragmentArgs.fromShare && this.enableSearchbar == wordResultFragmentArgs.enableSearchbar;
    }

    public int hashCode() {
        ListModel listModel = this.listModel;
        return ((((listModel == null ? 0 : listModel.hashCode()) * 31) + Boolean.hashCode(this.fromShare)) * 31) + Boolean.hashCode(this.enableSearchbar);
    }

    public String toString() {
        return "WordResultFragmentArgs(listModel=" + this.listModel + ", fromShare=" + this.fromShare + ", enableSearchbar=" + this.enableSearchbar + ")";
    }

    public WordResultFragmentArgs(ListModel listModel, boolean z, boolean z2) {
        this.listModel = listModel;
        this.fromShare = z;
        this.enableSearchbar = z2;
    }

    public /* synthetic */ WordResultFragmentArgs(ListModel listModel, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : listModel, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2);
    }

    public final ListModel getListModel() {
        return this.listModel;
    }

    public final boolean getFromShare() {
        return this.fromShare;
    }

    public final boolean getEnableSearchbar() {
        return this.enableSearchbar;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(ListModel.class)) {
            bundle.putParcelable("listModel", this.listModel);
        } else if (Serializable.class.isAssignableFrom(ListModel.class)) {
            bundle.putSerializable("listModel", (Serializable) this.listModel);
        }
        bundle.putBoolean("fromShare", this.fromShare);
        bundle.putBoolean("enableSearchbar", this.enableSearchbar);
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        if (Parcelable.class.isAssignableFrom(ListModel.class)) {
            savedStateHandle.set("listModel", this.listModel);
        } else if (Serializable.class.isAssignableFrom(ListModel.class)) {
            savedStateHandle.set("listModel", (Serializable) this.listModel);
        }
        savedStateHandle.set("fromShare", Boolean.valueOf(this.fromShare));
        savedStateHandle.set("enableSearchbar", Boolean.valueOf(this.enableSearchbar));
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: WordResultFragmentArgs.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\b\bJ\u0014\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\b¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs$Companion;", "", "<init>", "()V", "fromBundle", "Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;", "bundle", "Landroid/os/Bundle;", "Lkotlin/jvm/JvmStatic;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final WordResultFragmentArgs fromBundle(Bundle bundle) {
            ListModel listModel;
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(WordResultFragmentArgs.class.getClassLoader());
            if (!bundle.containsKey("listModel")) {
                listModel = null;
            } else if (Parcelable.class.isAssignableFrom(ListModel.class) || Serializable.class.isAssignableFrom(ListModel.class)) {
                listModel = (ListModel) bundle.get("listModel");
            } else {
                throw new UnsupportedOperationException(ListModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            return new WordResultFragmentArgs(listModel, bundle.containsKey("fromShare") ? bundle.getBoolean("fromShare") : false, bundle.containsKey("enableSearchbar") ? bundle.getBoolean("enableSearchbar") : false);
        }

        @JvmStatic
        public final WordResultFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            ListModel listModel;
            Boolean bool;
            Boolean bool2;
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (!savedStateHandle.contains("listModel")) {
                listModel = null;
            } else if (Parcelable.class.isAssignableFrom(ListModel.class) || Serializable.class.isAssignableFrom(ListModel.class)) {
                listModel = (ListModel) savedStateHandle.get("listModel");
            } else {
                throw new UnsupportedOperationException(ListModel.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
            }
            if (savedStateHandle.contains("fromShare")) {
                bool = (Boolean) savedStateHandle.get("fromShare");
                if (bool == null) {
                    throw new IllegalArgumentException("Argument \"fromShare\" of type boolean does not support null values");
                }
            } else {
                bool = false;
            }
            if (savedStateHandle.contains("enableSearchbar")) {
                bool2 = (Boolean) savedStateHandle.get("enableSearchbar");
                if (bool2 == null) {
                    throw new IllegalArgumentException("Argument \"enableSearchbar\" of type boolean does not support null values");
                }
            } else {
                bool2 = false;
            }
            return new WordResultFragmentArgs(listModel, bool.booleanValue(), bool2.booleanValue());
        }
    }
}
