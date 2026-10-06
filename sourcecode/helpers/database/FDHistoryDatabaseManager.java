package fast.dic.dict.helpers.database;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDHistoryDatabaseManager.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0007"}, d2 = {"Lfast/dic/dict/helpers/database/FDHistoryDatabaseManager;", "", "<init>", "()V", "count", "", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDHistoryDatabaseManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final FDHistoryDatabaseManager get = new FDHistoryDatabaseManager();

    public final int count() {
        DatabaseListManager companion = DatabaseListManager.INSTANCE.getInstance();
        Intrinsics.checkNotNull(companion);
        SQLiteDatabase sQLiteDatabaseOpenDatabase = companion.openDatabase();
        int i = 0;
        try {
            Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
            Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT count(*) FROM history", null);
            Intrinsics.checkNotNullExpressionValue(cursorRawQuery, "rawQuery(...)");
            cursorRawQuery.moveToFirst();
            i = cursorRawQuery.getInt(0);
            cursorRawQuery.close();
        } catch (Exception unused) {
        }
        DatabaseListManager companion2 = DatabaseListManager.INSTANCE.getInstance();
        Intrinsics.checkNotNull(companion2);
        companion2.closeDatabase();
        return i;
    }

    /* JADX INFO: compiled from: FDHistoryDatabaseManager.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/helpers/database/FDHistoryDatabaseManager$Companion;", "", "<init>", "()V", "get", "Lfast/dic/dict/helpers/database/FDHistoryDatabaseManager;", "getGet", "()Lfast/dic/dict/helpers/database/FDHistoryDatabaseManager;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FDHistoryDatabaseManager getGet() {
            return FDHistoryDatabaseManager.get;
        }
    }
}
