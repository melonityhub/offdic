package fast.dic.dict.presentation.favorite_screen;

import android.os.Bundle;
import androidx.navigation.ActionOnlyNavDirections;
import androidx.navigation.NavDirections;
import fast.dic.dict.R;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FavoritesFragmentDirections.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000 \u00052\u00020\u0001:\u0002\u0004\u0005B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoritesFragmentDirections;", "", "<init>", "()V", "ActionFavoritesFragmentToDirectoryWordsFragment", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FavoritesFragmentDirections {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: FavoritesFragmentDirections.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0083\u0004J\n\u0010\u0019\u001a\u00020\u000bHÖ\u0081\u0004J\n\u0010\u001a\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001b"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoritesFragmentDirections$ActionFavoritesFragmentToDirectoryWordsFragment;", "Landroidx/navigation/NavDirections;", "documentId", "", "documentName", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getDocumentId", "()Ljava/lang/String;", "getDocumentName", "actionId", "", "getActionId", "()I", "arguments", "Landroid/os/Bundle;", "getArguments", "()Landroid/os/Bundle;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    private static final /* data */ class ActionFavoritesFragmentToDirectoryWordsFragment implements NavDirections {
        private final int actionId;
        private final String documentId;
        private final String documentName;

        public static /* synthetic */ ActionFavoritesFragmentToDirectoryWordsFragment copy$default(ActionFavoritesFragmentToDirectoryWordsFragment actionFavoritesFragmentToDirectoryWordsFragment, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = actionFavoritesFragmentToDirectoryWordsFragment.documentId;
            }
            if ((i & 2) != 0) {
                str2 = actionFavoritesFragmentToDirectoryWordsFragment.documentName;
            }
            return actionFavoritesFragmentToDirectoryWordsFragment.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getDocumentId() {
            return this.documentId;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getDocumentName() {
            return this.documentName;
        }

        public final ActionFavoritesFragmentToDirectoryWordsFragment copy(String documentId, String documentName) {
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            Intrinsics.checkNotNullParameter(documentName, "documentName");
            return new ActionFavoritesFragmentToDirectoryWordsFragment(documentId, documentName);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ActionFavoritesFragmentToDirectoryWordsFragment)) {
                return false;
            }
            ActionFavoritesFragmentToDirectoryWordsFragment actionFavoritesFragmentToDirectoryWordsFragment = (ActionFavoritesFragmentToDirectoryWordsFragment) other;
            return Intrinsics.areEqual(this.documentId, actionFavoritesFragmentToDirectoryWordsFragment.documentId) && Intrinsics.areEqual(this.documentName, actionFavoritesFragmentToDirectoryWordsFragment.documentName);
        }

        public int hashCode() {
            return (this.documentId.hashCode() * 31) + this.documentName.hashCode();
        }

        public String toString() {
            return "ActionFavoritesFragmentToDirectoryWordsFragment(documentId=" + this.documentId + ", documentName=" + this.documentName + ")";
        }

        public ActionFavoritesFragmentToDirectoryWordsFragment(String documentId, String documentName) {
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            Intrinsics.checkNotNullParameter(documentName, "documentName");
            this.documentId = documentId;
            this.documentName = documentName;
            this.actionId = R.id.action_favoritesFragment_to_directoryWordsFragment;
        }

        public final String getDocumentId() {
            return this.documentId;
        }

        public final String getDocumentName() {
            return this.documentName;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return this.actionId;
        }

        @Override // androidx.navigation.NavDirections
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            bundle.putString("documentId", this.documentId);
            bundle.putString("documentName", this.documentName);
            return bundle;
        }
    }

    private FavoritesFragmentDirections() {
    }

    /* JADX INFO: compiled from: FavoritesFragmentDirections.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\u00020\u0005H\u0007b\u0002\b\u0006J\u001c\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0007b\u0002\b\u0006¨\u0006\u000b"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoritesFragmentDirections$Companion;", "", "<init>", "()V", "actionFavoritesFragmentToHistoryFragment", "Landroidx/navigation/NavDirections;", "Landroidx/annotation/CheckResult;", "actionFavoritesFragmentToDirectoryWordsFragment", "documentId", "", "documentName", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final NavDirections actionFavoritesFragmentToHistoryFragment() {
            return new ActionOnlyNavDirections(R.id.action_favoritesFragment_to_historyFragment);
        }

        public final NavDirections actionFavoritesFragmentToDirectoryWordsFragment(String documentId, String documentName) {
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            Intrinsics.checkNotNullParameter(documentName, "documentName");
            return new ActionFavoritesFragmentToDirectoryWordsFragment(documentId, documentName);
        }
    }
}
