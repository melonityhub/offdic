package fast.dic.dict.fragments;

import android.os.Bundle;
import androidx.navigation.NavDirections;
import fast.dic.dict.R;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HomeFragmentDirections.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000 \u00052\u00020\u0001:\u0002\u0004\u0005B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lfast/dic/dict/fragments/HomeFragmentDirections;", "", "<init>", "()V", "ActionHomeFragmentToSearchFragment", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class HomeFragmentDirections {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: HomeFragmentDirections.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0082\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u0017\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019HÖ\u0083\u0004J\n\u0010\u001a\u001a\u00020\rHÖ\u0081\u0004J\n\u0010\u001b\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\rX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00118VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001c"}, d2 = {"Lfast/dic/dict/fragments/HomeFragmentDirections$ActionHomeFragmentToSearchFragment;", "Landroidx/navigation/NavDirections;", "word", "", "fromHistory", "", "<init>", "(Ljava/lang/String;Z)V", "getWord", "()Ljava/lang/String;", "getFromHistory", "()Z", "actionId", "", "getActionId", "()I", "arguments", "Landroid/os/Bundle;", "getArguments", "()Landroid/os/Bundle;", "component1", "component2", "copy", "equals", "other", "", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    private static final /* data */ class ActionHomeFragmentToSearchFragment implements NavDirections {
        private final int actionId;
        private final boolean fromHistory;
        private final String word;

        public ActionHomeFragmentToSearchFragment() {
            this(null, false, 3, 0 == true ? 1 : 0);
        }

        public static /* synthetic */ ActionHomeFragmentToSearchFragment copy$default(ActionHomeFragmentToSearchFragment actionHomeFragmentToSearchFragment, String str, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = actionHomeFragmentToSearchFragment.word;
            }
            if ((i & 2) != 0) {
                z = actionHomeFragmentToSearchFragment.fromHistory;
            }
            return actionHomeFragmentToSearchFragment.copy(str, z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getWord() {
            return this.word;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getFromHistory() {
            return this.fromHistory;
        }

        public final ActionHomeFragmentToSearchFragment copy(String word, boolean fromHistory) {
            return new ActionHomeFragmentToSearchFragment(word, fromHistory);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ActionHomeFragmentToSearchFragment)) {
                return false;
            }
            ActionHomeFragmentToSearchFragment actionHomeFragmentToSearchFragment = (ActionHomeFragmentToSearchFragment) other;
            return Intrinsics.areEqual(this.word, actionHomeFragmentToSearchFragment.word) && this.fromHistory == actionHomeFragmentToSearchFragment.fromHistory;
        }

        public int hashCode() {
            String str = this.word;
            return ((str == null ? 0 : str.hashCode()) * 31) + Boolean.hashCode(this.fromHistory);
        }

        public String toString() {
            return "ActionHomeFragmentToSearchFragment(word=" + this.word + ", fromHistory=" + this.fromHistory + ")";
        }

        public ActionHomeFragmentToSearchFragment(String str, boolean z) {
            this.word = str;
            this.fromHistory = z;
            this.actionId = R.id.action_homeFragment_to_searchFragment;
        }

        public /* synthetic */ ActionHomeFragmentToSearchFragment(String str, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? false : z);
        }

        public final String getWord() {
            return this.word;
        }

        public final boolean getFromHistory() {
            return this.fromHistory;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return this.actionId;
        }

        @Override // androidx.navigation.NavDirections
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            bundle.putString("word", this.word);
            bundle.putBoolean("fromHistory", this.fromHistory);
            return bundle;
        }
    }

    private HomeFragmentDirections() {
    }

    /* JADX INFO: compiled from: HomeFragmentDirections.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tH\u0007b\u0002\b\n¨\u0006\u000b"}, d2 = {"Lfast/dic/dict/fragments/HomeFragmentDirections$Companion;", "", "<init>", "()V", "actionHomeFragmentToSearchFragment", "Landroidx/navigation/NavDirections;", "word", "", "fromHistory", "", "Landroidx/annotation/CheckResult;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ NavDirections actionHomeFragmentToSearchFragment$default(Companion companion, String str, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                str = null;
            }
            if ((i & 2) != 0) {
                z = false;
            }
            return companion.actionHomeFragmentToSearchFragment(str, z);
        }

        public final NavDirections actionHomeFragmentToSearchFragment(String word, boolean fromHistory) {
            return new ActionHomeFragmentToSearchFragment(word, fromHistory);
        }
    }
}
