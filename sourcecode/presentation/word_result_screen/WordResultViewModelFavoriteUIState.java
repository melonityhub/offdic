package fast.dic.dict.presentation.word_result_screen;

import fast.dic.dict.models.database.FolderModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WordResultViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\u0004\u0005\u0006\u0007B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0004\b\t\n\u000b¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState;", "", "<init>", "()V", "Loading", "SelectFolder", "AddToFavorite", "RemoveFromFavorite", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$AddToFavorite;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$Loading;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$RemoveFromFavorite;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$SelectFolder;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class WordResultViewModelFavoriteUIState {
    public /* synthetic */ WordResultViewModelFavoriteUIState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÖ\u0083\u0004J\n\u0010\b\u001a\u00020\tHÖ\u0081\u0004J\n\u0010\n\u001a\u00020\u000bHÖ\u0081\u0004¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$Loading;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState;", "<init>", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Loading extends WordResultViewModelFavoriteUIState {
        public static final Loading INSTANCE = new Loading();

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Loading)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1491091607;
        }

        public String toString() {
            return "Loading";
        }

        private Loading() {
            super(null);
        }
    }

    private WordResultViewModelFavoriteUIState() {
    }

    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$SelectFolder;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState;", "documentId", "", "<init>", "(Ljava/lang/String;)V", "getDocumentId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class SelectFolder extends WordResultViewModelFavoriteUIState {
        private final String documentId;

        public static /* synthetic */ SelectFolder copy$default(SelectFolder selectFolder, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = selectFolder.documentId;
            }
            return selectFolder.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getDocumentId() {
            return this.documentId;
        }

        public final SelectFolder copy(String documentId) {
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            return new SelectFolder(documentId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof SelectFolder) && Intrinsics.areEqual(this.documentId, ((SelectFolder) other).documentId);
        }

        public int hashCode() {
            return this.documentId.hashCode();
        }

        public String toString() {
            return "SelectFolder(documentId=" + this.documentId + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SelectFolder(String documentId) {
            super(null);
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            this.documentId = documentId;
        }

        public final String getDocumentId() {
            return this.documentId;
        }
    }

    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$AddToFavorite;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState;", "folder", "Lfast/dic/dict/models/database/FolderModel;", "<init>", "(Lfast/dic/dict/models/database/FolderModel;)V", "getFolder", "()Lfast/dic/dict/models/database/FolderModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class AddToFavorite extends WordResultViewModelFavoriteUIState {
        private final FolderModel folder;

        public static /* synthetic */ AddToFavorite copy$default(AddToFavorite addToFavorite, FolderModel folderModel, int i, Object obj) {
            if ((i & 1) != 0) {
                folderModel = addToFavorite.folder;
            }
            return addToFavorite.copy(folderModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final FolderModel getFolder() {
            return this.folder;
        }

        public final AddToFavorite copy(FolderModel folder) {
            Intrinsics.checkNotNullParameter(folder, "folder");
            return new AddToFavorite(folder);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof AddToFavorite) && Intrinsics.areEqual(this.folder, ((AddToFavorite) other).folder);
        }

        public int hashCode() {
            return this.folder.hashCode();
        }

        public String toString() {
            return "AddToFavorite(folder=" + this.folder + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AddToFavorite(FolderModel folder) {
            super(null);
            Intrinsics.checkNotNullParameter(folder, "folder");
            this.folder = folder;
        }

        public final FolderModel getFolder() {
            return this.folder;
        }
    }

    /* JADX INFO: compiled from: WordResultViewModel.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState$RemoveFromFavorite;", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState;", "documentId", "", "<init>", "(Ljava/lang/String;)V", "getDocumentId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class RemoveFromFavorite extends WordResultViewModelFavoriteUIState {
        private final String documentId;

        public static /* synthetic */ RemoveFromFavorite copy$default(RemoveFromFavorite removeFromFavorite, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = removeFromFavorite.documentId;
            }
            return removeFromFavorite.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getDocumentId() {
            return this.documentId;
        }

        public final RemoveFromFavorite copy(String documentId) {
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            return new RemoveFromFavorite(documentId);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof RemoveFromFavorite) && Intrinsics.areEqual(this.documentId, ((RemoveFromFavorite) other).documentId);
        }

        public int hashCode() {
            return this.documentId.hashCode();
        }

        public String toString() {
            return "RemoveFromFavorite(documentId=" + this.documentId + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RemoveFromFavorite(String documentId) {
            super(null);
            Intrinsics.checkNotNullParameter(documentId, "documentId");
            this.documentId = documentId;
        }

        public final String getDocumentId() {
            return this.documentId;
        }
    }
}
