package fast.dic.dict.helpers.database.couchbase;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.UnitOfWork;
import java.util.List;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDFavouriteFolder$$ExternalSyntheticLambda0 implements UnitOfWork {
    public final /* synthetic */ List f$0;
    public final /* synthetic */ FDFavouriteFolder f$1;

    public /* synthetic */ FDFavouriteFolder$$ExternalSyntheticLambda0() {
        arrayList2 = list;
        this = fDFavouriteFolder;
    }

    @Override // com.couchbase.lite.UnitOfWork
    public final void run() throws CouchbaseLiteException {
        FDFavouriteFolder.refreshPosition$lambda$1(arrayList2, this);
    }
}
