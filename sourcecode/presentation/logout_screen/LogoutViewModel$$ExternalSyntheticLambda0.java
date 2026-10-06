package fast.dic.dict.presentation.logout_screen;

import androidx.lifecycle.MutableLiveData;
import com.parse.LogOutCallback;
import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class LogoutViewModel$$ExternalSyntheticLambda0 implements LogOutCallback {
    public final /* synthetic */ String f$1;
    public final /* synthetic */ MutableLiveData f$2;

    public /* synthetic */ LogoutViewModel$$ExternalSyntheticLambda0() {
        username = str;
        mutableLiveData = mutableLiveData;
    }

    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
    public final void done(ParseException parseException) {
        LogoutViewModel.logout$lambda$0(this.f$0, username, mutableLiveData, parseException);
    }
}
