package fast.dic.dict.fragments;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SearchFragmentArgs.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u0013\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0083\u0004J\n\u0010\u0016\u001a\u00020\u0017HÖ\u0081\u0004J\n\u0010\u0018\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001a"}, d2 = {"Lfast/dic/dict/fragments/SearchFragmentArgs;", "Landroidx/navigation/NavArgs;", "word", "", "fromHistory", "", "<init>", "(Ljava/lang/String;Z)V", "getWord", "()Ljava/lang/String;", "getFromHistory", "()Z", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "component1", "component2", "copy", "equals", "other", "", "hashCode", "", "toString", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class SearchFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final boolean fromHistory;
    private final String word;

    public SearchFragmentArgs() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ SearchFragmentArgs copy$default(SearchFragmentArgs searchFragmentArgs, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = searchFragmentArgs.word;
        }
        if ((i & 2) != 0) {
            z = searchFragmentArgs.fromHistory;
        }
        return searchFragmentArgs.copy(str, z);
    }

    @JvmStatic
    public static final SearchFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final SearchFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getWord() {
        return this.word;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getFromHistory() {
        return this.fromHistory;
    }

    public final SearchFragmentArgs copy(String word, boolean fromHistory) {
        return new SearchFragmentArgs(word, fromHistory);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchFragmentArgs)) {
            return false;
        }
        SearchFragmentArgs searchFragmentArgs = (SearchFragmentArgs) other;
        return Intrinsics.areEqual(this.word, searchFragmentArgs.word) && this.fromHistory == searchFragmentArgs.fromHistory;
    }

    public int hashCode() {
        String str = this.word;
        return ((str == null ? 0 : str.hashCode()) * 31) + Boolean.hashCode(this.fromHistory);
    }

    public String toString() {
        return "SearchFragmentArgs(word=" + this.word + ", fromHistory=" + this.fromHistory + ")";
    }

    public SearchFragmentArgs(String str, boolean z) {
        this.word = str;
        this.fromHistory = z;
    }

    public /* synthetic */ SearchFragmentArgs(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? false : z);
    }

    public final String getWord() {
        return this.word;
    }

    public final boolean getFromHistory() {
        return this.fromHistory;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString("word", this.word);
        bundle.putBoolean("fromHistory", this.fromHistory);
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        savedStateHandle.set("word", this.word);
        savedStateHandle.set("fromHistory", Boolean.valueOf(this.fromHistory));
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: SearchFragmentArgs.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\b\bJ\u0014\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\b¨\u0006\f"}, d2 = {"Lfast/dic/dict/fragments/SearchFragmentArgs$Companion;", "", "<init>", "()V", "fromBundle", "Lfast/dic/dict/fragments/SearchFragmentArgs;", "bundle", "Landroid/os/Bundle;", "Lkotlin/jvm/JvmStatic;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SearchFragmentArgs fromBundle(Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(SearchFragmentArgs.class.getClassLoader());
            return new SearchFragmentArgs(bundle.containsKey("word") ? bundle.getString("word") : null, bundle.containsKey("fromHistory") ? bundle.getBoolean("fromHistory") : false);
        }

        @JvmStatic
        public final SearchFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            Boolean bool;
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            String str = savedStateHandle.contains("word") ? (String) savedStateHandle.get("word") : null;
            if (savedStateHandle.contains("fromHistory")) {
                bool = (Boolean) savedStateHandle.get("fromHistory");
                if (bool == null) {
                    throw new IllegalArgumentException("Argument \"fromHistory\" of type boolean does not support null values");
                }
            } else {
                bool = false;
            }
            return new SearchFragmentArgs(str, bool.booleanValue());
        }
    }
}
