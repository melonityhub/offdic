package fast.dic.dict.fragments;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HelpFragmentArgs.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB%\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0011J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0006HÆ\u0003J+\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0016\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018HÖ\u0083\u0004J\n\u0010\u0019\u001a\u00020\u001aHÖ\u0081\u0004J\n\u0010\u001b\u001a\u00020\u0003HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u001d"}, d2 = {"Lfast/dic/dict/fragments/HelpFragmentArgs;", "Landroidx/navigation/NavArgs;", "url", "", "pageTitle", "canRedirect", "", "<init>", "(Ljava/lang/String;Ljava/lang/String;Z)V", "getUrl", "()Ljava/lang/String;", "getPageTitle", "getCanRedirect", "()Z", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "component1", "component2", "component3", "copy", "equals", "other", "", "hashCode", "", "toString", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class HelpFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final boolean canRedirect;
    private final String pageTitle;
    private final String url;

    public static /* synthetic */ HelpFragmentArgs copy$default(HelpFragmentArgs helpFragmentArgs, String str, String str2, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = helpFragmentArgs.url;
        }
        if ((i & 2) != 0) {
            str2 = helpFragmentArgs.pageTitle;
        }
        if ((i & 4) != 0) {
            z = helpFragmentArgs.canRedirect;
        }
        return helpFragmentArgs.copy(str, str2, z);
    }

    @JvmStatic
    public static final HelpFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final HelpFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPageTitle() {
        return this.pageTitle;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getCanRedirect() {
        return this.canRedirect;
    }

    public final HelpFragmentArgs copy(String url, String pageTitle, boolean canRedirect) {
        return new HelpFragmentArgs(url, pageTitle, canRedirect);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HelpFragmentArgs)) {
            return false;
        }
        HelpFragmentArgs helpFragmentArgs = (HelpFragmentArgs) other;
        return Intrinsics.areEqual(this.url, helpFragmentArgs.url) && Intrinsics.areEqual(this.pageTitle, helpFragmentArgs.pageTitle) && this.canRedirect == helpFragmentArgs.canRedirect;
    }

    public int hashCode() {
        String str = this.url;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.pageTitle;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + Boolean.hashCode(this.canRedirect);
    }

    public String toString() {
        return "HelpFragmentArgs(url=" + this.url + ", pageTitle=" + this.pageTitle + ", canRedirect=" + this.canRedirect + ")";
    }

    public HelpFragmentArgs(String str, String str2, boolean z) {
        this.url = str;
        this.pageTitle = str2;
        this.canRedirect = z;
    }

    public /* synthetic */ HelpFragmentArgs(String str, String str2, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? false : z);
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getPageTitle() {
        return this.pageTitle;
    }

    public final boolean getCanRedirect() {
        return this.canRedirect;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString("url", this.url);
        bundle.putString("pageTitle", this.pageTitle);
        bundle.putBoolean("can_redirect", this.canRedirect);
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        savedStateHandle.set("url", this.url);
        savedStateHandle.set("pageTitle", this.pageTitle);
        savedStateHandle.set("can_redirect", Boolean.valueOf(this.canRedirect));
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: HelpFragmentArgs.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\b\bJ\u0014\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\b¨\u0006\f"}, d2 = {"Lfast/dic/dict/fragments/HelpFragmentArgs$Companion;", "", "<init>", "()V", "fromBundle", "Lfast/dic/dict/fragments/HelpFragmentArgs;", "bundle", "Landroid/os/Bundle;", "Lkotlin/jvm/JvmStatic;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final HelpFragmentArgs fromBundle(Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(HelpFragmentArgs.class.getClassLoader());
            if (bundle.containsKey("url")) {
                String string = bundle.getString("url");
                if (!bundle.containsKey("pageTitle")) {
                    throw new IllegalArgumentException("Required argument \"pageTitle\" is missing and does not have an android:defaultValue");
                }
                return new HelpFragmentArgs(string, bundle.getString("pageTitle"), bundle.containsKey("can_redirect") ? bundle.getBoolean("can_redirect") : false);
            }
            throw new IllegalArgumentException("Required argument \"url\" is missing and does not have an android:defaultValue");
        }

        @JvmStatic
        public final HelpFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            Boolean bool;
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (savedStateHandle.contains("url")) {
                String str = (String) savedStateHandle.get("url");
                if (savedStateHandle.contains("pageTitle")) {
                    String str2 = (String) savedStateHandle.get("pageTitle");
                    if (savedStateHandle.contains("can_redirect")) {
                        bool = (Boolean) savedStateHandle.get("can_redirect");
                        if (bool == null) {
                            throw new IllegalArgumentException("Argument \"can_redirect\" of type boolean does not support null values");
                        }
                    } else {
                        bool = false;
                    }
                    return new HelpFragmentArgs(str, str2, bool.booleanValue());
                }
                throw new IllegalArgumentException("Required argument \"pageTitle\" is missing and does not have an android:defaultValue");
            }
            throw new IllegalArgumentException("Required argument \"url\" is missing and does not have an android:defaultValue");
        }
    }
}
