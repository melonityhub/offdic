package fast.dic.dict.helpers.database;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDFavouriteDatabaseManager.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0007"}, d2 = {"Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;", "", "<init>", "()V", "count", "", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDFavouriteDatabaseManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final FDFavouriteDatabaseManager get = new FDFavouriteDatabaseManager();

    public final int count() {
        DatabaseListManager companion = DatabaseListManager.INSTANCE.getInstance();
        SQLiteDatabase sQLiteDatabaseOpenDatabase = companion != null ? companion.openDatabase() : null;
        Intrinsics.checkNotNull(sQLiteDatabaseOpenDatabase);
        int count = 0;
        try {
            Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase.rawQuery("SELECT count(word_id) FROM favourite", null);
            Intrinsics.checkNotNullExpressionValue(cursorRawQuery, "rawQuery(...)");
            count = cursorRawQuery.getCount();
            cursorRawQuery.close();
        } catch (Exception unused) {
        }
        DatabaseListManager companion2 = DatabaseListManager.INSTANCE.getInstance();
        if (companion2 != null) {
            companion2.closeDatabase();
        }
        return count;
    }

    /* JADX INFO: compiled from: FDFavouriteDatabaseManager.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager$Companion;", "", "<init>", "()V", "get", "Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;", "getGet", "()Lfast/dic/dict/helpers/database/FDFavouriteDatabaseManager;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FDFavouriteDatabaseManager getGet() {
            return FDFavouriteDatabaseManager.get;
        }
    }
}
