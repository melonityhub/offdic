package fast.dic.dict.presentation.enter_password_screen;

import com.parse.GetCallback;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseSession;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda4 implements GetCallback {
    public final /* synthetic */ String f$1;

    public /* synthetic */ EnterPasswordViewModel$loginWithPassword$1$$ExternalSyntheticLambda4() {
        str = str;
    }

    @Override // com.parse.GetCallback, com.parse.ParseCallback2
    public final void done(ParseObject parseObject, ParseException parseException) {
        EnterPasswordViewModel.AnonymousClass1.invokeSuspend$lambda$0$1$1(enterPasswordViewModel, str, (ParseSession) parseObject, parseException);
    }
}
