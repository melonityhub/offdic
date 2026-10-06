package fast.dic.dict.helpers;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.couchbase.lite.Array;
import com.couchbase.lite.ArrayFunction;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CollectionConfiguration;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.DataSource;
import com.couchbase.lite.Database;
import com.couchbase.lite.DatabaseConfiguration;
import com.couchbase.lite.Document;
import com.couchbase.lite.Expression;
import com.couchbase.lite.Function;
import com.couchbase.lite.Having;
import com.couchbase.lite.Meta;
import com.couchbase.lite.MutableArray;
import com.couchbase.lite.MutableDocument;
import com.couchbase.lite.QueryBuilder;
import com.couchbase.lite.ReplicatorConfiguration;
import com.couchbase.lite.ReplicatorType;
import com.couchbase.lite.Result;
import com.couchbase.lite.ResultSet;
import com.couchbase.lite.Select;
import com.couchbase.lite.SelectResult;
import com.couchbase.lite.SessionAuthenticator;
import com.couchbase.lite.URLEndpoint;
import com.couchbase.lite.UnitOfWork;
import com.couchbase.lite.Where;
import com.couchbase.lite.internal.core.C4Replicator;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseUser;
import com.unity3d.services.core.device.reader.JsonStorageKeyNames;
import fast.dic.dict.helpers.database.DatabaseListManager;
import fast.dic.dict.helpers.database.couchbase.FDCouchbaseLiteManager;
import fast.dic.dict.helpers.database.couchbase.FDFavourite;
import fast.dic.dict.helpers.database.couchbase.FDFavouriteFolder;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.p000const.ConfigConstKt;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.StringExtKt;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDListPath.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\b\b¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\r\u001a\u00020\u000eJ \u0010\u000f\u001a\u00020\u0010H\u0007b\u0016\b\u0011\u0012\u0012\b\u0012\u0012\u000e\b\fJ\u0004\b\b(\u0013J\u0004\b\b(\u0014J\u0006\u0010\u0015\u001a\u00020\u0010J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J)\u0010\u001a\u001a\u00020\u00102!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u00100\u001cJ\u0006\u0010 \u001a\u00020\u0010J\u0006\u0010!\u001a\u00020\u0010J\u0018\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0019H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lfast/dic/dict/helpers/FDListPath;", "", "historyWrapper", "Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "favoriteWrapper", "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;", "<init>", "(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;)V", "Ljavax/inject/Inject;", "manager", "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;", "selectQuery", "Lcom/couchbase/lite/Select;", "isDBExistsInDocumentCB", "", "migrateToCB", "", "Landroid/annotation/SuppressLint;", "value", "Range", "Recycle", "migrateAddFolder", "replicatorConfiguration", "Lcom/couchbase/lite/ReplicatorConfiguration;", JsonStorageKeyNames.SESSION_ID_KEY, "", "deleteDB", "completion", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "result", "updateDocuments", "checkAndDeDuplicateDocuments", "groupByDeDup", "database", "Lcom/couchbase/lite/Database;", "listType", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDListPath {
    private final FDFavourite favoriteWrapper;
    private final FDHistory historyWrapper;
    private final FDCouchbaseLiteManager manager;
    private final Select selectQuery;

    @Inject
    public FDListPath(FDHistory historyWrapper, FDFavourite favoriteWrapper) {
        Intrinsics.checkNotNullParameter(historyWrapper, "historyWrapper");
        Intrinsics.checkNotNullParameter(favoriteWrapper, "favoriteWrapper");
        this.historyWrapper = historyWrapper;
        this.favoriteWrapper = favoriteWrapper;
        this.manager = FDCouchbaseLiteManager.INSTANCE.getInstance();
        Select select = QueryBuilder.select(SelectResult.expression(Meta.id), SelectResult.property("wordId"), SelectResult.property("category"), SelectResult.property("word"), SelectResult.property(ParseObject.KEY_CREATED_AT), SelectResult.property(C4Replicator.REPLICATOR_OPTION_CHANNELS));
        Intrinsics.checkNotNullExpressionValue(select, "select(...)");
        this.selectQuery = select;
    }

    public final boolean isDBExistsInDocumentCB() {
        return this.historyWrapper.isDBExistsInDocumentCB() || this.favoriteWrapper.isDBExistsInDocumentCB();
    }

    public final void migrateToCB() throws ParseException {
        DatabaseListManager companion = DatabaseListManager.INSTANCE.getInstance();
        SQLiteDatabase sQLiteDatabaseOpenDatabase = companion != null ? companion.openDatabase() : null;
        ArrayList<ListModel> arrayList = new ArrayList<>();
        Cursor cursorRawQuery = sQLiteDatabaseOpenDatabase != null ? sQLiteDatabaseOpenDatabase.rawQuery("SELECT word_id, word, category FROM history", null) : null;
        if (cursorRawQuery != null) {
            if (cursorRawQuery.moveToFirst()) {
                do {
                    int i = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("word_id"));
                    String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("word"));
                    Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                    int i2 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("category"));
                    ListModel listModel = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
                    listModel.setWord(string);
                    listModel.setWordId(Integer.valueOf(i));
                    listModel.setCategory(Integer.valueOf(i2));
                    arrayList.add(listModel);
                } while (cursorRawQuery.moveToNext());
            }
            cursorRawQuery.close();
        }
        if (arrayList.size() > 0) {
            this.historyWrapper.insert(arrayList);
        }
        DatabaseListManager companion2 = DatabaseListManager.INSTANCE.getInstance();
        SQLiteDatabase sQLiteDatabaseOpenDatabase2 = companion2 != null ? companion2.openDatabase() : null;
        ArrayList<ListModel> arrayList2 = new ArrayList<>();
        Cursor cursorRawQuery2 = sQLiteDatabaseOpenDatabase2 != null ? sQLiteDatabaseOpenDatabase2.rawQuery("SELECT word_id, word, category FROM favourite", null) : null;
        if (cursorRawQuery2 != null) {
            if (cursorRawQuery2.moveToFirst()) {
                int i3 = 0;
                do {
                    int i4 = cursorRawQuery2.getInt(cursorRawQuery2.getColumnIndex("word_id"));
                    String string2 = cursorRawQuery2.getString(cursorRawQuery2.getColumnIndex("word"));
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                    int i5 = cursorRawQuery2.getInt(cursorRawQuery2.getColumnIndex("category"));
                    ListModel listModel2 = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
                    listModel2.setWord(string2);
                    listModel2.setWordId(Integer.valueOf(i4));
                    listModel2.setCategory(Integer.valueOf(i5));
                    listModel2.setPosition(Integer.valueOf(i3));
                    i3++;
                    arrayList2.add(listModel2);
                } while (cursorRawQuery2.moveToNext());
            }
            cursorRawQuery2.close();
        }
        if (arrayList2.size() > 0) {
            this.favoriteWrapper.insert(arrayList2);
        }
    }

    public final void migrateAddFolder() {
        if (new FDFavouriteFolder().count() != 0) {
            return;
        }
        ArrayList<ListModel> allWithoutFolder = this.favoriteWrapper.getAllWithoutFolder();
        if (allWithoutFolder.size() == 0) {
            return;
        }
        String strInsert = new FDFavouriteFolder().insert(new FDFavouriteFolder().getDefaultFolder(), true);
        Iterator<ListModel> it = allWithoutFolder.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            ListModel next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            next.setFolderId(strInsert);
        }
        this.favoriteWrapper.updateAllFolders(allWithoutFolder);
    }

    public final ReplicatorConfiguration replicatorConfiguration(String sessionId) {
        Collection defaultCollection;
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        ReplicatorConfiguration replicatorConfiguration = new ReplicatorConfiguration(new URLEndpoint(new URI(ConfigConstKt.COUCHBASE_SYNC_SERVER)));
        Database databaseOpenDatabase = this.manager.openDatabase();
        if (databaseOpenDatabase != null && (defaultCollection = databaseOpenDatabase.getDefaultCollection()) != null) {
            try {
                replicatorConfiguration.addCollection(defaultCollection, new CollectionConfiguration());
                replicatorConfiguration.setType(ReplicatorType.PUSH_AND_PULL);
                replicatorConfiguration.setContinuous(true);
                replicatorConfiguration.setAuthenticator(new SessionAuthenticator(sessionId));
            } catch (Exception unused) {
            }
        }
        return replicatorConfiguration;
    }

    public final void deleteDB(Function1<? super Boolean, Unit> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        Database databaseOpenDatabase = this.manager.openDatabase();
        if (databaseOpenDatabase == null) {
            return;
        }
        DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration();
        try {
            Collection defaultCollection = databaseOpenDatabase.getDefaultCollection();
            if (defaultCollection != null) {
                defaultCollection.close();
            }
            databaseOpenDatabase.close();
            Database.delete(FDCouchbaseLiteManager.DATABASE_FILE_NAME, StringExtKt.toFile(databaseConfiguration.getDirectory()));
            this.manager.closeDatabase();
            this.manager.openDatabase();
            completion.invoke(true);
        } catch (Exception e) {
            LoggerKt.getLogger().error("Something went wrong while deleting database", new Object[0]);
            e.printStackTrace();
            completion.invoke(false);
        }
    }

    public final void updateDocuments() {
        final String email;
        Database databaseOpenDatabase;
        final Collection defaultCollection;
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null || (email = fDParseUser.getEmail()) == null || (databaseOpenDatabase = this.manager.openDatabase()) == null || (defaultCollection = databaseOpenDatabase.getDefaultCollection()) == null) {
            return;
        }
        try {
            final Where where = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.not(ArrayFunction.contains(Expression.property(C4Replicator.REPLICATOR_OPTION_CHANNELS), Expression.string(email))).or(Expression.property(C4Replicator.REPLICATOR_OPTION_CHANNELS).isNotValued()));
            Intrinsics.checkNotNullExpressionValue(where, "where(...)");
            databaseOpenDatabase.inBatch(new UnitOfWork() { // from class: fast.dic.dict.helpers.FDListPath$$ExternalSyntheticLambda0
                @Override // com.couchbase.lite.UnitOfWork
                public final void run() throws CouchbaseLiteException {
                    FDListPath.updateDocuments$lambda$0(where, defaultCollection, email);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    static final void updateDocuments$lambda$0(Where where, Collection collection, String str) throws CouchbaseLiteException {
        Iterator<Result> it = where.execute().iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            String string = it.next().getString("id");
            Intrinsics.checkNotNull(string);
            Document document = collection.getDocument(string);
            MutableDocument mutable = document != null ? document.toMutable() : null;
            if (mutable != null) {
                mutable.setArray(C4Replicator.REPLICATOR_OPTION_CHANNELS, (Array) new MutableArray((List<?>) CollectionsKt.listOf(str)));
            }
            if (mutable != null) {
                collection.save(mutable);
            }
        }
    }

    public final void checkAndDeDuplicateDocuments() {
        Database databaseOpenDatabase = this.manager.openDatabase();
        if (databaseOpenDatabase == null) {
            return;
        }
        groupByDeDup(databaseOpenDatabase, "history");
        groupByDeDup(databaseOpenDatabase, "favourite");
    }

    private final void groupByDeDup(Database database, String listType) throws CouchbaseLiteException {
        LoggerKt.getLogger().debug("groupByDeDup: start group by --> " + listType, new Object[0]);
        Select select = QueryBuilder.select(SelectResult.expression(Meta.id), SelectResult.property("word"));
        Intrinsics.checkNotNullExpressionValue(select, "select(...)");
        Collection defaultCollection = database.getDefaultCollection();
        if (defaultCollection == null) {
            return;
        }
        Having having = select.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(listType))).groupBy(Expression.property("word")).having(Function.count(Expression.all()).greaterThan(Expression.intValue(1)));
        Intrinsics.checkNotNullExpressionValue(having, "having(...)");
        ResultSet resultSetExecute = having.execute();
        Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
        List<Result> listAllResults = resultSetExecute.allResults();
        Intrinsics.checkNotNullExpressionValue(listAllResults, "allResults(...)");
        LoggerKt.getLogger().debug("groupByDeDup: end group by : length " + listAllResults.size(), new Object[0]);
        Iterator<Result> it = listAllResults.iterator();
        while (it.hasNext()) {
            String string = it.next().getString("id");
            if (string == null) {
                string = "";
            }
            Document document = defaultCollection.getDocument(string);
            if (document != null) {
                defaultCollection.delete(document);
            }
        }
        LoggerKt.getLogger().debug("groupByDeDup: end delete duplicate", new Object[0]);
    }
}
