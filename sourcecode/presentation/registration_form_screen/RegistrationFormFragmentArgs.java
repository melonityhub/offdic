package fast.dic.dict.presentation.registration_form_screen;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgs;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RegistrationFormFragmentArgs.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;", "Landroidx/navigation/NavArgs;", "email", "", "<init>", "(Ljava/lang/String;)V", "getEmail", "()Ljava/lang/String;", "toBundle", "Landroid/os/Bundle;", "toSavedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class RegistrationFormFragmentArgs implements NavArgs {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String email;

    public static /* synthetic */ RegistrationFormFragmentArgs copy$default(RegistrationFormFragmentArgs registrationFormFragmentArgs, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = registrationFormFragmentArgs.email;
        }
        return registrationFormFragmentArgs.copy(str);
    }

    @JvmStatic
    public static final RegistrationFormFragmentArgs fromBundle(Bundle bundle) {
        return INSTANCE.fromBundle(bundle);
    }

    @JvmStatic
    public static final RegistrationFormFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
        return INSTANCE.fromSavedStateHandle(savedStateHandle);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEmail() {
        return this.email;
    }

    public final RegistrationFormFragmentArgs copy(String email) {
        Intrinsics.checkNotNullParameter(email, "email");
        return new RegistrationFormFragmentArgs(email);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof RegistrationFormFragmentArgs) && Intrinsics.areEqual(this.email, ((RegistrationFormFragmentArgs) other).email);
    }

    public int hashCode() {
        return this.email.hashCode();
    }

    public String toString() {
        return "RegistrationFormFragmentArgs(email=" + this.email + ")";
    }

    public RegistrationFormFragmentArgs(String email) {
        Intrinsics.checkNotNullParameter(email, "email");
        this.email = email;
    }

    public final String getEmail() {
        return this.email;
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString("email", this.email);
        return bundle;
    }

    public final SavedStateHandle toSavedStateHandle() {
        SavedStateHandle savedStateHandle = new SavedStateHandle();
        savedStateHandle.set("email", this.email);
        return savedStateHandle;
    }

    /* JADX INFO: compiled from: RegistrationFormFragmentArgs.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\b\bJ\u0014\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0002\b\b¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs$Companion;", "", "<init>", "()V", "fromBundle", "Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragmentArgs;", "bundle", "Landroid/os/Bundle;", "Lkotlin/jvm/JvmStatic;", "fromSavedStateHandle", "savedStateHandle", "Landroidx/lifecycle/SavedStateHandle;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final RegistrationFormFragmentArgs fromBundle(Bundle bundle) {
            Intrinsics.checkNotNullParameter(bundle, "bundle");
            bundle.setClassLoader(RegistrationFormFragmentArgs.class.getClassLoader());
            if (bundle.containsKey("email")) {
                String string = bundle.getString("email");
                if (string == null) {
                    throw new IllegalArgumentException("Argument \"email\" is marked as non-null but was passed a null value.");
                }
                return new RegistrationFormFragmentArgs(string);
            }
            throw new IllegalArgumentException("Required argument \"email\" is missing and does not have an android:defaultValue");
        }

        @JvmStatic
        public final RegistrationFormFragmentArgs fromSavedStateHandle(SavedStateHandle savedStateHandle) {
            Intrinsics.checkNotNullParameter(savedStateHandle, "savedStateHandle");
            if (savedStateHandle.contains("email")) {
                String str = (String) savedStateHandle.get("email");
                if (str == null) {
                    throw new IllegalArgumentException("Argument \"email\" is marked as non-null but was passed a null value");
                }
                return new RegistrationFormFragmentArgs(str);
            }
            throw new IllegalArgumentException("Required argument \"email\" is missing and does not have an android:defaultValue");
        }
    }
}
