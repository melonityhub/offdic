package fast.dic.dict.helpers.database.couchbase;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.UnitOfWork;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDFavourite$$ExternalSyntheticLambda1 implements UnitOfWork {
    public final /* synthetic */ FDFavourite f$1;

    public /* synthetic */ FDFavourite$$ExternalSyntheticLambda1() {
        this = fDFavourite;
    }

    @Override // com.couchbase.lite.UnitOfWork
    public final void run() throws CouchbaseLiteException {
        FDFavourite.deleteAll$lambda$0(where, this);
    }
}
