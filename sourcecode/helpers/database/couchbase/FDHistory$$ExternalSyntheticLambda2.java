package fast.dic.dict.helpers.database.couchbase;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.UnitOfWork;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDHistory$$ExternalSyntheticLambda2 implements UnitOfWork {
    public final /* synthetic */ FDHistory f$1;

    public /* synthetic */ FDHistory$$ExternalSyntheticLambda2() {
        this = fDHistory;
    }

    @Override // com.couchbase.lite.UnitOfWork
    public final void run() throws CouchbaseLiteException {
        FDHistory.deleteAll$lambda$0(where, this);
    }
}
