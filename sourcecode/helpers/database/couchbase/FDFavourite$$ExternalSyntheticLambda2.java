package fast.dic.dict.helpers.database.couchbase;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.UnitOfWork;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDFavourite$$ExternalSyntheticLambda2 implements UnitOfWork {
    public final /* synthetic */ ArrayList f$0;
    public final /* synthetic */ String f$1;
    public final /* synthetic */ FDFavourite f$2;
    public final /* synthetic */ List f$3;

    public /* synthetic */ FDFavourite$$ExternalSyntheticLambda2() {
        lists = arrayList;
        documentId = str;
        this = fDFavourite;
        couchbaseChannels = list;
    }

    @Override // com.couchbase.lite.UnitOfWork
    public final void run() throws CouchbaseLiteException {
        FDFavourite.insert$lambda$1(lists, documentId, this, couchbaseChannels);
    }
}
