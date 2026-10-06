package fast.dic.dict.helpers.database.couchbase;

import com.couchbase.lite.Array;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.DataSource;
import com.couchbase.lite.Database;
import com.couchbase.lite.Document;
import com.couchbase.lite.Expression;
import com.couchbase.lite.Function;
import com.couchbase.lite.Limit;
import com.couchbase.lite.Meta;
import com.couchbase.lite.MutableArray;
import com.couchbase.lite.MutableDocument;
import com.couchbase.lite.OrderBy;
import com.couchbase.lite.Ordering;
import com.couchbase.lite.Query;
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
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.domain.entity.WordSortEnum;
import fast.dic.dict.models.database.FolderModel;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.Category;
import fast.dic.dict.utils.FDCategory;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.LoggerKt;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import net.zetetic.database.sqlcipher.SQLiteDatabase;

/* JADX INFO: compiled from: FDFavourite.kt */
/* JADX INFO: loaded from: classes11.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0014H\u0002J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0016\u001a\u00020\u0017J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0016\u001a\u00020\u0017J\u001e\u0010\u0018\u001a\u00020\u00122\u0016\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u001aj\b\u0012\u0004\u0012\u00020\u0017`\u001bJ\u000e\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\bJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\bJ\u0010\u0010!\u001a\u00020\"2\b\u0010 \u001a\u0004\u0018\u00010\bJ\u001a\u0010#\u001a\u0004\u0018\u00010\b2\b\u0010$\u001a\u0004\u0018\u00010\b2\u0006\u0010%\u001a\u00020\"J\u001a\u0010&\u001a\u0004\u0018\u00010\b2\b\u0010$\u001a\u0004\u0018\u00010\b2\u0006\u0010%\u001a\u00020\"J\u0016\u0010'\u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\b2\u0006\u0010 \u001a\u00020\bJ\u001e\u0010(\u001a\u00020\u001f2\u0016\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u001aj\b\u0012\u0004\u0012\u00020\u0017`\u001bJ\u0016\u0010)\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u001aj\b\u0012\u0004\u0012\u00020\u0017`\u001bJS\u0010*\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u001aj\b\u0012\u0004\u0012\u00020\u0017`\u001b2\b\u0010%\u001a\u0004\u0018\u00010\"2\u0006\u0010 \u001a\u00020\b2\b\b\u0002\u0010+\u001a\u00020\"2\b\b\u0002\u0010,\u001a\u00020\"2\b\b\u0002\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020/¢\u0006\u0002\u00100J \u00101\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u001aj\b\u0012\u0004\u0012\u00020\u0017`\u001b2\b\b\u0002\u0010+\u001a\u00020\"J\u0018\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u0010.\u001a\u00020/H\u0002J\"\u00106\u001a\u0004\u0018\u0001072\u0006\u0010%\u001a\u00020\"2\u0006\u0010 \u001a\u00020\b2\u0006\u0010.\u001a\u00020/H\u0002J4\u00106\u001a\u0004\u0018\u0001072\u0006\u0010%\u001a\u00020\"2\u0006\u0010 \u001a\u00020\b2\u0006\u0010+\u001a\u00020\"2\b\b\u0002\u0010,\u001a\u00020\"2\u0006\u0010.\u001a\u00020/H\u0002J\u001a\u00106\u001a\u0004\u0018\u0001072\u0006\u0010 \u001a\u00020\b2\u0006\u0010.\u001a\u00020/H\u0002J,\u00106\u001a\u0004\u0018\u0001072\u0006\u0010 \u001a\u00020\b2\u0006\u0010+\u001a\u00020\"2\b\b\u0002\u0010,\u001a\u00020\"2\u0006\u0010.\u001a\u00020/H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000Ê\u0001\u0002\b9¨\u00068"}, d2 = {"Lfast/dic/dict/helpers/database/couchbase/FDFavourite;", "", "databaseManager", "Lfast/dic/dict/database/FDDatabaseManager;", "<init>", "(Lfast/dic/dict/database/FDDatabaseManager;)V", "Ljavax/inject/Inject;", "listType", "", "manager", "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;", "database", "Lcom/couchbase/lite/Database;", "getDatabase", "()Lcom/couchbase/lite/Database;", "selectQuery", "Lcom/couchbase/lite/Select;", "isDBExistsInDocumentCB", "", "getCouchbaseChannels", "", "deleteAndInsert", "list", "Lfast/dic/dict/models/database/ListModel;", "insert", FDCouchbaseLiteManager.DATABASE_FILE_NAME, "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "delete", "documentId", "deleteAll", "", "folderId", "count", "", "getFolderNameByWord", "word", "category", "wordDocumentId", "updateFolder", "updateAllFolders", "getAllWithoutFolder", "get", "limit", "offset", "noLimit", "sort", "Lfast/dic/dict/domain/entity/WordSortEnum;", "(Ljava/lang/Integer;Ljava/lang/String;IIZLfast/dic/dict/domain/entity/WordSortEnum;)Ljava/util/ArrayList;", "getLatest", "applyOrder", "Lcom/couchbase/lite/OrderBy;", "where", "Lcom/couchbase/lite/Where;", "getQuery", "Lcom/couchbase/lite/Query;", "app", "Ljavax/inject/Singleton;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDFavourite {
    private final FDDatabaseManager databaseManager;
    private final String listType;
    private final FDCouchbaseLiteManager manager;
    private final Select selectQuery;

    @Inject
    public FDFavourite(FDDatabaseManager databaseManager) {
        Intrinsics.checkNotNullParameter(databaseManager, "databaseManager");
        this.databaseManager = databaseManager;
        this.listType = "favourite";
        this.manager = FDCouchbaseLiteManager.INSTANCE.getInstance();
        Select select = QueryBuilder.select(SelectResult.expression(Meta.id), SelectResult.property("wordId"), SelectResult.property("word_id"), SelectResult.property(U3.i.L), SelectResult.property("category"), SelectResult.property("word"), SelectResult.property("meaning"), SelectResult.property("folder"), SelectResult.property(ParseObject.KEY_CREATED_AT), SelectResult.property(C4Replicator.REPLICATOR_OPTION_CHANNELS), SelectResult.property("wordHtml"), SelectResult.property("isTranslator"));
        Intrinsics.checkNotNullExpressionValue(select, "select(...)");
        this.selectQuery = select;
    }

    public final Database getDatabase() {
        return this.manager.openDatabase();
    }

    public final boolean isDBExistsInDocumentCB() {
        Database database = getDatabase();
        return (database != null ? database.getDefaultCollection() : null) != null;
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

    /* JADX WARN: Code duplicated, block: B:4:0x000c A[PHI: r0
  0x000c: PHI (r0v15 java.lang.Integer) = (r0v1 java.lang.Integer), (r0v3 java.lang.Integer) binds: [B:3:0x000a, B:6:0x0021] A[DONT_GENERATE, DONT_INLINE]] */
    public final String deleteAndInsert(ListModel list) throws ParseException {
        int iIntValue;
        Collection defaultCollection;
        Intrinsics.checkNotNullParameter(list, "list");
        Integer category = list.getCategory();
        if (category != null) {
            iIntValue = category.intValue();
        } else {
            FDCategory fDCategory = new FDCategory();
            String word = list.getWord();
            Intrinsics.checkNotNull(word);
            category = fDCategory.findLanguage(word);
            if (category != null) {
                iIntValue = category.intValue();
            } else {
                iIntValue = 0;
            }
        }
        MutableDocument mutableDocument = new MutableDocument();
        String word2 = list.getWord();
        if (word2 == null) {
            word2 = "";
        }
        MutableDocument string = mutableDocument.setString("word", word2).setInt("category", iIntValue).setString("folder", list.getFolderId());
        String meaning = list.getMeaning();
        MutableDocument string2 = string.setString("meaning", meaning != null ? meaning : "").setDate(ParseObject.KEY_CREATED_AT, new Date()).setString("listType", this.listType).setString("list_type", this.listType);
        Boolean boolIsTranslator = list.isTranslator();
        MutableDocument mutableDocument2 = string2.setBoolean("isTranslator", boolIsTranslator != null ? boolIsTranslator.booleanValue() : false).setInt(U3.i.L, count(null));
        Intrinsics.checkNotNullExpressionValue(mutableDocument2, "setInt(...)");
        String word3 = list.getWord();
        Intrinsics.checkNotNull(word3);
        String strWordDocumentId = wordDocumentId(word3, iIntValue);
        if (strWordDocumentId != null) {
            delete(strWordDocumentId);
        }
        if (list.getWordId() != null) {
            Integer wordId = list.getWordId();
            Intrinsics.checkNotNull(wordId);
            mutableDocument2.setInt("wordId", wordId.intValue());
            Integer wordId2 = list.getWordId();
            Intrinsics.checkNotNull(wordId2);
            mutableDocument2.setInt("word_id", wordId2.intValue());
        }
        List<String> couchbaseChannels = getCouchbaseChannels();
        if (couchbaseChannels != null) {
            mutableDocument2.setArray(C4Replicator.REPLICATOR_OPTION_CHANNELS, (Array) new MutableArray(couchbaseChannels));
        }
        try {
            Database database = getDatabase();
            if (database != null && (defaultCollection = database.getDefaultCollection()) != null) {
                defaultCollection.save(mutableDocument2);
            }
            return mutableDocument2.getId();
        } catch (Exception e) {
            LoggerKt.getLogger().error("Error happen insert to favourite " + list.getWord() + ": " + e.getMessage(), new Object[0]);
            return null;
        }
    }

    public final String insert(ListModel list) throws ParseException {
        Database database;
        Collection defaultCollection;
        Intrinsics.checkNotNullParameter(list, "list");
        if (getDatabase() != null && (database = getDatabase()) != null && database.getDefaultCollection() != null) {
            MutableDocument mutableDocument = new MutableDocument();
            String word = list.getWord();
            if (word == null) {
                word = "";
            }
            MutableDocument string = mutableDocument.setString("word", word);
            Integer category = list.getCategory();
            MutableDocument string2 = string.setInt("category", category != null ? category.intValue() : 0).setString("folder", list.getFolderId());
            String meaning = list.getMeaning();
            MutableDocument string3 = string2.setString("meaning", meaning != null ? meaning : "").setDate(ParseObject.KEY_CREATED_AT, new Date()).setString("listType", this.listType).setString("list_type", this.listType);
            Boolean boolIsTranslator = list.isTranslator();
            MutableDocument mutableDocument2 = string3.setBoolean("isTranslator", boolIsTranslator != null ? boolIsTranslator.booleanValue() : false).setInt(U3.i.L, count(null));
            Intrinsics.checkNotNullExpressionValue(mutableDocument2, "setInt(...)");
            if (list.getWordId() != null) {
                Integer wordId = list.getWordId();
                Intrinsics.checkNotNull(wordId);
                mutableDocument2.setInt("wordId", wordId.intValue());
                Integer wordId2 = list.getWordId();
                Intrinsics.checkNotNull(wordId2);
                mutableDocument2.setInt("word_id", wordId2.intValue());
            }
            List<String> couchbaseChannels = getCouchbaseChannels();
            if (couchbaseChannels != null) {
                mutableDocument2.setArray(C4Replicator.REPLICATOR_OPTION_CHANNELS, (Array) new MutableArray(couchbaseChannels));
            }
            try {
                Database database2 = getDatabase();
                if (database2 != null && (defaultCollection = database2.getDefaultCollection()) != null) {
                    defaultCollection.save(mutableDocument2);
                }
                return mutableDocument2.getId();
            } catch (Exception e) {
                LoggerKt.getLogger().error("Error happen insert to favourite " + list.getWord() + ": " + e.getMessage(), new Object[0]);
            }
        }
        return null;
    }

    public final boolean insert(final ArrayList<ListModel> lists) {
        Intrinsics.checkNotNullParameter(lists, "lists");
        try {
            final List<String> couchbaseChannels = getCouchbaseChannels();
            FolderModel currentFolder = new FDFavouriteFolder().getCurrentFolder();
            final String documentId = currentFolder != null ? currentFolder.getDocumentId() : null;
            Database database = getDatabase();
            if (database == null) {
                return true;
            }
            database.inBatch(new UnitOfWork() { // from class: fast.dic.dict.helpers.database.couchbase.FDFavourite$$ExternalSyntheticLambda2
                @Override // com.couchbase.lite.UnitOfWork
                public final void run() throws CouchbaseLiteException {
                    FDFavourite.insert$lambda$1(lists, documentId, this, couchbaseChannels);
                }
            });
            return true;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }

    static final void insert$lambda$1(ArrayList arrayList, String str, FDFavourite fDFavourite, List list) throws CouchbaseLiteException {
        Collection defaultCollection;
        Iterator it = arrayList.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            Object next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            ListModel listModel = (ListModel) next;
            int rawValue = Category.English.getRawValue();
            if (FDLanguageWord.INSTANCE.isEnglish(listModel.getWord())) {
                rawValue = Category.English.getRawValue();
            } else if (FDLanguageWord.INSTANCE.isPersian(listModel.getWord())) {
                rawValue = Category.Persian.getRawValue();
            }
            if (listModel.getFolderId() == null) {
                listModel.setFolderId(str);
            }
            MutableDocument string = new MutableDocument().setString("word", listModel.getWord()).setInt("category", rawValue).setString("folder", listModel.getFolderId()).setString("meaning", listModel.getMeaning()).setDate(ParseObject.KEY_CREATED_AT, new Date()).setString("listType", fDFavourite.listType).setString("list_type", fDFavourite.listType);
            Boolean boolIsTranslator = listModel.isTranslator();
            MutableDocument mutableDocument = string.setBoolean("isTranslator", boolIsTranslator != null ? boolIsTranslator.booleanValue() : false);
            Intrinsics.checkNotNullExpressionValue(mutableDocument, "setBoolean(...)");
            if (listModel.getPosition() != null) {
                Integer position = listModel.getPosition();
                Intrinsics.checkNotNull(position);
                mutableDocument.setInt(U3.i.L, position.intValue());
            } else {
                mutableDocument.setInt(U3.i.L, fDFavourite.count(null));
            }
            if (listModel.getWordId() != null) {
                Integer wordId = listModel.getWordId();
                Intrinsics.checkNotNull(wordId);
                mutableDocument.setInt("wordId", wordId.intValue());
                Integer wordId2 = listModel.getWordId();
                Intrinsics.checkNotNull(wordId2);
                mutableDocument.setInt("word_id", wordId2.intValue());
            }
            if (list != null) {
                mutableDocument.setArray(C4Replicator.REPLICATOR_OPTION_CHANNELS, (Array) new MutableArray((List<?>) list));
            }
            Database database = fDFavourite.getDatabase();
            if (database != null && (defaultCollection = database.getDefaultCollection()) != null) {
                defaultCollection.save(mutableDocument);
            }
        }
    }

    public final boolean delete(String documentId) {
        Database database;
        Collection defaultCollection;
        Document document;
        Collection defaultCollection2;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        if (getDatabase() != null && (database = getDatabase()) != null && database.getDefaultCollection() != null) {
            try {
                Database database2 = getDatabase();
                if (database2 != null && (defaultCollection = database2.getDefaultCollection()) != null && (document = defaultCollection.getDocument(documentId)) != null) {
                    Database database3 = getDatabase();
                    if (database3 == null || (defaultCollection2 = database3.getDefaultCollection()) == null) {
                        return true;
                    }
                    defaultCollection2.delete(document);
                    return true;
                }
                return false;
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return false;
    }

    public final void deleteAll(String folderId) {
        Database database;
        Collection defaultCollection;
        Intrinsics.checkNotNullParameter(folderId, "folderId");
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return;
        }
        final Where where = QueryBuilder.select(SelectResult.expression(Meta.id)).from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("folder").equalTo(Expression.string(folderId))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        try {
            Database database2 = getDatabase();
            if (database2 != null) {
                database2.inBatch(new UnitOfWork() { // from class: fast.dic.dict.helpers.database.couchbase.FDFavourite$$ExternalSyntheticLambda1
                    @Override // com.couchbase.lite.UnitOfWork
                    public final void run() throws CouchbaseLiteException {
                        FDFavourite.deleteAll$lambda$0(where, this);
                    }
                });
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    static final void deleteAll$lambda$0(Where where, FDFavourite fDFavourite) throws CouchbaseLiteException {
        Document document;
        Database database;
        Collection defaultCollection;
        Collection defaultCollection2;
        for (Result result : where.execute().allResults()) {
            Database database2 = fDFavourite.getDatabase();
            if (database2 == null || (defaultCollection2 = database2.getDefaultCollection()) == null) {
                document = null;
            } else {
                String string = result.getString("id");
                if (string == null) {
                    string = "";
                }
                document = defaultCollection2.getDocument(string);
            }
            if (document != null && (database = fDFavourite.getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
                defaultCollection.delete(document);
            }
        }
    }

    public final int count(String folderId) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() != null && (database = getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
            Where where = QueryBuilder.select(SelectResult.all()).from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))));
            Intrinsics.checkNotNullExpressionValue(where, "where(...)");
            if (folderId != null && !Intrinsics.areEqual(folderId, "")) {
                where = QueryBuilder.select(SelectResult.all()).from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("folder").equalTo(Expression.string(folderId))));
                Intrinsics.checkNotNullExpressionValue(where, "where(...)");
            }
            try {
                ResultSet resultSetExecute = where.execute();
                Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
                List<Result> listAllResults = resultSetExecute.allResults();
                Intrinsics.checkNotNullExpressionValue(listAllResults, "allResults(...)");
                return listAllResults.size();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return 0;
    }

    public final String getFolderNameByWord(String word, int category) {
        Database database;
        Collection defaultCollection;
        if (word != null && getDatabase() != null && (database = getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
            Where where = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("category").equalTo(Expression.intValue(category))).and(Expression.property("word").equalTo(Expression.string(word))));
            Intrinsics.checkNotNullExpressionValue(where, "where(...)");
            try {
                Iterator<Result> it = where.execute().allResults().iterator();
                if (it.hasNext()) {
                    String string = it.next().getString("folder");
                    if (string == null) {
                        string = "";
                    }
                    System.out.println((Object) string);
                    Document document = defaultCollection.getDocument(string);
                    if (document != null) {
                        return document.getString("name");
                    }
                }
                return null;
            } catch (Exception e) {
                System.out.println((Object) ("Error running the query: " + e.getMessage()));
            }
        }
        return null;
    }

    public final String wordDocumentId(String word, int category) {
        Database database;
        Collection defaultCollection;
        if (word != null && getDatabase() != null && (database = getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
            Where where = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).and(Expression.property("category").equalTo(Expression.intValue(category))).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("word").equalTo(Expression.string(word))));
            Intrinsics.checkNotNullExpressionValue(where, "where(...)");
            try {
                Iterator<Result> it = where.execute().allResults().iterator();
                if (it.hasNext()) {
                    Result next = it.next();
                    String string = next.getString("id");
                    if (string == null) {
                        string = "";
                    }
                    System.out.print((Object) string);
                    return next.getString("id");
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return null;
    }

    public final void updateFolder(String documentId, String folderId) {
        Collection defaultCollection;
        Collection defaultCollection2;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(folderId, "folderId");
        try {
            Database database = getDatabase();
            Document document = (database == null || (defaultCollection2 = database.getDefaultCollection()) == null) ? null : defaultCollection2.getDocument(documentId);
            Intrinsics.checkNotNull(document);
            MutableDocument mutable = document.toMutable();
            Intrinsics.checkNotNullExpressionValue(mutable, "toMutable(...)");
            mutable.setString("folder", folderId);
            Database database2 = getDatabase();
            if (database2 == null || (defaultCollection = database2.getDefaultCollection()) == null) {
                return;
            }
            defaultCollection.save(mutable);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public final void updateAllFolders(final ArrayList<ListModel> lists) {
        Database database;
        Intrinsics.checkNotNullParameter(lists, "lists");
        if (getDatabase() == null || (database = getDatabase()) == null || database.getDefaultCollection() == null) {
            return;
        }
        try {
            Database database2 = getDatabase();
            if (database2 != null) {
                database2.inBatch(new UnitOfWork() { // from class: fast.dic.dict.helpers.database.couchbase.FDFavourite$$ExternalSyntheticLambda0
                    @Override // com.couchbase.lite.UnitOfWork
                    public final void run() throws CouchbaseLiteException {
                        FDFavourite.updateAllFolders$lambda$0(lists, this);
                    }
                });
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    static final void updateAllFolders$lambda$0(ArrayList arrayList, FDFavourite fDFavourite) throws CouchbaseLiteException {
        Document document;
        Collection defaultCollection;
        Collection defaultCollection2;
        Iterator it = arrayList.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            Object next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            ListModel listModel = (ListModel) next;
            Database database = fDFavourite.getDatabase();
            if (database == null || (defaultCollection2 = database.getDefaultCollection()) == null) {
                document = null;
            } else {
                String documentId = listModel.getDocumentId();
                if (documentId == null) {
                    documentId = "";
                }
                document = defaultCollection2.getDocument(documentId);
            }
            Intrinsics.checkNotNull(document);
            MutableDocument mutable = document.toMutable();
            Intrinsics.checkNotNullExpressionValue(mutable, "toMutable(...)");
            mutable.setString("folder", listModel.getFolderId());
            Database database2 = fDFavourite.getDatabase();
            if (database2 != null && (defaultCollection = database2.getDefaultCollection()) != null) {
                defaultCollection.save(mutable);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00d7 A[Catch: Exception -> 0x00f5, TryCatch #0 {Exception -> 0x00f5, blocks: (B:12:0x005b, B:13:0x0067, B:15:0x006d, B:17:0x00c9, B:19:0x00cf, B:23:0x00de, B:26:0x00ef, B:22:0x00d7), top: B:34:0x005b }] */
    public final ArrayList<ListModel> getAllWithoutFolder() {
        Collection defaultCollection;
        if (getDatabase() == null) {
            return new ArrayList<>();
        }
        Database database = getDatabase();
        if (database == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return new ArrayList<>();
        }
        Where where = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        ArrayList<ListModel> arrayList = new ArrayList<>();
        try {
            for (Result result : where.execute().allResults()) {
                ListModel listModel = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
                listModel.setWord(result.getString("word"));
                listModel.setDocumentId(result.getString("id"));
                listModel.setWordId(Integer.valueOf(result.getInt("wordId")));
                int i = result.getInt("word_id");
                if (listModel.getWordId() == null) {
                    listModel.setWordId(Integer.valueOf(i));
                } else {
                    Integer wordId = listModel.getWordId();
                    if (i > (wordId != null ? wordId.intValue() : 0)) {
                        listModel.setWordId(Integer.valueOf(i));
                    }
                }
                listModel.setFolderId(result.getString("folder"));
                if (listModel.getFolderId() == null) {
                    arrayList.add(listModel);
                }
            }
            return arrayList;
        } catch (Exception e) {
            System.out.println(e);
            return arrayList;
        }
    }

    public static /* synthetic */ ArrayList get$default(FDFavourite fDFavourite, Integer num, String str, int i, int i2, boolean z, WordSortEnum wordSortEnum, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i = 50;
        }
        return fDFavourite.get(num, str, i, (i3 & 8) != 0 ? 0 : i2, (i3 & 16) != 0 ? false : z, wordSortEnum);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00d8 A[Catch: Exception -> 0x01b0, TryCatch #0 {Exception -> 0x01b0, blocks: (B:15:0x0050, B:17:0x0056, B:20:0x005e, B:21:0x0062, B:23:0x0068, B:25:0x00ca, B:27:0x00d0, B:31:0x00df, B:33:0x012b, B:35:0x0138, B:37:0x0141, B:51:0x01a4, B:39:0x014d, B:41:0x015a, B:43:0x0160, B:44:0x0176, B:45:0x017a, B:47:0x0186, B:49:0x018c, B:50:0x01a1, B:34:0x0134, B:30:0x00d8, B:53:0x01aa), top: B:58:0x0050 }] */
    public final ArrayList<ListModel> get(Integer category, String folderId, int limit, int offset, boolean noLimit, WordSortEnum sort) {
        Query query;
        List<Result> listAllResults;
        boolean zValueOf;
        Intrinsics.checkNotNullParameter(folderId, "folderId");
        Intrinsics.checkNotNullParameter(sort, "sort");
        if (category != null && noLimit) {
            query = getQuery(category.intValue(), folderId, sort);
        } else if (category != null && !noLimit) {
            query = getQuery(category.intValue(), folderId, limit, offset, sort);
        } else if (category == null && !noLimit) {
            query = getQuery(folderId, limit, offset, sort);
        } else {
            query = getQuery(folderId, sort);
        }
        SQLiteDatabase database = this.databaseManager.getDatabase();
        ArrayList<ListModel> arrayList = new ArrayList<>();
        if (query != null) {
            try {
                ResultSet resultSetExecute = query.execute();
                if (resultSetExecute != null && (listAllResults = resultSetExecute.allResults()) != null) {
                    for (Result result : listAllResults) {
                        ListModel listModel = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
                        listModel.setWord(result.getString("word"));
                        listModel.setDocumentId(result.getString("id"));
                        listModel.setWordId(Integer.valueOf(result.getInt("wordId")));
                        int i = result.getInt("word_id");
                        if (listModel.getWordId() == null) {
                            listModel.setWordId(Integer.valueOf(i));
                        } else {
                            Integer wordId = listModel.getWordId();
                            if (i > (wordId != null ? wordId.intValue() : 0)) {
                                listModel.setWordId(Integer.valueOf(i));
                            }
                        }
                        listModel.setFolderId(result.getString("folder"));
                        FDDatabaseManager fDDatabaseManager = this.databaseManager;
                        FDLanguageWord.LanguageType languageTypeFind = FDLanguageWord.INSTANCE.find(listModel.getWord());
                        Integer wordId2 = listModel.getWordId();
                        Intrinsics.checkNotNull(wordId2);
                        listModel.setMeanings(fDDatabaseManager.getMeanings(languageTypeFind, wordId2.intValue(), database));
                        listModel.setPosition(Integer.valueOf(result.getInt(U3.i.L)));
                        listModel.setFavorites(true);
                        listModel.setMeaning(result.getString("meaning"));
                        listModel.setWordHtml(result.getString("meaning"));
                        if (result.contains("isTranslator")) {
                            zValueOf = Boolean.valueOf(result.getBoolean("isTranslator"));
                        } else {
                            zValueOf = false;
                        }
                        listModel.setTranslator(zValueOf);
                        if (listModel.getMeaning() == null || Intrinsics.areEqual(listModel.getMeaning(), "")) {
                            if (FDLanguageWord.INSTANCE.isEnglish(listModel.getWord())) {
                                List<String> meanings = listModel.getMeanings();
                                listModel.setMeaning(meanings != null ? CollectionsKt.joinToString$default(meanings, "، ", null, null, 0, null, null, 62, null) : null);
                            } else if (FDLanguageWord.INSTANCE.isPersian(listModel.getWord())) {
                                List<String> meanings2 = listModel.getMeanings();
                                listModel.setMeaning(meanings2 != null ? CollectionsKt.joinToString$default(meanings2, ", ", null, null, 0, null, null, 62, null) : null);
                            }
                        }
                        arrayList.add(listModel);
                    }
                    return arrayList;
                }
            } catch (Exception e) {
                System.out.println(e);
                return arrayList;
            }
        }
        return new ArrayList<>();
    }

    public static /* synthetic */ ArrayList getLatest$default(FDFavourite fDFavourite, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return fDFavourite.getLatest(i);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00ff A[Catch: Exception -> 0x01d2, TryCatch #0 {Exception -> 0x01d2, blocks: (B:12:0x007e, B:13:0x008a, B:15:0x0090, B:17:0x00f1, B:19:0x00f7, B:23:0x0106, B:25:0x0151, B:27:0x015e, B:29:0x0167, B:43:0x01cc, B:31:0x0173, B:33:0x0180, B:35:0x0186, B:36:0x019d, B:37:0x01a1, B:39:0x01ad, B:41:0x01b3, B:42:0x01c9, B:26:0x015a, B:22:0x00ff), top: B:51:0x007e }] */
    public final ArrayList<ListModel> getLatest(int limit) {
        Collection defaultCollection;
        boolean zValueOf;
        if (getDatabase() == null) {
            return new ArrayList<>();
        }
        Database database = getDatabase();
        if (database == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return new ArrayList<>();
        }
        Limit limit2 = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType)))).orderBy(Ordering.property(U3.i.L).descending()).limit(Expression.intValue(limit));
        Intrinsics.checkNotNullExpressionValue(limit2, "limit(...)");
        SQLiteDatabase database2 = this.databaseManager.getDatabase();
        ArrayList<ListModel> arrayList = new ArrayList<>();
        try {
            for (Result result : limit2.execute().allResults()) {
                ListModel listModel = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
                listModel.setWord(result.getString("word"));
                listModel.setDocumentId(result.getString("id"));
                listModel.setWordId(Integer.valueOf(result.getInt("wordId")));
                int i = result.getInt("word_id");
                if (listModel.getWordId() == null) {
                    listModel.setWordId(Integer.valueOf(i));
                } else {
                    Integer wordId = listModel.getWordId();
                    if (i > (wordId != null ? wordId.intValue() : 0)) {
                        listModel.setWordId(Integer.valueOf(i));
                    }
                }
                listModel.setFolderId(result.getString("folder"));
                FDDatabaseManager fDDatabaseManager = this.databaseManager;
                FDLanguageWord.LanguageType languageTypeFind = FDLanguageWord.INSTANCE.find(listModel.getWord());
                Integer wordId2 = listModel.getWordId();
                Intrinsics.checkNotNull(wordId2);
                listModel.setMeanings(fDDatabaseManager.getMeanings(languageTypeFind, wordId2.intValue(), database2));
                listModel.setPosition(Integer.valueOf(result.getInt(U3.i.L)));
                listModel.setWordHtml(result.getString("wordHtml"));
                listModel.setMeaning(result.getString("meaning"));
                if (result.contains("isTranslator")) {
                    zValueOf = Boolean.valueOf(result.getBoolean("isTranslator"));
                } else {
                    zValueOf = false;
                }
                listModel.setTranslator(zValueOf);
                if (listModel.getMeaning() == null || Intrinsics.areEqual(listModel.getMeaning(), "")) {
                    if (FDLanguageWord.INSTANCE.isEnglish(listModel.getWord())) {
                        List<String> meanings = listModel.getMeanings();
                        listModel.setMeaning(meanings != null ? CollectionsKt.joinToString$default(meanings, "، ", null, null, 0, null, null, 62, null) : null);
                    } else if (FDLanguageWord.INSTANCE.isPersian(listModel.getWord())) {
                        List<String> meanings2 = listModel.getMeanings();
                        listModel.setMeaning(meanings2 != null ? CollectionsKt.joinToString$default(meanings2, ", ", null, null, 0, null, null, 62, null) : null);
                    }
                }
                arrayList.add(listModel);
            }
            return arrayList;
        } catch (Exception e) {
            System.out.println(e);
            return arrayList;
        }
    }

    private final OrderBy applyOrder(Where where, WordSortEnum sort) {
        if (sort == WordSortEnum.OLDEST) {
            OrderBy orderBy = where.orderBy(Ordering.property(ParseObject.KEY_CREATED_AT).ascending());
            Intrinsics.checkNotNullExpressionValue(orderBy, "orderBy(...)");
            return orderBy;
        }
        if (sort == WordSortEnum.ALPHABET) {
            OrderBy orderBy2 = where.orderBy(Ordering.expression(Function.lower(Expression.property("word"))).ascending());
            Intrinsics.checkNotNullExpressionValue(orderBy2, "orderBy(...)");
            return orderBy2;
        }
        OrderBy orderBy3 = where.orderBy(Ordering.property(ParseObject.KEY_CREATED_AT).descending());
        Intrinsics.checkNotNullExpressionValue(orderBy3, "orderBy(...)");
        return orderBy3;
    }

    private final Query getQuery(int category, String folderId, WordSortEnum sort) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return null;
        }
        Where where = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("category").equalTo(Expression.intValue(category))).and(Expression.property("folder").equalTo(Expression.string(folderId))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        return applyOrder(where, sort);
    }

    static /* synthetic */ Query getQuery$default(FDFavourite fDFavourite, int i, String str, int i2, int i3, WordSortEnum wordSortEnum, int i4, Object obj) {
        if ((i4 & 8) != 0) {
            i3 = 0;
        }
        return fDFavourite.getQuery(i, str, i2, i3, wordSortEnum);
    }

    private final Query getQuery(int category, String folderId, int limit, int offset, WordSortEnum sort) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return null;
        }
        Where where = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("category").equalTo(Expression.intValue(category))).and(Expression.property("folder").equalTo(Expression.string(folderId))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        return applyOrder(where, sort).limit(Expression.intValue(limit), Expression.intValue(offset));
    }

    private final Query getQuery(String folderId, WordSortEnum sort) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return null;
        }
        Where where = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("folder").equalTo(Expression.string(folderId))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        return applyOrder(where, sort);
    }

    static /* synthetic */ Query getQuery$default(FDFavourite fDFavourite, String str, int i, int i2, WordSortEnum wordSortEnum, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        return fDFavourite.getQuery(str, i, i2, wordSortEnum);
    }

    private final Query getQuery(String folderId, int limit, int offset, WordSortEnum sort) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return null;
        }
        Where where = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("folder").equalTo(Expression.string(folderId))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        return applyOrder(where, sort).limit(Expression.intValue(limit), Expression.intValue(offset));
    }
}
