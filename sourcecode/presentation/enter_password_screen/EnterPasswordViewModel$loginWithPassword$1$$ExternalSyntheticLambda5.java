package fast.dic.dict.presentation.enter_password_screen;

import com.parse.LogInCallback;
import com.parse.ParseException;
import com.parse.ParseUser;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda5 implements LogInCallback {
    public final /* synthetic */ String f$1;

    public /* synthetic */ EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda5() {
        str2 = str;
    }

    @Override // com.parse.LogInCallback, com.parse.ParseCallback2
    public final void done(ParseUser parseUser, ParseException parseException) throws ParseException {
        EnterPasswordViewModel.AnonymousClass1.invokeSuspend$lambda$0(enterPasswordViewModel, str2, parseUser, parseException);
    }
}
