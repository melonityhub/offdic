package fast.dic.dict.presentation.enter_password_screen;

import com.parse.LogOutCallback;
import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda0 implements LogOutCallback {
    public final /* synthetic */ String f$1;

    public /* synthetic */ EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda0() {
        str = str;
    }

    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
    public final void done(ParseException parseException) {
        EnterPasswordViewModel.AnonymousClass1.invokeSuspend$lambda$0$1$1$0(enterPasswordViewModel, str, parseException);
    }
}
