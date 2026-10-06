package fast.dic.dict.presentation.registration_form_screen;

import com.parse.GetCallback;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseSession;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda0 implements GetCallback {
    public final /* synthetic */ String f$1;

    public /* synthetic */ RegistrationFormViewModel$submitRegistrationForm$1$$ExternalSyntheticLambda0() {
        str = str;
    }

    @Override // com.parse.GetCallback, com.parse.ParseCallback2
    public final void done(ParseObject parseObject, ParseException parseException) {
        RegistrationFormViewModel.AnonymousClass1.invokeSuspend$lambda$0$0(registrationFormViewModel, str, (ParseSession) parseObject, parseException);
    }
}
