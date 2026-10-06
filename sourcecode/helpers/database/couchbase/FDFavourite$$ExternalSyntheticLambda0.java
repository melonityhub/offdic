package fast.dic.dict.helpers.database.couchbase;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.UnitOfWork;
import java.util.ArrayList;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDFavourite$$ExternalSyntheticLambda0 implements UnitOfWork {
    public final /* synthetic */ ArrayList f$0;
    public final /* synthetic */ FDFavourite f$1;

    public /* synthetic */ FDFavourite$$ExternalSyntheticLambda0() {
        lists = arrayList;
        this = fDFavourite;
    }

    @Override // com.couchbase.lite.UnitOfWork
    public final void run() throws CouchbaseLiteException {
        FDFavourite.updateAllFolders$lambda$0(lists, this);
    }
}
