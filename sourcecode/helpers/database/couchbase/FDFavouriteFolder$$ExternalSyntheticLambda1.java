package fast.dic.dict.helpers.database.couchbase;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.UnitOfWork;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDFavouriteFolder$$ExternalSyntheticLambda1 implements UnitOfWork {
    public final /* synthetic */ FDFavouriteFolder f$1;

    public /* synthetic */ FDFavouriteFolder$$ExternalSyntheticLambda1() {
        this = fDFavouriteFolder;
    }

    @Override // com.couchbase.lite.UnitOfWork
    public final void run() throws CouchbaseLiteException {
        FDFavouriteFolder.setCurrentFolder$lambda$0(orderBy, this);
    }
}
