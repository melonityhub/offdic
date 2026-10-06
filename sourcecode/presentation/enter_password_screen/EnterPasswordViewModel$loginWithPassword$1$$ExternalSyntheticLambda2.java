package fast.dic.dict.presentation.enter_password_screen;

import com.parse.FunctionCallback;
import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda2 implements FunctionCallback {
    public final /* synthetic */ String f$1;

    public /* synthetic */ EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda2() {
        str = str;
    }

    @Override // com.parse.FunctionCallback, com.parse.ParseCallback2
    public final void done(Object obj, ParseException parseException) {
        EnterPasswordViewModel.AnonymousClass1.invokeSuspend$lambda$0$1(enterPasswordViewModel, str, obj, parseException);
    }
}
