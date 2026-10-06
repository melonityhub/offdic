package fast.dic.dict.helpers;

import com.couchbase.lite.Collection;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.UnitOfWork;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDListPath$$ExternalSyntheticLambda0 implements UnitOfWork {
    public final /* synthetic */ Collection f$1;
    public final /* synthetic */ String f$2;

    public /* synthetic */ FDListPath$$ExternalSyntheticLambda0() {
        defaultCollection = collection;
        email = str;
    }

    @Override // com.couchbase.lite.UnitOfWork
    public final void run() throws CouchbaseLiteException {
        FDListPath.updateDocuments$lambda$0(where, defaultCollection, email);
    }
}
