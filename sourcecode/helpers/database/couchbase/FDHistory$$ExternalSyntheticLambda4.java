package fast.dic.dict.helpers.database.couchbase;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.UnitOfWork;
import com.parse.ParseException;
import fast.dic.dict.models.database.ListModel;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDHistory$$ExternalSyntheticLambda4 implements UnitOfWork {
    public final /* synthetic */ ListModel f$1;

    public /* synthetic */ FDHistory$$ExternalSyntheticLambda4() {
        list = listModel;
    }

    @Override // com.couchbase.lite.UnitOfWork
    public final void run() throws ParseException, CouchbaseLiteException {
        FDHistory.deleteAndInsert$lambda$0(this.f$0, list);
    }
}
