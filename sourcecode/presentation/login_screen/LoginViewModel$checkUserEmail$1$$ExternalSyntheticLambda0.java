package fast.dic.dict.presentation.login_screen;

import com.parse.FunctionCallback;
import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class LoginViewModel$checkUserEmail$1$$ExternalSyntheticLambda0 implements FunctionCallback {
    public final /* synthetic */ String f$1;

    public /* synthetic */ LoginViewModel$checkUserEmail$1$$ExternalSyntheticLambda0() {
        str = str;
    }

    @Override // com.parse.FunctionCallback, com.parse.ParseCallback2
    public final void done(Object obj, ParseException parseException) {
        LoginViewModel.AnonymousClass1.invokeSuspend$lambda$0(loginViewModel, str, (Boolean) obj, parseException);
    }
}
