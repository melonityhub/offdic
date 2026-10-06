package fast.dic.dict.helpers;

import android.content.Context;
import android.content.res.Resources;
import android.database.sqlite.SQLiteException;
import com.getkeepsafe.relinker.ReLinker;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.yandex.div.core.dagger.Names;
import dagger.hilt.android.qualifiers.ApplicationContext;
import fast.dic.dict.R;
import fast.dic.dict.helpers.database.couchbase.FDCouchbaseLiteManager;
import fast.dic.dict.utils.Logger;
import io.sentry.SentryEvent;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;
import net.zetetic.database.DatabaseErrorHandler;
import net.zetetic.database.sqlcipher.SQLiteConnection;
import net.zetetic.database.sqlcipher.SQLiteDatabase;
import net.zetetic.database.sqlcipher.SQLiteDatabaseHook;

/* JADX INFO: compiled from: FDDatabaseHelper.kt */
/* JADX INFO: loaded from: classes11.dex */
@Singleton
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\b\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B#\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\b\u0001\u0010\u0004\u001a\u00020\u0005:\u0002\b\u0006\u001a\u0002\b\t¢\u0006\u0004\b\u0007\u0010\bJ\u0006\u0010\f\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rJ\n\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0002J\u0006\u0010\u0011\u001a\u00020\rJ\u0006\u0010\u001a\u001a\u00020\u001bJ\b\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001d\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u001e\u001a\u00020\u001fJ\u0006\u0010 \u001a\u00020\u001bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0015\u0010\u0004\u001a\u00020\u00058\u0002X\u0083\u0004\u0092\u0002\u0002\b\u0006¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u00020\u00138BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010!\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b\"\u0010#Ê\u0001\u0002\b&¨\u0006%"}, d2 = {"Lfast/dic/dict/helpers/FDMainDatabaseHelper;", "", SentryEvent.JsonKeys.LOGGER, "Lfast/dic/dict/utils/Logger;", Names.CONTEXT, "Landroid/content/Context;", "Ldagger/hilt/android/qualifiers/ApplicationContext;", "<init>", "(Lfast/dic/dict/utils/Logger;Landroid/content/Context;)V", "Ljavax/inject/Inject;", "myDataBase", "Lnet/zetetic/database/sqlcipher/SQLiteDatabase;", "readyLocalStorageBeforeCopyDatabase", "", "createDatabase", "databaseExist", "openSqlCipherDB", "checkDataBase", "databasePath", "", "getDatabasePath", "()Ljava/lang/String;", "databaseFile", "Ljava/io/File;", "getDatabaseFile", "()Ljava/io/File;", "removeDatabase", "", "copyDataBase", "openDataBase", "getDatabaseSize", "", "close", "readableDatabase", "getReadableDatabase", "()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;", "Companion", "app", "Ljavax/inject/Singleton;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDMainDatabaseHelper {
    private static final String CB_DB_NAME = "lists.sqlite";
    private static final String DB_NAME = "fastdic5.08.09.sqlite";

    @ApplicationContext
    private final Context context;
    private final Logger logger;
    private SQLiteDatabase myDataBase;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static String DB_PATH = "";

    @Inject
    public FDMainDatabaseHelper(Logger logger, @ApplicationContext Context context) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(context, "context");
        this.logger = logger;
        this.context = context;
        DB_PATH = context.getApplicationInfo().dataDir + "/databases/";
    }

    public final boolean readyLocalStorageBeforeCopyDatabase() {
        File file = new File(DB_PATH);
        if (file.exists()) {
            File[] fileArrListFiles = file.listFiles();
            IntRange indices = fileArrListFiles != null ? ArraysKt.getIndices(fileArrListFiles) : null;
            Intrinsics.checkNotNull(indices);
            int first = indices.getFirst();
            int last = indices.getLast();
            if (first <= last) {
                while (true) {
                    String name = fileArrListFiles[first].getName();
                    Intrinsics.checkNotNull(name);
                    String[] strArr = (String[]) StringsKt.split$default((CharSequence) name, new String[]{"."}, false, 0, 6, (Object) null).toArray(new String[0]);
                    if (strArr.length > 1 && ((StringsKt.startsWith$default((String) ArraysKt.first(strArr), "fastdic", false, 2, (Object) null) || StringsKt.startsWith$default((String) ArraysKt.first(strArr), FDCouchbaseLiteManager.DATABASE_FILE_NAME, false, 2, (Object) null)) && Intrinsics.areEqual(ArraysKt.last(strArr), "sqlite") && !Intrinsics.areEqual(name, DB_NAME) && !Intrinsics.areEqual(name, CB_DB_NAME))) {
                        if (fileArrListFiles[first].exists()) {
                            fileArrListFiles[first].delete();
                        }
                        File file2 = new File(DB_PATH + strArr[0] + ".sqlite-journal");
                        if (file2.exists()) {
                            file2.delete();
                        }
                    }
                    if (first == last) {
                        break;
                    }
                    first++;
                }
            }
        }
        return checkDataBase();
    }

    public final boolean createDatabase(boolean databaseExist) {
        if (databaseExist) {
            return false;
        }
        try {
            copyDataBase();
            return true;
        } catch (IOException e) {
            throw new Error("Error copying database. " + e.getMessage());
        }
    }

    private final SQLiteDatabase openSqlCipherDB() {
        try {
            String databasePath = getDatabasePath();
            this.logger.debug("==> Database opened now", new Object[0]);
            return SQLiteDatabase.openDatabase(databasePath, "", (SQLiteDatabase.CursorFactory) null, 1, new DatabaseErrorHandler() { // from class: fast.dic.dict.helpers.FDMainDatabaseHelper$$ExternalSyntheticLambda0
                @Override // net.zetetic.database.DatabaseErrorHandler
                public final void onCorruption(SQLiteDatabase sQLiteDatabase, SQLiteException sQLiteException) {
                    FDMainDatabaseHelper.openSqlCipherDB$lambda$0(this.f$0, sQLiteDatabase, sQLiteException);
                }
            }, new SQLiteDatabaseHook() { // from class: fast.dic.dict.helpers.FDMainDatabaseHelper$openSqlCipherDB$hook$1
                @Override // net.zetetic.database.sqlcipher.SQLiteDatabaseHook
                public void postKey(SQLiteConnection connection) {
                    Intrinsics.checkNotNullParameter(connection, "connection");
                }

                @Override // net.zetetic.database.sqlcipher.SQLiteDatabaseHook
                public void preKey(SQLiteConnection connection) {
                    Intrinsics.checkNotNullParameter(connection, "connection");
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    static final void openSqlCipherDB$lambda$0(FDMainDatabaseHelper fDMainDatabaseHelper, SQLiteDatabase sQLiteDatabase, SQLiteException sQLiteException) {
        fDMainDatabaseHelper.logger.error("DatabaseErrorHandler onCorruption called", sQLiteException);
        FirebaseCrashlytics.getInstance().log("DatabaseErrorHandler onCorruption called: " + (sQLiteException != null ? sQLiteException.getMessage() : null));
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
        }
    }

    public final boolean checkDataBase() {
        return openDataBase() != null;
    }

    private final String getDatabasePath() {
        String absolutePath = getDatabaseFile().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    private final File getDatabaseFile() {
        try {
            System.loadLibrary("sqlcipher");
        } catch (Exception e) {
            e.printStackTrace();
            try {
                System.loadLibrary("sqlcipher");
            } catch (UnsatisfiedLinkError e2) {
                e2.printStackTrace();
                ReLinker.loadLibrary(this.context, "sqlcipher", new ReLinker.LoadListener() { // from class: fast.dic.dict.helpers.FDMainDatabaseHelper$databaseFile$1
                    @Override // com.getkeepsafe.relinker.ReLinker.LoadListener
                    public void success() {
                        this.this$0.logger.debug("Successfully load libraries", new Object[0]);
                    }

                    @Override // com.getkeepsafe.relinker.ReLinker.LoadListener
                    public void failure(Throwable t) {
                        this.this$0.logger.debug("Fail to load libraries = " + (t != null ? t.getMessage() : null), new Object[0]);
                    }
                });
            }
        }
        File databasePath = this.context.getDatabasePath(DB_PATH + DB_NAME);
        if (databasePath != null && databasePath.isDirectory() && !databasePath.exists()) {
            databasePath.mkdirs();
        }
        Intrinsics.checkNotNull(databasePath);
        return databasePath;
    }

    public final void removeDatabase() {
        SQLiteDatabase sQLiteDatabase = this.myDataBase;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
        }
        File file = new File(DB_PATH);
        if (file.isDirectory() && !file.exists()) {
            file.mkdir();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (StringsKt.contains$default((CharSequence) name, (CharSequence) DB_NAME, false, 2, (Object) null)) {
                    file2.delete();
                }
            }
        }
    }

    private final void copyDataBase() throws IOException {
        File file = new File(DB_PATH);
        String str = DB_PATH + DB_NAME;
        if (file.isDirectory() && !file.exists()) {
            file.mkdir();
        }
        new File(str);
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                String name = file2.getName();
                Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                if (StringsKt.contains$default((CharSequence) name, (CharSequence) DB_NAME, false, 2, (Object) null)) {
                    file2.delete();
                }
            }
        }
        FileOutputStream fileOutputStream = new FileOutputStream(str);
        byte[] bArr = new byte[1024];
        Resources resources = this.context.getResources();
        Intrinsics.checkNotNull(resources);
        InputStream inputStreamOpenRawResource = resources.openRawResource(R.raw.fastdic00);
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

    /* JADX WARN: Code duplicated, block: B:10:0x0019 A[Catch: all -> 0x002c, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:12:0x0028, B:7:0x000e, B:10:0x0019, B:11:0x0021), top: B:18:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:11:0x0021 A[Catch: all -> 0x002c, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:12:0x0028, B:7:0x000e, B:10:0x0019, B:11:0x0021), top: B:18:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x000e A[Catch: all -> 0x002c, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0005, B:12:0x0028, B:7:0x000e, B:10:0x0019, B:11:0x0021), top: B:18:0x0001 }] */
    public final synchronized SQLiteDatabase openDataBase() {
        SQLiteDatabase sQLiteDatabaseOpenSqlCipherDB;
        Logger logger;
        SQLiteDatabase sQLiteDatabase = this.myDataBase;
        if (sQLiteDatabase != null) {
            Intrinsics.checkNotNull(sQLiteDatabase);
            if (!sQLiteDatabase.isOpen()) {
                sQLiteDatabaseOpenSqlCipherDB = openSqlCipherDB();
                this.myDataBase = sQLiteDatabaseOpenSqlCipherDB;
                logger = this.logger;
                if (sQLiteDatabaseOpenSqlCipherDB != null) {
                    logger.debug("==> Database is opened", new Object[0]);
                } else {
                    logger.warn("==> Could not open database for unknown reason", new Object[0]);
                }
            }
        } else {
            sQLiteDatabaseOpenSqlCipherDB = openSqlCipherDB();
            this.myDataBase = sQLiteDatabaseOpenSqlCipherDB;
            logger = this.logger;
            if (sQLiteDatabaseOpenSqlCipherDB != null) {
                logger.debug("==> Database is opened", new Object[0]);
            } else {
                logger.warn("==> Could not open database for unknown reason", new Object[0]);
            }
        }
        return this.myDataBase;
    }

    public final long getDatabaseSize() {
        Resources resources = this.context.getResources();
        Intrinsics.checkNotNull(resources);
        return resources.openRawResourceFd(R.raw.fastdic00).getLength();
    }

    public final synchronized void close() {
        SQLiteDatabase sQLiteDatabase = this.myDataBase;
        if (sQLiteDatabase != null) {
            sQLiteDatabase.close();
        }
    }

    public final SQLiteDatabase getReadableDatabase() {
        return openDataBase();
    }

    /* JADX INFO: compiled from: FDDatabaseHelper.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lfast/dic/dict/helpers/FDMainDatabaseHelper$Companion;", "", "<init>", "()V", "DB_PATH", "", "getDB_PATH", "()Ljava/lang/String;", "setDB_PATH", "(Ljava/lang/String;)V", "DB_NAME", "CB_DB_NAME", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getDB_PATH() {
            return FDMainDatabaseHelper.DB_PATH;
        }

        public final void setDB_PATH(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            FDMainDatabaseHelper.DB_PATH = str;
        }
    }
}
