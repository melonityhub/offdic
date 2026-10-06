package fast.dic.dict.helpers.database.couchbase;

import com.couchbase.lite.Array;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.DataSource;
import com.couchbase.lite.Database;
import com.couchbase.lite.Document;
import com.couchbase.lite.Expression;
import com.couchbase.lite.Meta;
import com.couchbase.lite.MutableArray;
import com.couchbase.lite.MutableDocument;
import com.couchbase.lite.OrderBy;
import com.couchbase.lite.Ordering;
import com.couchbase.lite.QueryBuilder;
import com.couchbase.lite.Result;
import com.couchbase.lite.ResultSet;
import com.couchbase.lite.Select;
import com.couchbase.lite.SelectResult;
import com.couchbase.lite.UnitOfWork;
import com.couchbase.lite.Where;
import com.couchbase.lite.internal.core.C4Replicator;
import com.ironsource.U3;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseUser;
import fast.dic.dict.models.database.FolderModel;
import fast.dic.dict.services.parse.FDParseUser;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDFavouriteFolder.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\b\u0007\u001a\u0002\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0014H\u0002J\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0016\u001a\u00020\u00062\b\b\u0002\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0006J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0012\u0010\u001e\u001a\u00020\u001d2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0006H\u0002J\u0014\u0010 \u001a\u00020\u001a2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u0014J\b\u0010#\u001a\u0004\u0018\u00010\"J\u0010\u0010$\u001a\u0004\u0018\u00010\"2\u0006\u0010\u001b\u001a\u00020\u0006J\u0016\u0010%\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006J\u0016\u0010&\u001a\u0012\u0012\u0004\u0012\u00020\"0'j\b\u0012\u0004\u0012\u00020\"`(R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082D¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u0006X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\f\u001a\u0004\u0018\u00010\r8F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;", "", "<init>", "()V", "Ljavax/inject/Inject;", "listType", "", "defaultFolder", "getDefaultFolder", "()Ljava/lang/String;", "manager", "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;", "value", "Lcom/couchbase/lite/Database;", "database", "getDatabase", "()Lcom/couchbase/lite/Database;", "selectQuery", "Lcom/couchbase/lite/Select;", "getCouchbaseChannels", "", "insert", "name", "isCurrent", "", "delete", "", "documentId", "count", "", "folderCount", "folderId", "refreshPosition", "folders", "Lfast/dic/dict/models/database/FolderModel;", "getCurrentFolder", "setCurrentFolder", "updateName", "get", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDFavouriteFolder {
    private Database database;
    private final FDCouchbaseLiteManager manager;
    private final Select selectQuery;
    private final String listType = "folder";
    private final String defaultFolder = "لغات برگزیده";

    @Inject
    public FDFavouriteFolder() {
        FDCouchbaseLiteManager companion = FDCouchbaseLiteManager.INSTANCE.getInstance();
        this.manager = companion;
        this.database = companion.openDatabase();
        Select select = QueryBuilder.select(SelectResult.expression(Meta.id), SelectResult.property(U3.i.L), SelectResult.property("name"), SelectResult.property(ParseObject.KEY_CREATED_AT), SelectResult.property(C4Replicator.REPLICATOR_OPTION_CHANNELS));
        Intrinsics.checkNotNullExpressionValue(select, "select(...)");
        this.selectQuery = select;
    }

    public final String getDefaultFolder() {
        return this.defaultFolder;
    }

    public final Database getDatabase() {
        Database databaseOpenDatabase = this.database;
        if (databaseOpenDatabase != null) {
            databaseOpenDatabase = this.manager.openDatabase();
            this.database = databaseOpenDatabase;
        }
        if (databaseOpenDatabase != null) {
            try {
                databaseOpenDatabase.getDefaultCollection();
            } catch (Exception unused) {
                this.database = this.manager.openDatabase();
            }
        }
        return this.database;
    }

    private final List<String> getCouchbaseChannels() throws ParseException {
        String email;
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null || (email = fDParseUser.getEmail()) == null) {
            return null;
        }
        return CollectionsKt.listOf(email);
    }

    public static /* synthetic */ String insert$default(FDFavouriteFolder fDFavouriteFolder, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return fDFavouriteFolder.insert(str, z);
    }

    public final String insert(String name, boolean isCurrent) {
        Collection defaultCollection;
        Intrinsics.checkNotNullParameter(name, "name");
        MutableDocument mutableDocument = new MutableDocument().setInt(U3.i.L, count()).setString("name", name).setDate(ParseObject.KEY_CREATED_AT, new Date()).setString("listType", this.listType).setString("list_type", this.listType).setBoolean("isCurrent", isCurrent);
        Intrinsics.checkNotNullExpressionValue(mutableDocument, "setBoolean(...)");
        List<String> couchbaseChannels = getCouchbaseChannels();
        if (couchbaseChannels != null) {
            mutableDocument.setArray(C4Replicator.REPLICATOR_OPTION_CHANNELS, (Array) new MutableArray(couchbaseChannels));
        }
        try {
            Database database = getDatabase();
            if (database != null && (defaultCollection = database.getDefaultCollection()) != null) {
                defaultCollection.save(mutableDocument);
            }
            return mutableDocument.getId();
        } catch (Exception unused) {
            System.out.println((Object) "Error saving folder");
            return null;
        }
    }

    public final void delete(String documentId) {
        Collection defaultCollection;
        Document document;
        Database database;
        Collection defaultCollection2;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        try {
            Database database2 = getDatabase();
            if (database2 == null || (defaultCollection = database2.getDefaultCollection()) == null || (document = defaultCollection.getDocument(documentId)) == null || (database = getDatabase()) == null || (defaultCollection2 = database.getDefaultCollection()) == null) {
                return;
            }
            defaultCollection2.delete(document);
        } catch (Exception unused) {
            System.out.println((Object) "Error deleting folder");
        }
    }

    public final int count() {
        Database database;
        Collection defaultCollection;
        if (getDatabase() != null && (database = getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
            Where where = QueryBuilder.select(SelectResult.expression(Meta.id)).from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))));
            Intrinsics.checkNotNullExpressionValue(where, "where(...)");
            try {
                ResultSet resultSetExecute = where.execute();
                Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
                return CollectionsKt.count(resultSetExecute);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    private final int folderCount(String folderId) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() != null && (database = getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
            Where where = QueryBuilder.select(SelectResult.all()).from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string("favourite")).or(Expression.property("list_type").equalTo(Expression.string("favourite"))));
            Intrinsics.checkNotNullExpressionValue(where, "where(...)");
            if (folderId != null && !Intrinsics.areEqual(folderId, "")) {
                where = QueryBuilder.select(SelectResult.all()).from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string("favourite")).or(Expression.property("list_type").equalTo(Expression.string("favourite"))).and(Expression.property("folder").equalTo(Expression.string(folderId))));
                Intrinsics.checkNotNullExpressionValue(where, "where(...)");
            }
            try {
                ResultSet resultSetExecute = where.execute();
                Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
                return CollectionsKt.count(resultSetExecute);
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    public final void refreshPosition(List<FolderModel> folders) {
        Intrinsics.checkNotNullParameter(folders, "folders");
        try {
            ArrayList arrayList = new ArrayList();
            for (Object obj : folders) {
                FolderModel folderModel = (FolderModel) obj;
                if (!folderModel.getIsHistory() && !folderModel.getIsWordCategory()) {
                    arrayList.add(obj);
                }
            }
            final ArrayList arrayList2 = arrayList;
            Database database = getDatabase();
            if (database != null) {
                database.inBatch(new UnitOfWork() { // from class: fast.dic.dict.helpers.database.couchbase.FDFavouriteFolder$$ExternalSyntheticLambda0
                    @Override // com.couchbase.lite.UnitOfWork
                    public final void run() throws CouchbaseLiteException {
                        FDFavouriteFolder.refreshPosition$lambda$1(arrayList2, this);
                    }
                });
            }
        } catch (Exception unused) {
            System.out.println((Object) "Error refresh folder position");
        }
    }

    static final void refreshPosition$lambda$1(List list, FDFavouriteFolder fDFavouriteFolder) throws CouchbaseLiteException {
        Document document;
        Database database;
        Collection defaultCollection;
        Collection defaultCollection2;
        int i = 0;
        for (FolderModel folderModel : CollectionsKt.reversed(list)) {
            Database database2 = fDFavouriteFolder.getDatabase();
            if (database2 == null || (defaultCollection2 = database2.getDefaultCollection()) == null) {
                document = null;
            } else {
                String documentId = folderModel.getDocumentId();
                if (documentId == null) {
                    documentId = "";
                }
                document = defaultCollection2.getDocument(documentId);
            }
            MutableDocument mutable = document != null ? document.toMutable() : null;
            if (mutable != null) {
                mutable.setInt(U3.i.L, i);
            }
            if (mutable != null && (database = fDFavouriteFolder.getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
                defaultCollection.save(mutable);
            }
            i++;
        }
    }

    public final FolderModel getCurrentFolder() {
        Database database;
        Collection defaultCollection;
        Collection defaultCollection2;
        Collection defaultCollection3;
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return null;
        }
        OrderBy orderBy = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("isCurrent").equalTo(Expression.booleanValue(true)))).orderBy(Ordering.property(U3.i.L).descending());
        Intrinsics.checkNotNullExpressionValue(orderBy, "orderBy(...)");
        try {
            ResultSet resultSetExecute = orderBy.execute();
            Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
            Iterator<Result> it = resultSetExecute.allResults().iterator();
            if (it.hasNext()) {
                Result next = it.next();
                FolderModel folderModel = new FolderModel(null, null, null, null, null, false, false, null, 255, null);
                folderModel.setDocumentId(next.getString("id"));
                folderModel.setName(next.getString("name"));
                folderModel.setPosition(Integer.valueOf(next.getInt(U3.i.L)));
                folderModel.setCurrent(Boolean.valueOf(next.getBoolean("isCurrent")));
                return folderModel;
            }
        } catch (Exception unused) {
            System.out.println((Object) "Error getting current folder");
        }
        ArrayList<FolderModel> arrayList = get();
        if (arrayList.size() == 0) {
            insert(this.defaultFolder, true);
            return getCurrentFolder();
        }
        try {
            Database database2 = getDatabase();
            if (database2 != null && (defaultCollection2 = database2.getDefaultCollection()) != null) {
                String documentId = arrayList.get(0).getDocumentId();
                if (documentId == null) {
                    documentId = "";
                }
                Document document = defaultCollection2.getDocument(documentId);
                if (document != null) {
                    MutableDocument mutable = document.toMutable();
                    Intrinsics.checkNotNullExpressionValue(mutable, "toMutable(...)");
                    mutable.setBoolean("isCurrent", true);
                    Database database3 = getDatabase();
                    if (database3 != null && (defaultCollection3 = database3.getDefaultCollection()) != null) {
                        defaultCollection3.save(mutable);
                    }
                }
                return arrayList.get(0);
            }
            return null;
        } catch (Exception unused2) {
            System.out.println((Object) "Error getting current folder");
        }
    }

    public final FolderModel setCurrentFolder(String documentId) {
        Database database;
        Collection defaultCollection;
        Database database2;
        Collection defaultCollection2;
        Collection defaultCollection3;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        if (getDatabase() != null && (database = getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
            try {
                final OrderBy orderBy = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("isCurrent").equalTo(Expression.booleanValue(true)))).orderBy(Ordering.property(U3.i.L).descending());
                Intrinsics.checkNotNullExpressionValue(orderBy, "orderBy(...)");
                Database database3 = getDatabase();
                if (database3 != null) {
                    database3.inBatch(new UnitOfWork() { // from class: fast.dic.dict.helpers.database.couchbase.FDFavouriteFolder$$ExternalSyntheticLambda1
                        @Override // com.couchbase.lite.UnitOfWork
                        public final void run() throws CouchbaseLiteException {
                            FDFavouriteFolder.setCurrentFolder$lambda$0(orderBy, this);
                        }
                    });
                }
                Database database4 = getDatabase();
                Document document = (database4 == null || (defaultCollection3 = database4.getDefaultCollection()) == null) ? null : defaultCollection3.getDocument(documentId);
                MutableDocument mutable = document != null ? document.toMutable() : null;
                if (mutable != null) {
                    mutable.setBoolean("isCurrent", true);
                }
                if (mutable != null && (database2 = getDatabase()) != null && (defaultCollection2 = database2.getDefaultCollection()) != null) {
                    defaultCollection2.save(mutable);
                }
                FolderModel folderModel = new FolderModel(null, null, null, null, null, false, false, null, 255, null);
                folderModel.setDocumentId(documentId);
                folderModel.setName(mutable != null ? mutable.getString("name") : null);
                folderModel.setPosition(mutable != null ? Integer.valueOf(mutable.getInt(U3.i.L)) : null);
                folderModel.setCurrent(mutable != null ? Boolean.valueOf(mutable.getBoolean("isCurrent")) : null);
                return folderModel;
            } catch (Exception unused) {
                System.out.println((Object) "Error set current folder");
            }
        }
        return null;
    }

    static final void setCurrentFolder$lambda$0(OrderBy orderBy, FDFavouriteFolder fDFavouriteFolder) throws CouchbaseLiteException {
        Database database;
        Collection defaultCollection;
        Collection defaultCollection2;
        ResultSet resultSetExecute = orderBy.execute();
        Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
        Iterator<Result> it = resultSetExecute.allResults().iterator();
        while (it.hasNext()) {
            String string = it.next().getString("id");
            if (string == null) {
                string = "";
            }
            Database database2 = fDFavouriteFolder.getDatabase();
            Document document = (database2 == null || (defaultCollection2 = database2.getDefaultCollection()) == null) ? null : defaultCollection2.getDocument(string);
            MutableDocument mutable = document != null ? document.toMutable() : null;
            if (mutable != null) {
                mutable.setBoolean("isCurrent", false);
            }
            if (mutable != null && (database = fDFavouriteFolder.getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
                defaultCollection.save(mutable);
            }
        }
    }

    public final boolean updateName(String documentId, String name) {
        Database database;
        Collection defaultCollection;
        Collection defaultCollection2;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(name, "name");
        try {
            Database database2 = getDatabase();
            Document document = (database2 == null || (defaultCollection2 = database2.getDefaultCollection()) == null) ? null : defaultCollection2.getDocument(documentId);
            MutableDocument mutable = document != null ? document.toMutable() : null;
            if (mutable != null) {
                mutable.setString("name", name);
            }
            if (mutable == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
                return true;
            }
            defaultCollection.save(mutable);
            return true;
        } catch (Exception unused) {
            System.out.println((Object) "Error set current folder");
            return false;
        }
    }

    public final ArrayList<FolderModel> get() {
        Collection defaultCollection;
        if (getDatabase() == null) {
            return new ArrayList<>();
        }
        Database database = getDatabase();
        if (database == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return new ArrayList<>();
        }
        OrderBy orderBy = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType)))).orderBy(Ordering.property(U3.i.L).descending());
        Intrinsics.checkNotNullExpressionValue(orderBy, "orderBy(...)");
        ArrayList<FolderModel> arrayList = new ArrayList<>();
        try {
            ResultSet resultSetExecute = orderBy.execute();
            Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
            for (Result result : resultSetExecute.allResults()) {
                FolderModel folderModel = new FolderModel(null, null, null, null, null, false, false, null, 255, null);
                folderModel.setDocumentId(result.getString("id"));
                folderModel.setName(result.getString("name"));
                folderModel.setPosition(Integer.valueOf(result.getInt(U3.i.L)));
                folderModel.setCurrent(Boolean.valueOf(result.getBoolean("isCurrent")));
                folderModel.setCount(Integer.valueOf(folderCount(folderModel.getDocumentId())));
                arrayList.add(folderModel);
            }
            return arrayList;
        } catch (Exception unused) {
            System.out.println((Object) "Error getting folders");
            return arrayList;
        }
    }
}
