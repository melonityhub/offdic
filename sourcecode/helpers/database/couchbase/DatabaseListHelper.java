package fast.dic.dict.helpers.database.couchbase;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.yandex.div.core.dagger.Names;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DatabaseListHelper.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016¨\u0006\u000f"}, d2 = {"Lfast/dic/dict/helpers/database/couchbase/DatabaseListHelper;", "Landroid/database/sqlite/SQLiteOpenHelper;", Names.CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "onCreate", "", "db", "Landroid/database/sqlite/SQLiteDatabase;", "onUpgrade", "oldVersion", "", "newVersion", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class DatabaseListHelper extends SQLiteOpenHelper {
    private static final String COUCHBASE_DATABASE_NAME = "lists.sqlite";
    private static final int DATABASE_VERSION = 1;

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        Intrinsics.checkNotNullParameter(db, "db");
    }

    public DatabaseListHelper(Context context) {
        super(context, COUCHBASE_DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        try {
            db.execSQL("CREATE TABLE IF NOT EXISTS favourite (favourite_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, word TEXT NOT NULL,word_id INTEGER NOT NULL,category INTEGER NOT NULL);");
            db.execSQL("CREATE TABLE IF NOT EXISTS history (history_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,word TEXT NOT NULL,word_id INTEGER NOT NULL,category INTEGER NOT NULL);");
            db.execSQL("CREATE TABLE IF NOT EXISTS session_history (sid INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,word TEXT NOT NULL,here INTEGER NOT NULL);");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
