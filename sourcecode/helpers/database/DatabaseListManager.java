package fast.dic.dict.helpers.database;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.ironsource.C4032o2;
import com.unity3d.services.core.fid.Constants;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DatabaseListManager.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lfast/dic/dict/helpers/database/DatabaseListManager;", "", "<init>", "()V", "mOpenCounter", "Ljava/util/concurrent/atomic/AtomicInteger;", "mDatabase", "Landroid/database/sqlite/SQLiteDatabase;", "openDatabase", "closeDatabase", "", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class DatabaseListManager {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static DatabaseListManager instance;
    private static SQLiteOpenHelper mDatabaseHelper;
    private SQLiteDatabase mDatabase;
    private final AtomicInteger mOpenCounter = new AtomicInteger();

    public final synchronized SQLiteDatabase openDatabase() {
        if (this.mOpenCounter.incrementAndGet() == 1) {
            SQLiteOpenHelper sQLiteOpenHelper = mDatabaseHelper;
            Intrinsics.checkNotNull(sQLiteOpenHelper);
            this.mDatabase = sQLiteOpenHelper.getWritableDatabase();
        }
        return this.mDatabase;
    }

    public final synchronized void closeDatabase() {
        if (this.mOpenCounter.decrementAndGet() == 0) {
            SQLiteDatabase sQLiteDatabase = this.mDatabase;
            Intrinsics.checkNotNull(sQLiteDatabase);
            sQLiteDatabase.close();
        }
    }

    /* JADX INFO: compiled from: DatabaseListManager.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u0007J\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;", "", "<init>", "()V", C4032o2.p, "Lfast/dic/dict/helpers/database/DatabaseListManager;", "mDatabaseHelper", "Landroid/database/sqlite/SQLiteOpenHelper;", "initializeInstance", "", "helper", Constants.GET_INSTANCE, "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final synchronized void initializeInstance(SQLiteOpenHelper helper) {
            if (DatabaseListManager.instance == null) {
                DatabaseListManager.instance = new DatabaseListManager();
                DatabaseListManager.mDatabaseHelper = helper;
            }
        }

        public final synchronized DatabaseListManager getInstance() {
            if (DatabaseListManager.instance != null) {
            } else {
                throw new IllegalStateException("DatabaseListManager is not initialized, call initializeInstance(..) method first.".toString());
            }
            return DatabaseListManager.instance;
        }
    }
}
