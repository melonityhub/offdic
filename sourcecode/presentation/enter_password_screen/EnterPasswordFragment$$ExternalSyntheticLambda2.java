package fast.dic.dict.presentation.enter_password_screen;

import android.view.View;
import com.google.android.material.textfield.TextInputEditText;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class EnterPasswordFragment$$ExternalSyntheticLambda2 implements View.OnClickListener {
    public final /* synthetic */ TextInputEditText f$1;

    public /* synthetic */ EnterPasswordFragment$$ExternalSyntheticLambda2() {
        passwordInput = textInputEditText;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        EnterPasswordFragment enterPasswordFragment = this.f$0;
        enterPasswordFragment.loginUser(enterPasswordFragment.getArgs().getEmail(), String.valueOf(passwordInput.getText()));
    }
}
