package fast.dic.dict.presentation.registration_form_screen;

import com.parse.LogOutCallback;
import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda4 implements LogOutCallback {
    public final /* synthetic */ String f$1;

    public /* synthetic */ RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda4() {
        str = str;
    }

    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
    public final void done(ParseException parseException) {
        RegistrationFormViewModel.AnonymousClass1.invokeSuspend$lambda$0$0$1$0(registrationFormViewModel, str, parseException);
    }
}
