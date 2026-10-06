package fast.dic.dict.presentation.profile_screen;

import com.parse.LogOutCallback;
import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class ProfileFragment$$ExternalSyntheticLambda12 implements LogOutCallback {
    public final /* synthetic */ String f$1;

    public /* synthetic */ ProfileFragment$$ExternalSyntheticLambda12() {
        str = str;
    }

    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
    public final void done(ParseException parseException) {
        ProfileFragment.onViewCreated$lambda$0$0$0(this.f$0, str, parseException);
    }
}
