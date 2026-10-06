package fast.dic.dict.services.parse;

import com.parse.GetCallback;
import com.parse.ParseException;
import com.parse.ParseObject;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDParseWrapper$$ExternalSyntheticLambda6 implements GetCallback {
    public final /* synthetic */ FDPurchased f$1;
    public final /* synthetic */ FDParseWrapper f$2;
    public final /* synthetic */ String f$3;

    public /* synthetic */ FDParseWrapper$$ExternalSyntheticLambda6() {
        fDPurchased = fDPurchased;
        this = fDParseWrapper;
        email = str;
    }

    @Override // com.parse.GetCallback, com.parse.ParseCallback2
    public final void done(ParseObject parseObject, ParseException parseException) {
        FDParseWrapper.fetchParseUser$lambda$3(onSuccess, fDPurchased, this, email, parseObject, parseException);
    }
}
