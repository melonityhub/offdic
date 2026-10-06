package fast.dic.dict.helpers;

import android.database.sqlite.SQLiteException;
import net.zetetic.database.DatabaseErrorHandler;
import net.zetetic.database.sqlcipher.SQLiteDatabase;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class FDMainDatabaseHelper$$ExternalSyntheticLambda0 implements DatabaseErrorHandler {
    public /* synthetic */ FDMainDatabaseHelper$$ExternalSyntheticLambda0() {
    }

    @Override // net.zetetic.database.DatabaseErrorHandler
    public final void onCorruption(SQLiteDatabase sQLiteDatabase, SQLiteException sQLiteException) {
        FDMainDatabaseHelper.openSqlCipherDB$lambda$0(this.f$0, sQLiteDatabase, sQLiteException);
    }
}
