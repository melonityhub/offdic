package fast.dic.dict.presentation.registration_form_screen;

import com.parse.ParseException;
import com.parse.SaveCallback;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda2 implements SaveCallback {
    public final /* synthetic */ String f$1;

    public /* synthetic */ RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda2() {
        str = str;
    }

    @Override // com.parse.SaveCallback, com.parse.ParseCallback1
    public final void done(ParseException parseException) {
        RegistrationFormViewModel.AnonymousClass1.invokeSuspend$lambda$0$0$1(registrationFormViewModel, str, parseException);
    }
}
