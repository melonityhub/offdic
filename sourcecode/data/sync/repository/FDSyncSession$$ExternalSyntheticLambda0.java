package fast.dic.dict.data.sync.repository;

import com.parse.FunctionCallback;
import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDSyncSession$$ExternalSyntheticLambda0 implements FunctionCallback {
    public final /* synthetic */ FDSyncSession f$1;

    public /* synthetic */ FDSyncSession$$ExternalSyntheticLambda0() {
        this = fDSyncSession;
    }

    @Override // com.parse.FunctionCallback, com.parse.ParseCallback2
    public final void done(Object obj, ParseException parseException) {
        FDSyncSession.getSession$lambda$0(completion, this, obj, parseException);
    }
}
