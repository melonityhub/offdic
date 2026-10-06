package fast.dic.dict.presentation.profile_screen;

import android.content.DialogInterface;
import fast.dic.dict.services.parse.FDParseUser;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class ProfileFragment$$ExternalSyntheticLambda9 implements DialogInterface.OnClickListener {
    public final /* synthetic */ FDParseUser f$1;

    public /* synthetic */ ProfileFragment$$ExternalSyntheticLambda9() {
        currentUser = fDParseUser;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        ProfileFragment.sentChangePasswordLinkByConfirmAlert$lambda$0$1(this.f$0, currentUser, dialogInterface, i);
    }
}
