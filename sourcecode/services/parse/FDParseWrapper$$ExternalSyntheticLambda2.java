package fast.dic.dict.services.parse;

import com.parse.LogOutCallback;
import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDParseWrapper$$ExternalSyntheticLambda2 implements LogOutCallback {
    public final /* synthetic */ FDParseWrapper f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ FDParseWrapper$$ExternalSyntheticLambda2() {
        fDParseWrapper = fDParseWrapper;
        str = str;
    }

    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
    public final void done(ParseException parseException) {
        FDParseWrapper.fetchParseUser$lambda$0$1(fDPurchased, fDParseWrapper, str, parseException);
    }
}
