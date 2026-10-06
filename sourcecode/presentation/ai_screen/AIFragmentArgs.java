package fast.dic.dict.presentation.ai_screen;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AIFragmentArgs.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/presentation/ai_screen/AIFragmentArgs;", "Landroidx/navigation/NavArgs;", "favoriteId", "", "<init>", "(Ljava/lang/String;)V", "getFavoriteId", "()Ljava/lang/String;", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class AIFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String favoriteId;

    public AIFragmentArgs() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ AIFragmentArgs copy$default(AIFragmentArgs aIFragmentArgs, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = aIFragmentArgs.favoriteId;
        }
        return aIFragmentArgs.copy(str);
    }

    @JvmStatic
    public static final AIFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final AIFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getFavoriteId() {
        return this.favoriteId;
    }

    public final AIFragmentArgs copy(String favoriteId) {
        return new AIFragmentArgs(favoriteId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AIFragmentArgs) && Intrinsics.areEqual(this.favoriteId, ((AIFragmentArgs) other).favoriteId);
    }

    public int hashCode() {
        String str = this.favoriteId;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "AIFragmentArgs(favoriteId=" + this.favoriteId + ")";
    }

    public AIFragmentArgs(String str) {
        this.favoriteId = str;
    }

    public /* synthetic */ AIFragmentArgs(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str);
    }

    public final String getFavoriteId() {
        return this.favoriteId;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString("favoriteId", this.favoriteId);
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        savedStateHandle.set("favoriteId", this.favoriteId);
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: AIFragmentArgs.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\b\bJ\u0014\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\b¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/ai_screen/AIFragmentArgs$Companion;", "", "<init>", "()V", "fromBundle", "Lfast/dic/dict/presentation/ai_screen/AIFragmentArgs;", "bundle", "Landroid/os/Bundle;", "Lkotlin/jvm/JvmStatic;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final AIFragmentArgs fromBundle(Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(AIFragmentArgs.class.getClassLoader());
            return new AIFragmentArgs(bundle.containsKey("favoriteId") ? bundle.getString("favoriteId") : null);
        }

        @JvmStatic
        public final AIFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            return new AIFragmentArgs(savedStateHandle.contains("favoriteId") ? (String) savedStateHandle.get("favoriteId") : null);
        }
    }
}
