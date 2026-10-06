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
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseUser;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.domain.entity.WordSortEnum;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.Category;
import fast.dic.dict.utils.FDCategory;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.SQLResultExtKt;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.zetetic.database.sqlcipher.SQLiteDatabase;

/* JADX INFO: compiled from: FDHistory.kt */
/* JADX INFO: loaded from: classes11.dex */
@Singleton
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0015\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0014H\u0002J&\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u0016j\b\u0012\u0004\u0012\u00020\u0017`\u00182\u0006\u0010\u0019\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0017J\u001e\u0010\u001f\u001a\u00020\u00122\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00170\u0016j\b\u0012\u0004\u0012\u00020\u0017`\u0018J\u001f\u0010!\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0019\u001a\u00020\b2\b\u0010\"\u001a\u0004\u0018\u00010\u001b¢\u0006\u0002\u0010#J\u000e\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\bJ\u0006\u0010&\u001a\u00020\u001dJ\u0006\u0010'\u001a\u00020\u001dJ\u0017\u0010(\u001a\u00020\u001b2\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u001b¢\u0006\u0002\u0010)J\u000e\u0010*\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\bJ\u0014\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00170\u00142\u0006\u0010\u0019\u001a\u00020\bJ\u0018\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00142\b\b\u0002\u0010-\u001a\u00020\u001bJ\u0010\u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0014H\u0002JK\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00170\u00142\b\u0010\"\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u0010-\u001a\u00020\u001b2\b\b\u0002\u00100\u001a\u00020\u001b2\b\b\u0002\u00101\u001a\u00020\u00122\b\b\u0002\u00102\u001a\u00020\u00122\u0006\u00103\u001a\u000204¢\u0006\u0002\u00105J\u0018\u00106\u001a\u0002072\u0006\u00108\u001a\u0002092\u0006\u00103\u001a\u000204H\u0002J(\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010\u0019\u001a\u00020\b2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u00103\u001a\u000204H\u0002J8\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010-\u001a\u00020\u001b2\b\b\u0002\u00100\u001a\u00020\u001b2\u0006\u00102\u001a\u00020\u00122\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00102\u0006\u00103\u001a\u000204H\u0002J\u001a\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010\"\u001a\u00020\u001b2\u0006\u00103\u001a\u000204H\u0002J,\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010\"\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\u001b2\b\b\u0002\u00100\u001a\u00020\u001b2\u0006\u00103\u001a\u000204H\u0002J\u001e\u0010:\u001a\u0004\u0018\u00010;2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u00102\u0006\u00103\u001a\u000204H\u0002J$\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010-\u001a\u00020\u001b2\b\b\u0002\u00100\u001a\u00020\u001b2\u0006\u00103\u001a\u000204H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000Ê\u0001\u0002\b>¨\u0006="}, d2 = {"Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "", "databaseManager", "Lfast/dic/dict/database/FDDatabaseManager;", "<init>", "(Lfast/dic/dict/database/FDDatabaseManager;)V", "Ljavax/inject/Inject;", "listType", "", "manager", "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;", "database", "Lcom/couchbase/lite/Database;", "getDatabase", "()Lcom/couchbase/lite/Database;", "selectQuery", "Lcom/couchbase/lite/Select;", "isDBExistsInDocumentCB", "", "getCouchbaseChannels", "", "search", "Ljava/util/ArrayList;", "Lfast/dic/dict/models/database/ListModel;", "Lkotlin/collections/ArrayList;", "word", "limitNo", "", "deleteAndInsert", "", "list", "insert", FDCouchbaseLiteManager.DATABASE_FILE_NAME, "wordDocumentId", "category", "(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;", "delete", "documentId", "deleteAll", "deleteOldHistory", "count", "(Ljava/lang/Integer;)I", "has", "getWordModels", "getWords", "limit", "getDocumentIds", "get", "offset", "noLimit", "excludeTranslates", "sort", "Lfast/dic/dict/domain/entity/WordSortEnum;", "(Ljava/lang/Integer;IIZZLfast/dic/dict/domain/entity/WordSortEnum;)Ljava/util/List;", "applyOrder", "Lcom/couchbase/lite/OrderBy;", "where", "Lcom/couchbase/lite/Where;", "getQuery", "Lcom/couchbase/lite/Query;", "itemsQuery", "app", "Ljavax/inject/Singleton;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDHistory {
    private final FDDatabaseManager databaseManager;
    private final String listType;
    private final FDCouchbaseLiteManager manager;
    private final Select selectQuery;

    @Inject
    public FDHistory(FDDatabaseManager databaseManager) {
        Intrinsics.checkNotNullParameter(databaseManager, "databaseManager");
        this.databaseManager = databaseManager;
        this.listType = "history";
        this.manager = FDCouchbaseLiteManager.INSTANCE.getInstance();
        Select select = QueryBuilder.select(SelectResult.expression(Meta.id), SelectResult.property("wordId"), SelectResult.property("word_id"), SelectResult.property("category"), SelectResult.property("word"), SelectResult.property("meaning"), SelectResult.property(ParseObject.KEY_CREATED_AT), SelectResult.property(C4Replicator.REPLICATOR_OPTION_CHANNELS), SelectResult.property("isTranslator"));
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

    public final ArrayList<ListModel> search(String word, int limitNo) {
        Database database;
        Collection defaultCollection;
        Intrinsics.checkNotNullParameter(word, "word");
        ArrayList<ListModel> arrayList = new ArrayList<>();
        if (getDatabase() != null && (database = getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
            String str = word;
            if (!Intrinsics.areEqual(StringsKt.trim((CharSequence) str).toString(), "")) {
                Limit limit = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("category").equalTo(Expression.intValue(FDLanguageWord.INSTANCE.isEnglish(StringsKt.trim((CharSequence) str).toString()) ? 2 : 1))).and(Expression.property("word").like(Expression.string(StringsKt.trim((CharSequence) str).toString() + "%")))).orderBy(Ordering.property(ParseObject.KEY_CREATED_AT).descending()).limit(Expression.intValue(limitNo));
                Intrinsics.checkNotNullExpressionValue(limit, "limit(...)");
                final SQLiteDatabase database2 = this.databaseManager.getDatabase();
                try {
                    ResultSet resultSetExecute = limit.execute();
                    Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
                    Iterator<Result> it = resultSetExecute.iterator();
                    Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
                    while (it.hasNext()) {
                        Result next = it.next();
                        ListModel.Companion companion = ListModel.INSTANCE;
                        Intrinsics.checkNotNull(next);
                        arrayList.add(companion.convert(next, new Function2() { // from class: fast.dic.dict.helpers.database.couchbase.FDHistory$$ExternalSyntheticLambda0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return FDHistory.search$lambda$0(this.f$0, database2, (FDLanguageWord.LanguageType) obj, ((Integer) obj2).intValue());
                            }
                        }));
                    }
                } catch (Exception e) {
                    System.out.println(e);
                }
            }
        }
        return arrayList;
    }

    static final List search$lambda$0(FDHistory fDHistory, SQLiteDatabase sQLiteDatabase, FDLanguageWord.LanguageType type, int i) {
        Intrinsics.checkNotNullParameter(type, "type");
        return fDHistory.databaseManager.getMeanings(type, i, sQLiteDatabase);
    }

    public final void deleteAndInsert(final ListModel list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.getWord() == null) {
            return;
        }
        try {
            Database database = getDatabase();
            if (database != null) {
                database.inBatch(new UnitOfWork() { // from class: fast.dic.dict.helpers.database.couchbase.FDHistory$$ExternalSyntheticLambda4
                    @Override // com.couchbase.lite.UnitOfWork
                    public final void run() throws ParseException, CouchbaseLiteException {
                        FDHistory.deleteAndInsert$lambda$0(this.f$0, list);
                    }
                });
            }
        } catch (Exception e) {
            LoggerKt.getLogger().error("Error happen to deleteAndInsert " + list.getWord() + ": " + e.getMessage(), new Object[0]);
        }
    }

    static final void deleteAndInsert$lambda$0(FDHistory fDHistory, ListModel listModel) throws ParseException, CouchbaseLiteException {
        Collection defaultCollection;
        String word = listModel.getWord();
        Intrinsics.checkNotNull(word);
        String strWordDocumentId = fDHistory.wordDocumentId(word, listModel.getCategory());
        if (strWordDocumentId != null) {
            fDHistory.delete(strWordDocumentId);
        }
        MutableDocument string = new MutableDocument().setString("word", listModel.getWord());
        Integer category = listModel.getCategory();
        if (category == null) {
            FDCategory fDCategory = new FDCategory();
            String word2 = listModel.getWord();
            Intrinsics.checkNotNull(word2);
            category = fDCategory.findLanguage(word2);
            Intrinsics.checkNotNull(category);
        }
        MutableDocument string2 = string.setInt("category", category.intValue()).setString("meaning", listModel.getMeaning()).setDate(ParseObject.KEY_CREATED_AT, new Date()).setString("listType", fDHistory.listType).setString("list_type", fDHistory.listType);
        Boolean boolIsTranslator = listModel.isTranslator();
        MutableDocument mutableDocument = string2.setBoolean("isTranslator", boolIsTranslator != null ? boolIsTranslator.booleanValue() : false);
        Intrinsics.checkNotNullExpressionValue(mutableDocument, "setBoolean(...)");
        if (listModel.getWordId() != null) {
            Integer wordId = listModel.getWordId();
            Intrinsics.checkNotNull(wordId);
            mutableDocument.setInt("wordId", wordId.intValue());
            Integer wordId2 = listModel.getWordId();
            Intrinsics.checkNotNull(wordId2);
            mutableDocument.setInt("word_id", wordId2.intValue());
        }
        List<String> couchbaseChannels = fDHistory.getCouchbaseChannels();
        if (couchbaseChannels != null) {
            mutableDocument.setArray(C4Replicator.REPLICATOR_OPTION_CHANNELS, (Array) new MutableArray(couchbaseChannels));
        }
        Database database = fDHistory.getDatabase();
        if (database != null && (defaultCollection = database.getDefaultCollection()) != null) {
            defaultCollection.save(mutableDocument);
        }
        fDHistory.deleteOldHistory();
    }

    public final boolean insert(final ArrayList<ListModel> lists) throws ParseException {
        Intrinsics.checkNotNullParameter(lists, "lists");
        final List<String> couchbaseChannels = getCouchbaseChannels();
        try {
            Database database = getDatabase();
            if (database == null) {
                return true;
            }
            database.inBatch(new UnitOfWork() { // from class: fast.dic.dict.helpers.database.couchbase.FDHistory$$ExternalSyntheticLambda3
                @Override // com.couchbase.lite.UnitOfWork
                public final void run() throws CouchbaseLiteException {
                    FDHistory.insert$lambda$0(lists, this, couchbaseChannels);
                }
            });
            return true;
        } catch (Exception e) {
            LoggerKt.getLogger().error("Unknown error happen insert to history", e);
            return false;
        }
    }

    static final void insert$lambda$0(ArrayList arrayList, FDHistory fDHistory, List list) throws CouchbaseLiteException {
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
            MutableDocument string = new MutableDocument().setString("word", listModel.getWord()).setInt("category", rawValue).setString("meaning", listModel.getMeaning()).setDate(ParseObject.KEY_CREATED_AT, new Date()).setString("listType", fDHistory.listType).setString("list_type", fDHistory.listType);
            Boolean boolIsTranslator = listModel.isTranslator();
            MutableDocument mutableDocument = string.setBoolean("isTranslator", boolIsTranslator != null ? boolIsTranslator.booleanValue() : false);
            Intrinsics.checkNotNullExpressionValue(mutableDocument, "setBoolean(...)");
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
            Database database = fDHistory.getDatabase();
            if (database != null && (defaultCollection = database.getDefaultCollection()) != null) {
                defaultCollection.save(mutableDocument);
            }
        }
    }

    public final String wordDocumentId(String word, Integer category) {
        Database database;
        Collection defaultCollection;
        Intrinsics.checkNotNullParameter(word, "word");
        if (getDatabase() != null && (database = getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
            Expression expressionAnd = Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("word").equalTo(Expression.string(word)));
            Intrinsics.checkNotNullExpressionValue(expressionAnd, "and(...)");
            if (category != null) {
                expressionAnd = expressionAnd.and(Expression.property("category").equalTo(Expression.intValue(category.intValue())));
                Intrinsics.checkNotNullExpressionValue(expressionAnd, "and(...)");
            }
            Where where = this.selectQuery.from(DataSource.collection(defaultCollection)).where(expressionAnd);
            Intrinsics.checkNotNullExpressionValue(where, "where(...)");
            try {
                ResultSet resultSetExecute = where.execute();
                Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
                Iterator<Result> it = resultSetExecute.iterator();
                Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
                if (it.hasNext()) {
                    return it.next().getString("id");
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return null;
    }

    public final void delete(String documentId) {
        Database database;
        Collection defaultCollection;
        Collection defaultCollection2;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        try {
            Database database2 = getDatabase();
            Document document = (database2 == null || (defaultCollection2 = database2.getDefaultCollection()) == null) ? null : defaultCollection2.getDocument(documentId);
            if (document == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
                return;
            }
            defaultCollection.delete(document);
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public final void deleteAll() {
        Database database;
        Collection defaultCollection;
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return;
        }
        final Where where = QueryBuilder.select(SelectResult.expression(Meta.id)).from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        try {
            Database database2 = getDatabase();
            if (database2 != null) {
                database2.inBatch(new UnitOfWork() { // from class: fast.dic.dict.helpers.database.couchbase.FDHistory$$ExternalSyntheticLambda2
                    @Override // com.couchbase.lite.UnitOfWork
                    public final void run() throws CouchbaseLiteException {
                        FDHistory.deleteAll$lambda$0(where, this);
                    }
                });
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    static final void deleteAll$lambda$0(Where where, FDHistory fDHistory) throws CouchbaseLiteException {
        Document document;
        Database database;
        Collection defaultCollection;
        Collection defaultCollection2;
        ResultSet resultSetExecute = where.execute();
        Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
        Iterator<Result> it = resultSetExecute.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            Result next = it.next();
            Database database2 = fDHistory.getDatabase();
            if (database2 == null || (defaultCollection2 = database2.getDefaultCollection()) == null) {
                document = null;
            } else {
                String string = next.getString("id");
                if (string == null) {
                    string = "";
                }
                document = defaultCollection2.getDocument(string);
            }
            if (document != null && (database = fDHistory.getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
                defaultCollection.delete(document);
            }
        }
    }

    public final void deleteOldHistory() {
        final List<String> documentIds = getDocumentIds();
        if (documentIds.size() < 100) {
            return;
        }
        try {
            Database database = getDatabase();
            if (database != null) {
                database.inBatch(new UnitOfWork() { // from class: fast.dic.dict.helpers.database.couchbase.FDHistory$$ExternalSyntheticLambda5
                    @Override // com.couchbase.lite.UnitOfWork
                    public final void run() throws CouchbaseLiteException {
                        FDHistory.deleteOldHistory$lambda$0(documentIds, this);
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    static final void deleteOldHistory$lambda$0(List list, FDHistory fDHistory) throws CouchbaseLiteException {
        Document document;
        Database database;
        Collection defaultCollection;
        Collection defaultCollection2;
        for (String str : CollectionsKt.takeLast(list, list.size() - 100)) {
            Database database2 = fDHistory.getDatabase();
            if (database2 == null || (defaultCollection2 = database2.getDefaultCollection()) == null) {
                document = null;
            } else {
                if (str == null) {
                    str = "";
                }
                document = defaultCollection2.getDocument(str);
            }
            if (document != null && (database = fDHistory.getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
                defaultCollection.delete(document);
            }
        }
    }

    public static /* synthetic */ int count$default(FDHistory fDHistory, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            num = null;
        }
        return fDHistory.count(num);
    }

    public final int count(Integer category) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() != null && (database = getDatabase()) != null && (defaultCollection = database.getDefaultCollection()) != null) {
            Where where = QueryBuilder.select(SelectResult.expression(Meta.id)).from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))));
            Intrinsics.checkNotNullExpressionValue(where, "where(...)");
            if (category != null) {
                where = QueryBuilder.select(SelectResult.expression(Meta.id)).from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("category").equalTo(Expression.intValue(category.intValue()))));
                Intrinsics.checkNotNullExpressionValue(where, "where(...)");
            }
            try {
                ResultSet resultSetExecute = where.execute();
                Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
                int iCount = CollectionsKt.count(resultSetExecute);
                LoggerKt.getLogger().debug("Get (" + iCount + ") count of history", new Object[0]);
                return iCount;
            } catch (Exception e) {
                LoggerKt.getLogger().error("Error happen get count of history " + e.getMessage() + ". error = " + e, new Object[0]);
            }
        }
        return 0;
    }

    public final boolean has(String word) {
        Intrinsics.checkNotNullParameter(word, "word");
        Query query$default = getQuery$default(this, word, this.selectQuery, (WordSortEnum) null, 4, (Object) null);
        try {
            Intrinsics.checkNotNull(query$default);
            ResultSet resultSetExecute = query$default.execute();
            Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
            ResultSet resultSet = resultSetExecute;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(resultSet, 10));
            Iterator<Result> it = resultSet.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getString("word"));
            }
            return arrayList.size() == 1;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        }
    }

    public final List<ListModel> getWordModels(String word) {
        Intrinsics.checkNotNullParameter(word, "word");
        Query query$default = getQuery$default(this, word, this.selectQuery, (WordSortEnum) null, 4, (Object) null);
        final SQLiteDatabase database = this.databaseManager.getDatabase();
        try {
            Intrinsics.checkNotNull(query$default);
            ResultSet resultSetExecute = query$default.execute();
            Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
            ResultSet resultSet = resultSetExecute;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(resultSet, 10));
            for (Result result : resultSet) {
                ListModel.Companion companion = ListModel.INSTANCE;
                Intrinsics.checkNotNull(result);
                arrayList.add(companion.convert(result, new Function2() { // from class: fast.dic.dict.helpers.database.couchbase.FDHistory$$ExternalSyntheticLambda6
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return FDHistory.getWordModels$lambda$0$0(this.f$0, database, (FDLanguageWord.LanguageType) obj, ((Integer) obj2).intValue());
                    }
                }));
            }
            return arrayList;
        } catch (Exception e) {
            System.out.println(e);
            return CollectionsKt.emptyList();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWordModels$lambda$0$0(FDHistory fDHistory, SQLiteDatabase sQLiteDatabase, FDLanguageWord.LanguageType type, int i) {
        Intrinsics.checkNotNullParameter(type, "type");
        return fDHistory.databaseManager.getMeanings(type, i, sQLiteDatabase);
    }

    public static /* synthetic */ List getWords$default(FDHistory fDHistory, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 50;
        }
        return fDHistory.getWords(i);
    }

    public final List<String> getWords(int limit) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Select select = QueryBuilder.select(SelectResult.property("word"));
        Intrinsics.checkNotNullExpressionValue(select, "select(...)");
        Query query = getQuery(limit, 0, true, select, WordSortEnum.NEWEST);
        try {
            Intrinsics.checkNotNull(query);
            ResultSet resultSetExecute = query.execute();
            Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
            ResultSet resultSet = resultSetExecute;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(resultSet, 10));
            Iterator<Result> it = resultSet.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getString("word"));
            }
            ArrayList arrayList2 = arrayList;
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            LoggerKt.getLogger().debug("~~~> Finish getting words from History at " + jCurrentTimeMillis2 + ". diff = " + (jCurrentTimeMillis2 - jCurrentTimeMillis), new Object[0]);
            return arrayList2;
        } catch (Exception e) {
            System.out.println(e);
            return new ArrayList();
        }
    }

    private final List<String> getDocumentIds() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        Select select = QueryBuilder.select(SelectResult.expression(Meta.id));
        Intrinsics.checkNotNullExpressionValue(select, "select(...)");
        Query query = getQuery(select, WordSortEnum.NEWEST);
        try {
            Intrinsics.checkNotNull(query);
            ResultSet resultSetExecute = query.execute();
            Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
            ResultSet resultSet = resultSetExecute;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(resultSet, 10));
            Iterator<Result> it = resultSet.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getString("id"));
            }
            ArrayList arrayList2 = arrayList;
            LoggerKt.getLogger().debug("~~~> Finish getting documentIds from History takes " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
            return arrayList2;
        } catch (Exception e) {
            System.out.println(e);
            return new ArrayList();
        }
    }

    public static /* synthetic */ List get$default(FDHistory fDHistory, Integer num, int i, int i2, boolean z, boolean z2, WordSortEnum wordSortEnum, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 50;
        }
        return fDHistory.get(num, i, (i3 & 4) != 0 ? 0 : i2, (i3 & 8) != 0 ? false : z, (i3 & 16) != 0 ? false : z2, wordSortEnum);
    }

    public final List<ListModel> get(Integer category, int limit, int offset, boolean noLimit, boolean excludeTranslates, WordSortEnum sort) {
        Query query;
        Intrinsics.checkNotNullParameter(sort, "sort");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (excludeTranslates) {
            query = getQuery$default(this, limit, offset, true, null, sort, 8, null);
        } else if (category != null && noLimit) {
            query = getQuery(category.intValue(), sort);
        } else if (category != null && !noLimit) {
            query = getQuery(category.intValue(), limit, offset, sort);
        } else if (category == null && !noLimit) {
            query = getQuery(limit, offset, sort);
        } else {
            query = getQuery(this.selectQuery, sort);
        }
        final SQLiteDatabase database = this.databaseManager.getDatabase();
        ArrayList arrayList = new ArrayList();
        try {
            Intrinsics.checkNotNull(query);
            ResultSet resultSetExecute = query.execute();
            Intrinsics.checkNotNullExpressionValue(resultSetExecute, "execute(...)");
            Iterator<Result> it = resultSetExecute.iterator();
            Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
            while (it.hasNext()) {
                Result next = it.next();
                Intrinsics.checkNotNull(next);
                arrayList.add(SQLResultExtKt.toListModel(next, new Function1() { // from class: fast.dic.dict.helpers.database.couchbase.FDHistory$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return FDHistory.get$lambda$0(this.f$0, database, (ListModel) obj);
                    }
                }));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        LoggerKt.getLogger().debug("~~~> Finish getting History at " + jCurrentTimeMillis2 + ". diff = " + (jCurrentTimeMillis2 - jCurrentTimeMillis), new Object[0]);
        return arrayList;
    }

    static final List get$lambda$0(FDHistory fDHistory, SQLiteDatabase sQLiteDatabase, ListModel it) {
        Intrinsics.checkNotNullParameter(it, "it");
        FDDatabaseManager fDDatabaseManager = fDHistory.databaseManager;
        FDLanguageWord.LanguageType languageTypeFind = FDLanguageWord.INSTANCE.find(it.getWord());
        Integer wordId = it.getWordId();
        Intrinsics.checkNotNull(wordId);
        return fDDatabaseManager.getMeanings(languageTypeFind, wordId.intValue(), sQLiteDatabase);
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

    static /* synthetic */ Query getQuery$default(FDHistory fDHistory, String str, Select select, WordSortEnum wordSortEnum, int i, Object obj) {
        if ((i & 2) != 0) {
            select = null;
        }
        if ((i & 4) != 0) {
            wordSortEnum = WordSortEnum.NEWEST;
        }
        return fDHistory.getQuery(str, select, wordSortEnum);
    }

    private final Query getQuery(String word, Select itemsQuery, WordSortEnum sort) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return null;
        }
        Database database2 = getDatabase();
        if ((database2 != null ? database2.getDefaultCollection() : null) == null) {
            return null;
        }
        if (itemsQuery == null) {
            itemsQuery = this.selectQuery;
        }
        Where where = itemsQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("word").equalTo(Expression.string(word))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        return applyOrder(where, sort);
    }

    static /* synthetic */ Query getQuery$default(FDHistory fDHistory, int i, int i2, boolean z, Select select, WordSortEnum wordSortEnum, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        int i4 = i2;
        if ((i3 & 8) != 0) {
            select = null;
        }
        return fDHistory.getQuery(i, i4, z, select, wordSortEnum);
    }

    private final Query getQuery(int limit, int offset, boolean excludeTranslates, Select itemsQuery, WordSortEnum sort) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return null;
        }
        if (itemsQuery == null) {
            itemsQuery = this.selectQuery;
        }
        Where where = itemsQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("isTranslator").equalTo(Expression.booleanValue(!excludeTranslates))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        return applyOrder(where, sort).limit(Expression.intValue(limit), Expression.intValue(offset));
    }

    private final Query getQuery(int category, WordSortEnum sort) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return null;
        }
        Where where = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("category").equalTo(Expression.intValue(category))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        return applyOrder(where, sort);
    }

    static /* synthetic */ Query getQuery$default(FDHistory fDHistory, int i, int i2, int i3, WordSortEnum wordSortEnum, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i3 = 0;
        }
        return fDHistory.getQuery(i, i2, i3, wordSortEnum);
    }

    private final Query getQuery(int category, int limit, int offset, WordSortEnum sort) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return null;
        }
        Where where = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))).and(Expression.property("category").equalTo(Expression.intValue(category))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        return applyOrder(where, sort).limit(Expression.intValue(limit), Expression.intValue(offset));
    }

    static /* synthetic */ Query getQuery$default(FDHistory fDHistory, Select select, WordSortEnum wordSortEnum, int i, Object obj) {
        if ((i & 1) != 0) {
            select = null;
        }
        return fDHistory.getQuery(select, wordSortEnum);
    }

    private final Query getQuery(Select itemsQuery, WordSortEnum sort) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return null;
        }
        if (itemsQuery == null) {
            itemsQuery = this.selectQuery;
        }
        Where where = itemsQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        return applyOrder(where, sort);
    }

    static /* synthetic */ Query getQuery$default(FDHistory fDHistory, int i, int i2, WordSortEnum wordSortEnum, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 0;
        }
        return fDHistory.getQuery(i, i2, wordSortEnum);
    }

    private final Query getQuery(int limit, int offset, WordSortEnum sort) {
        Database database;
        Collection defaultCollection;
        if (getDatabase() == null || (database = getDatabase()) == null || (defaultCollection = database.getDefaultCollection()) == null) {
            return null;
        }
        Where where = this.selectQuery.from(DataSource.collection(defaultCollection)).where(Expression.property("listType").equalTo(Expression.string(this.listType)).or(Expression.property("list_type").equalTo(Expression.string(this.listType))));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        return applyOrder(where, sort).limit(Expression.intValue(limit), Expression.intValue(offset));
    }
}
