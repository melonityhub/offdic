package fast.dic.dict.presentation.forget_password_screen;

import com.parse.ParseException;
import com.parse.RequestPasswordResetCallback;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class ForgetPasswordViewModel$sendRestPasswordLink$1$$ExternalSyntheticLambda0 implements RequestPasswordResetCallback {
    public final /* synthetic */ String f$1;

    public /* synthetic */ ForgetPasswordViewModel$sendRestPasswordLink$1$$ExternalSyntheticLambda0() {
        str = str;
    }

    @Override // com.parse.RequestPasswordResetCallback, com.parse.ParseCallback1
    public final void done(ParseException parseException) {
        ForgetPasswordViewModel.AnonymousClass1.invokeSuspend$lambda$0(forgetPasswordViewModel, str, parseException);
    }
}
