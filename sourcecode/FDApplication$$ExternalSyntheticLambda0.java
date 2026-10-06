package fast.dic.dict;

import com.parse.LogOutCallback;
import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDApplication$$ExternalSyntheticLambda0 implements LogOutCallback {
    public /* synthetic */ FDApplication$$ExternalSyntheticLambda0() {
    }

    @Override // com.parse.LogOutCallback, com.parse.ParseCallback1
    public final void done(ParseException parseException) {
        FDApplication.fetchParseUser$lambda$0$0(fdPurchased, parseException);
    }
}
