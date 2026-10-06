package fast.dic.dict.presentation.registration_form_screen;

import android.text.Editable;
import android.text.TextWatcher;
import kotlin.Metadata;

/* JADX INFO: compiled from: RegistrationFormFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J*\u0010\n\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\r"}, d2 = {"fast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment$inputChangesListener$1", "Landroid/text/TextWatcher;", "beforeTextChanged", "", "p0", "", "p1", "", "p2", "p3", "onTextChanged", "afterTextChanged", "Landroid/text/Editable;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class RegistrationFormFragment$inputChangesListener$1 implements TextWatcher {
    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable p0) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
    }

    RegistrationFormFragment$inputChangesListener$1() {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
        this.this$0.signUpButtonEnable();
    }
}
