package fast.dic.dict.helpers.database.couchbase;

import fast.dic.dict.models.database.ListModel;
import kotlin.jvm.functions.Function1;
import net.zetetic.database.sqlcipher.SQLiteDatabase;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDHistory$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ SQLiteDatabase f$1;

    public /* synthetic */ FDHistory$$ExternalSyntheticLambda1() {
        database = sQLiteDatabase;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return FDHistory.get$lambda$0(this.f$0, database, (ListModel) obj);
    }
}
