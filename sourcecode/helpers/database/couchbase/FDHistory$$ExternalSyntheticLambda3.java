package fast.dic.dict.helpers.database.couchbase;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.UnitOfWork;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDHistory$$ExternalSyntheticLambda3 implements UnitOfWork {
    public final /* synthetic */ ArrayList f$0;
    public final /* synthetic */ FDHistory f$1;
    public final /* synthetic */ List f$2;

    public /* synthetic */ FDHistory$$ExternalSyntheticLambda3() {
        lists = arrayList;
        this = fDHistory;
        couchbaseChannels = list;
    }

    @Override // com.couchbase.lite.UnitOfWork
    public final void run() throws CouchbaseLiteException {
        FDHistory.insert$lambda$0(lists, this, couchbaseChannels);
    }
}
