package fast.dic.dict.services.parse;

import com.parse.LogOutCallback;
import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDParseWrapper$$ExternalSyntheticLambda1 implements LogOutCallback {
    public final /* synthetic */ FDParseWrapper f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ FDParseWrapper$$ExternalSyntheticLambda1() {
        fDParseWrapper = fDParseWrapper;
        str = str;
    }

    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
    public final void done(ParseException parseException) {
        FDParseWrapper.fetchParseUser$lambda$3$1(fDPurchased, fDParseWrapper, str, parseException);
    }
}
