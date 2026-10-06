package fast.dic.dict.helpers.database.couchbase;

import android.content.Context;
import com.couchbase.lite.CouchbaseLite;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.DataSource;
import com.couchbase.lite.Database;
import com.couchbase.lite.DatabaseConfiguration;
import com.couchbase.lite.From;
import com.couchbase.lite.QueryBuilder;
import com.couchbase.lite.Result;
import com.couchbase.lite.ResultSet;
import com.couchbase.lite.SelectResult;
import com.ironsource.C4032o2;
import com.unity3d.services.core.fid.Constants;
import fast.dic.dict.R;
import fast.dic.dict.helpers.FDMainDatabaseHelper;
import fast.dic.dict.helpers.database.FDFavouriteDatabaseManager;
import fast.dic.dict.helpers.database.FDHistoryDatabaseManager;
import fast.dic.dict.models.database.HistoryAndFavoriteWordModel;
import fast.dic.dict.providers.FDContentProvider;
import fast.dic.dict.utils.LoggerKt;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDCouchbaseLiteManager.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00142\u00020\u0001:\u0002\u0013\u0014B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u000bJ\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\r\u001a\u00020\u000bJ\u0016\u0010\u000e\u001a\u00020\u000f2\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\u0015"}, d2 = {"Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;", "", "<init>", "()V", "_database", "Lcom/couchbase/lite/Database;", "get_database", "()Lcom/couchbase/lite/Database;", "set_database", "(Lcom/couchbase/lite/Database;)V", "closeDatabase", "", "openDatabase", "copyDataBase", "isDatabaseMigrated", "", "words", "", "Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;", "DatabaseType", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDCouchbaseLiteManager {
    public static final String DATABASE_FILE_NAME = "lists";
    private Database _database;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final FDCouchbaseLiteManager instance = new FDCouchbaseLiteManager();

    public FDCouchbaseLiteManager() {
        try {
            Context appContext = FDContentProvider.INSTANCE.getAppContext();
            Intrinsics.checkNotNull(appContext);
            CouchbaseLite.init(appContext);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: compiled from: FDCouchbaseLiteManager.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u0000 \u00062\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0007"}, d2 = {"Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;", "", "<init>", "(Ljava/lang/String;I)V", "History", "Favourite", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public enum DatabaseType {
        History,
        Favourite;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        public static EnumEntries<DatabaseType> getEntries() {
            return $ENTRIES;
        }

        /* JADX INFO: compiled from: FDCouchbaseLiteManager.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType$Companion;", "", "<init>", "()V", "toString", "", "type", "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final String toString(DatabaseType type) {
                Intrinsics.checkNotNullParameter(type, "type");
                return type == DatabaseType.History ? "history" : "favourite";
            }
        }
    }

    public final Database get_database() {
        return this._database;
    }

    public final void set_database(Database database) {
        this._database = database;
    }

    public final void closeDatabase() {
        this._database = null;
    }

    public final Database openDatabase() {
        DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration();
        try {
            Database database = this._database;
            if (database != null) {
                return database;
            }
            this._database = new Database(DATABASE_FILE_NAME, databaseConfiguration);
            return null;
        } catch (CouchbaseLiteException e) {
            e.printStackTrace();
            LoggerKt.getLogger().error("FDCouchbaseLiteManager: openDatabase error happen: error - " + e.getMessage() + ". e = " + e, new Object[0]);
            return null;
        } catch (Exception e2) {
            e2.printStackTrace();
            LoggerKt.getLogger().error("FDCouchbaseLiteManager error: openDatabase error happen: " + e2.getMessage(), new Object[0]);
            return null;
        }
    }

    public final void copyDataBase() {
        File file = new File(FDMainDatabaseHelper.INSTANCE.getDB_PATH());
        String str = FDMainDatabaseHelper.INSTANCE.getDB_PATH() + DATABASE_FILE_NAME;
        if (file.isDirectory() && !file.exists()) {
            file.mkdir();
        }
        new File(str);
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        byte[] bArr = new byte[1024];
        Context appContext = FDContentProvider.INSTANCE.getAppContext();
        Intrinsics.checkNotNull(appContext);
        InputStream inputStreamOpenRawResource = appContext.getResources().openRawResource(R.raw.lists);
        Intrinsics.checkNotNullExpressionValue(inputStreamOpenRawResource, "openRawResource(...)");
        while (true) {
            int i = inputStreamOpenRawResource.read(bArr);
            if (i > 0) {
                fileOutputStream.write(bArr, 0, i);
            } else {
                inputStreamOpenRawResource.close();
                fileOutputStream.flush();
                fileOutputStream.close();
                return;
            }
        }
    }

    public final boolean isDatabaseMigrated(List<HistoryAndFavoriteWordModel> words) {
        ResultSet resultSetExecute;
        List<Result> listAllResults;
        Database databaseOpenDatabase = openDatabase();
        if (databaseOpenDatabase == null) {
            return true;
        }
        From from = QueryBuilder.select(SelectResult.all()).from(DataSource.database(databaseOpenDatabase));
        Intrinsics.checkNotNullExpressionValue(from, "from(...)");
        try {
            resultSetExecute = from.execute();
        } catch (CouchbaseLiteException e) {
            e.printStackTrace();
            resultSetExecute = null;
        }
        if (FDHistoryDatabaseManager.INSTANCE.getGet().count() <= 1 && FDFavouriteDatabaseManager.INSTANCE.getGet().count() <= 1) {
            return ((resultSetExecute == null || (listAllResults = resultSetExecute.allResults()) == null) ? 0 : listAllResults.size()) > 0;
        }
        if (resultSetExecute == null) {
            return false;
        }
        if (words == null) {
            if (resultSetExecute.allResults().size() > 0) {
                return true;
            }
        } else if (words.size() <= resultSetExecute.allResults().size()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: compiled from: FDCouchbaseLiteManager.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;", "", "<init>", "()V", C4032o2.p, "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;", Constants.GET_INSTANCE, "()Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;", "DATABASE_FILE_NAME", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final FDCouchbaseLiteManager getInstance() {
            return FDCouchbaseLiteManager.instance;
        }
    }
}
