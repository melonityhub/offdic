package fast.dic.dict.presentation.profile_screen;

import com.parse.ParseException;
import com.parse.RequestPasswordResetCallback;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class ProfileViewModal$requestForResetPassword$1$$ExternalSyntheticLambda0 implements RequestPasswordResetCallback {
    public /* synthetic */ ProfileViewModal$requestForResetPassword$1$$ExternalSyntheticLambda0() {
    }

    @Override // com.parse.RequestPasswordResetCallback, com.parse.ParseCallback1
    public final void done(ParseException parseException) {
        ProfileViewModal.C45301.invokeSuspend$lambda$0(profileViewModal, parseException);
    }
}
