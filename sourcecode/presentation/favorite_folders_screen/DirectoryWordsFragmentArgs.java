package fast.dic.dict.presentation.favorite_folders_screen;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DirectoryWordsFragmentArgs.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\rJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004J\n\u0010\u0017\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0019"}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;", "Landroidx/navigation/NavArgs;", "documentId", "", "documentName", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getDocumentId", "()Ljava/lang/String;", "getDocumentName", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class DirectoryWordsFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String documentId;
    private final String documentName;

    public static /* synthetic */ DirectoryWordsFragmentArgs copy$default(DirectoryWordsFragmentArgs directoryWordsFragmentArgs, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = directoryWordsFragmentArgs.documentId;
        }
        if ((i & 2) != 0) {
            str2 = directoryWordsFragmentArgs.documentName;
        }
        return directoryWordsFragmentArgs.copy(str, str2);
    }

    @JvmStatic
    public static final DirectoryWordsFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final DirectoryWordsFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getDocumentId() {
        return this.documentId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDocumentName() {
        return this.documentName;
    }

    public final DirectoryWordsFragmentArgs copy(String documentId, String documentName) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(documentName, "documentName");
        return new DirectoryWordsFragmentArgs(documentId, documentName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof DirectoryWordsFragmentArgs)) {
            return false;
        }
        DirectoryWordsFragmentArgs directoryWordsFragmentArgs = (DirectoryWordsFragmentArgs) other;
        return Intrinsics.areEqual(this.documentId, directoryWordsFragmentArgs.documentId) && Intrinsics.areEqual(this.documentName, directoryWordsFragmentArgs.documentName);
    }

    public int hashCode() {
        return (this.documentId.hashCode() * 31) + this.documentName.hashCode();
    }

    public String toString() {
        return "DirectoryWordsFragmentArgs(documentId=" + this.documentId + ", documentName=" + this.documentName + ")";
    }

    public DirectoryWordsFragmentArgs(String documentId, String documentName) {
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(documentName, "documentName");
        this.documentId = documentId;
        this.documentName = documentName;
    }

    public final String getDocumentId() {
        return this.documentId;
    }

    public final String getDocumentName() {
        return this.documentName;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString("documentId", this.documentId);
        bundle.putString("documentName", this.documentName);
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        savedStateHandle.set("documentId", this.documentId);
        savedStateHandle.set("documentName", this.documentName);
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: DirectoryWordsFragmentArgs.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\b\bJ\u0014\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\b¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs$Companion;", "", "<init>", "()V", "fromBundle", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;", "bundle", "Landroid/os/Bundle;", "Lkotlin/jvm/JvmStatic;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final DirectoryWordsFragmentArgs fromBundle(Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(DirectoryWordsFragmentArgs.class.getClassLoader());
            if (bundle.containsKey("documentId")) {
                String string = bundle.getString("documentId");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"documentId\" is marked as non-null but was passed a null value.");
                }
                if (bundle.containsKey("documentName")) {
                    String string2 = bundle.getString("documentName");
                    if (string2 == null) {
                        throw new IllegalArgumentException("Argument \"documentName\" is marked as non-null but was passed a null value.");
                    }
                    return new DirectoryWordsFragmentArgs(string, string2);
                }
                throw new IllegalArgumentException("Required argument \"documentName\" is missing and does not have an android:defaultValue");
            }
            throw new IllegalArgumentException("Required argument \"documentId\" is missing and does not have an android:defaultValue");
        }

        @JvmStatic
        public final DirectoryWordsFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (savedStateHandle.contains("documentId")) {
                String str = (String) savedStateHandle.get("documentId");
                if (str == null) {
                    throw new IllegalArgumentException("Argument \"documentId\" is marked as non-null but was passed a null value");
                }
                if (savedStateHandle.contains("documentName")) {
                    String str2 = (String) savedStateHandle.get("documentName");
                    if (str2 == null) {
                        throw new IllegalArgumentException("Argument \"documentName\" is marked as non-null but was passed a null value");
                    }
                    return new DirectoryWordsFragmentArgs(str, str2);
                }
                throw new IllegalArgumentException("Required argument \"documentName\" is missing and does not have an android:defaultValue");
            }
            throw new IllegalArgumentException("Required argument \"documentId\" is missing and does not have an android:defaultValue");
        }
    }
}
