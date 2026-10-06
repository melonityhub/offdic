package fast.dic.dict.helpers.database.couchbase;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.UnitOfWork;
import java.util.List;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDHistory$$ExternalSyntheticLambda5 implements UnitOfWork {
    public final /* synthetic */ List f$0;
    public final /* synthetic */ FDHistory f$1;

    public /* synthetic */ FDHistory$$ExternalSyntheticLambda5() {
        documentIds = list;
        this = fDHistory;
    }

    @Override // com.couchbase.lite.UnitOfWork
    public final void run() throws CouchbaseLiteException {
        FDHistory.deleteOldHistory$lambda$0(documentIds, this);
    }
}
