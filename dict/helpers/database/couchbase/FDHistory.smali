.class public final Lfast/dic/dict/helpers/database/couchbase/FDHistory;
.super Ljava/lang/Object;
.source "FDHistory.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDHistory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDHistory.kt\nfast/dic/dict/helpers/database/couchbase/FDHistory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,554:1\n1#2:555\n1739#3:556\n1814#3,3:557\n1739#3:560\n1814#3,3:561\n1739#3:564\n1814#3,3:565\n1739#3:568\n1814#3,3:569\n*S KotlinDebug\n*F\n+ 1 FDHistory.kt\nfast/dic/dict/helpers/database/couchbase/FDHistory\n*L\n322#1:556\n322#1:557,3\n339#1:560\n339#1:561,3\n356#1:564\n356#1:565,3\n376#1:568\n376#1:569,3\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0011\u001a\u00020\u0012J\u0010\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0014H\u0002J&\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00170\u0016j\u0008\u0012\u0004\u0012\u00020\u0017`\u00182\u0006\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0017J\u001e\u0010\u001f\u001a\u00020\u00122\u0016\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u00170\u0016j\u0008\u0012\u0004\u0012\u00020\u0017`\u0018J\u001f\u0010!\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0019\u001a\u00020\u00082\u0008\u0010\"\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0002\u0010#J\u000e\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u0008J\u0006\u0010&\u001a\u00020\u001dJ\u0006\u0010\'\u001a\u00020\u001dJ\u0017\u0010(\u001a\u00020\u001b2\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0002\u0010)J\u000e\u0010*\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u0008J\u0014\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00142\u0006\u0010\u0019\u001a\u00020\u0008J\u0018\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u00142\u0008\u0008\u0002\u0010-\u001a\u00020\u001bJ\u0010\u0010.\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0014H\u0002JK\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u00142\u0008\u0010\"\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0002\u0010-\u001a\u00020\u001b2\u0008\u0008\u0002\u00100\u001a\u00020\u001b2\u0008\u0008\u0002\u00101\u001a\u00020\u00122\u0008\u0008\u0002\u00102\u001a\u00020\u00122\u0006\u00103\u001a\u000204\u00a2\u0006\u0002\u00105J\u0018\u00106\u001a\u0002072\u0006\u00108\u001a\u0002092\u0006\u00103\u001a\u000204H\u0002J(\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010\u0019\u001a\u00020\u00082\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u00103\u001a\u000204H\u0002J8\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010-\u001a\u00020\u001b2\u0008\u0008\u0002\u00100\u001a\u00020\u001b2\u0006\u00102\u001a\u00020\u00122\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u00102\u0006\u00103\u001a\u000204H\u0002J\u001a\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010\"\u001a\u00020\u001b2\u0006\u00103\u001a\u000204H\u0002J,\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010\"\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020\u001b2\u0008\u0008\u0002\u00100\u001a\u00020\u001b2\u0006\u00103\u001a\u000204H\u0002J\u001e\u0010:\u001a\u0004\u0018\u00010;2\n\u0008\u0002\u0010<\u001a\u0004\u0018\u00010\u00102\u0006\u00103\u001a\u000204H\u0002J$\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010-\u001a\u00020\u001b2\u0008\u0008\u0002\u00100\u001a\u00020\u001b2\u0006\u00103\u001a\u000204H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008>\u00a8\u0006="
    }
    d2 = {
        "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
        "",
        "databaseManager",
        "Lfast/dic/dict/database/FDDatabaseManager;",
        "<init>",
        "(Lfast/dic/dict/database/FDDatabaseManager;)V",
        "Ljavax/inject/Inject;",
        "listType",
        "",
        "manager",
        "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;",
        "database",
        "Lcom/couchbase/lite/Database;",
        "getDatabase",
        "()Lcom/couchbase/lite/Database;",
        "selectQuery",
        "Lcom/couchbase/lite/Select;",
        "isDBExistsInDocumentCB",
        "",
        "getCouchbaseChannels",
        "",
        "search",
        "Ljava/util/ArrayList;",
        "Lfast/dic/dict/models/database/ListModel;",
        "Lkotlin/collections/ArrayList;",
        "word",
        "limitNo",
        "",
        "deleteAndInsert",
        "",
        "list",
        "insert",
        "lists",
        "wordDocumentId",
        "category",
        "(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;",
        "delete",
        "documentId",
        "deleteAll",
        "deleteOldHistory",
        "count",
        "(Ljava/lang/Integer;)I",
        "has",
        "getWordModels",
        "getWords",
        "limit",
        "getDocumentIds",
        "get",
        "offset",
        "noLimit",
        "excludeTranslates",
        "sort",
        "Lfast/dic/dict/domain/entity/WordSortEnum;",
        "(Ljava/lang/Integer;IIZZLfast/dic/dict/domain/entity/WordSortEnum;)Ljava/util/List;",
        "applyOrder",
        "Lcom/couchbase/lite/OrderBy;",
        "where",
        "Lcom/couchbase/lite/Where;",
        "getQuery",
        "Lcom/couchbase/lite/Query;",
        "itemsQuery",
        "app",
        "Ljavax/inject/Singleton;"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

.field private final listType:Ljava/lang/String;

.field private final manager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

.field private final selectQuery:Lcom/couchbase/lite/Select;


# direct methods
.method public static synthetic $r8$lambda$wK0uPjmytOEqRPzMHw9bU_nim2g(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getWordModels$lambda$0$0(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lfast/dic/dict/database/FDDatabaseManager;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "databaseManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    .line 37
    const-string p1, "history"

    iput-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    .line 38
    sget-object p1, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->Companion:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;

    invoke-virtual {p1}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;->getInstance()Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->manager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    const/16 p1, 0x9

    .line 45
    new-array p1, p1, [Lcom/couchbase/lite/SelectResult;

    sget-object v0, Lcom/couchbase/lite/Meta;->id:Lcom/couchbase/lite/MetaExpression;

    check-cast v0, Lcom/couchbase/lite/Expression;

    invoke-static {v0}, Lcom/couchbase/lite/SelectResult;->expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 46
    const-string/jumbo v0, "wordId"

    invoke-static {v0}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 47
    const-string/jumbo v0, "word_id"

    invoke-static {v0}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 48
    const-string v0, "category"

    invoke-static {v0}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p1, v1

    .line 49
    const-string/jumbo v0, "word"

    invoke-static {v0}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p1, v1

    .line 50
    const-string v0, "meaning"

    invoke-static {v0}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, p1, v1

    .line 51
    const-string v0, "createdAt"

    invoke-static {v0}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, p1, v1

    .line 52
    const-string v0, "channels"

    invoke-static {v0}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, p1, v1

    .line 53
    const-string v0, "isTranslator"

    invoke-static {v0}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, p1, v1

    .line 44
    invoke-static {p1}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object p1

    const-string v0, "select(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->selectQuery:Lcom/couchbase/lite/Select;

    return-void
.end method

.method private final applyOrder(Lcom/couchbase/lite/Where;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/OrderBy;
    .locals 4

    .line 438
    sget-object p0, Lfast/dic/dict/domain/entity/WordSortEnum;->OLDEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    const-string v0, "createdAt"

    const-string v1, "orderBy(...)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, p0, :cond_0

    .line 439
    new-array p0, v3, [Lcom/couchbase/lite/Ordering;

    invoke-static {v0}, Lcom/couchbase/lite/Ordering;->property(Ljava/lang/String;)Lcom/couchbase/lite/Ordering$SortOrder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/couchbase/lite/Ordering$SortOrder;->ascending()Lcom/couchbase/lite/Ordering;

    move-result-object p2

    aput-object p2, p0, v2

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Where;->orderBy([Lcom/couchbase/lite/Ordering;)Lcom/couchbase/lite/OrderBy;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 442
    :cond_0
    sget-object p0, Lfast/dic/dict/domain/entity/WordSortEnum;->ALPHABET:Lfast/dic/dict/domain/entity/WordSortEnum;

    if-ne p2, p0, :cond_1

    .line 444
    new-array p0, v3, [Lcom/couchbase/lite/Ordering;

    .line 446
    const-string/jumbo p2, "word"

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object p2

    check-cast p2, Lcom/couchbase/lite/Expression;

    .line 445
    invoke-static {p2}, Lcom/couchbase/lite/Function;->lower(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    .line 444
    invoke-static {p2}, Lcom/couchbase/lite/Ordering;->expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Ordering$SortOrder;

    move-result-object p2

    .line 448
    invoke-virtual {p2}, Lcom/couchbase/lite/Ordering$SortOrder;->ascending()Lcom/couchbase/lite/Ordering;

    move-result-object p2

    aput-object p2, p0, v2

    .line 443
    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Where;->orderBy([Lcom/couchbase/lite/Ordering;)Lcom/couchbase/lite/OrderBy;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 451
    :cond_1
    new-array p0, v3, [Lcom/couchbase/lite/Ordering;

    invoke-static {v0}, Lcom/couchbase/lite/Ordering;->property(Ljava/lang/String;)Lcom/couchbase/lite/Ordering$SortOrder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/couchbase/lite/Ordering$SortOrder;->descending()Lcom/couchbase/lite/Ordering;

    move-result-object p2

    aput-object p2, p0, v2

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/Where;->orderBy([Lcom/couchbase/lite/Ordering;)Lcom/couchbase/lite/OrderBy;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic count$default(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Ljava/lang/Integer;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 281
    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->count(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method static final deleteAll$lambda$0(Lcom/couchbase/lite/Where;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V
    .locals 3

    .line 248
    invoke-virtual {p0}, Lcom/couchbase/lite/Where;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    const-string v0, "execute(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "iterator(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Result;

    .line 250
    invoke-virtual {p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v1, v0}, Lcom/couchbase/lite/Collection;->getDocument(Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/couchbase/lite/Collection;->delete(Lcom/couchbase/lite/Document;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static final deleteAndInsert$lambda$0(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/models/database/ListModel;)V
    .locals 3

    .line 116
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getCategory()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->wordDocumentId(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->delete(Ljava/lang/String;)V

    .line 121
    :cond_0
    new-instance v0, Lcom/couchbase/lite/MutableDocument;

    invoke-direct {v0}, Lcom/couchbase/lite/MutableDocument;-><init>()V

    .line 122
    const-string/jumbo v1, "word"

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/MutableDocument;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getCategory()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lfast/dic/dict/utils/FDCategory;

    invoke-direct {v1}, Lfast/dic/dict/utils/FDCategory;-><init>()V

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lfast/dic/dict/utils/FDCategory;->findLanguage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Lcom/couchbase/lite/MutableDocument;->setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDocument;

    move-result-object v0

    .line 124
    const-string v1, "meaning"

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/MutableDocument;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "createdAt"

    invoke-virtual {v0, v2, v1}, Lcom/couchbase/lite/MutableDocument;->setDate(Ljava/lang/String;Ljava/util/Date;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v0

    .line 126
    const-string v1, "listType"

    iget-object v2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/MutableDocument;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v0

    .line 127
    const-string v1, "list_type"

    iget-object v2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/couchbase/lite/MutableDocument;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v0

    .line 128
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->isTranslator()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v2, "isTranslator"

    invoke-virtual {v0, v2, v1}, Lcom/couchbase/lite/MutableDocument;->setBoolean(Ljava/lang/String;Z)Lcom/couchbase/lite/MutableDocument;

    move-result-object v0

    const-string v1, "setBoolean(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 131
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "wordId"

    invoke-virtual {v0, v2, v1}, Lcom/couchbase/lite/MutableDocument;->setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDocument;

    .line 132
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string/jumbo v1, "word_id"

    invoke-virtual {v0, v1, p1}, Lcom/couchbase/lite/MutableDocument;->setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDocument;

    .line 135
    :cond_3
    invoke-direct {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getCouchbaseChannels()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 136
    new-instance v1, Lcom/couchbase/lite/MutableArray;

    invoke-direct {v1, p1}, Lcom/couchbase/lite/MutableArray;-><init>(Ljava/util/List;)V

    check-cast v1, Lcom/couchbase/lite/Array;

    const-string p1, "channels"

    invoke-virtual {v0, p1, v1}, Lcom/couchbase/lite/MutableDocument;->setArray(Ljava/lang/String;Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableDocument;

    .line 139
    :cond_4
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Collection;->save(Lcom/couchbase/lite/MutableDocument;)V

    .line 141
    :cond_5
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->deleteOldHistory()V

    return-void
.end method

.method static final deleteOldHistory$lambda$0(Ljava/util/List;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V
    .locals 2

    .line 269
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x64

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->takeLast(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    .line 270
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v1, v0}, Lcom/couchbase/lite/Collection;->getDocument(Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/couchbase/lite/Collection;->delete(Lcom/couchbase/lite/Document;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static synthetic get$default(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Ljava/lang/Integer;IIZZLfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Ljava/util/List;
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/16 p2, 0x32

    :cond_0
    move v2, p2

    and-int/lit8 p2, p7, 0x4

    const/4 p8, 0x0

    if-eqz p2, :cond_1

    move v3, p8

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_2

    move v4, p8

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_3

    move v5, p8

    goto :goto_2

    :cond_3
    move v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v6, p6

    .line 388
    invoke-virtual/range {v0 .. v6}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->get(Ljava/lang/Integer;IIZZLfast/dic/dict/domain/entity/WordSortEnum;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static final get$lambda$0(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;Lfast/dic/dict/models/database/ListModel;)Ljava/util/List;
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    .line 419
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {p2}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->find(Ljava/lang/String;)Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    move-result-object v0

    .line 420
    invoke-virtual {p2}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 418
    invoke-virtual {p0, v0, p2, p1}, Lfast/dic/dict/database/FDDatabaseManager;->getMeanings(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;ILnet/zetetic/database/sqlcipher/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getCouchbaseChannels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    .line 62
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 64
    :cond_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    return-object v1
.end method

.method private final getDocumentIds()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 370
    new-array v2, v2, [Lcom/couchbase/lite/SelectResult;

    sget-object v3, Lcom/couchbase/lite/Meta;->id:Lcom/couchbase/lite/MetaExpression;

    check-cast v3, Lcom/couchbase/lite/Expression;

    invoke-static {v3}, Lcom/couchbase/lite/SelectResult;->expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object v2

    const-string v3, "select(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    sget-object v3, Lfast/dic/dict/domain/entity/WordSortEnum;->NEWEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    invoke-direct {p0, v2, v3}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery(Lcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;

    move-result-object p0

    .line 375
    :try_start_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/couchbase/lite/Query;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    const-string v2, "execute(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    check-cast p0, Ljava/lang/Iterable;

    .line 568
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 569
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 570
    check-cast v3, Lcom/couchbase/lite/Result;

    .line 376
    const-string v5, "id"

    invoke-virtual {v3, v5}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 570
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 379
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    sub-long/2addr v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "~~~> Finish getting documentIds from History takes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 382
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 385
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final getQuery(IIILfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;
    .locals 4

    .line 511
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 512
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 514
    :cond_1
    iget-object v1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->selectQuery:Lcom/couchbase/lite/Select;

    .line 515
    invoke-static {v0}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/DataSource;

    invoke-virtual {v1, v0}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object v0

    .line 516
    const-string v1, "listType"

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    .line 517
    const-string v2, "list_type"

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v2

    iget-object v3, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v3}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    .line 518
    const-string v2, "category"

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v2

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    .line 516
    invoke-virtual {v0, p1}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p1

    const-string/jumbo v0, "where(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    invoke-direct {p0, p1, p4}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->applyOrder(Lcom/couchbase/lite/Where;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/OrderBy;

    move-result-object p0

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-static {p3}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/OrderBy;->limit(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Query;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private final getQuery(IILfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;
    .locals 4

    .line 543
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 544
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 546
    :cond_1
    iget-object v1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->selectQuery:Lcom/couchbase/lite/Select;

    .line 547
    invoke-static {v0}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/DataSource;

    invoke-virtual {v1, v0}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object v0

    .line 549
    const-string v1, "listType"

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    .line 550
    const-string v2, "list_type"

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v2

    iget-object v3, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v3}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object v0

    const-string/jumbo v1, "where(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    invoke-direct {p0, v0, p3}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->applyOrder(Lcom/couchbase/lite/Where;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/OrderBy;

    move-result-object p0

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/OrderBy;->limit(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Query;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private final getQuery(IIZLcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;
    .locals 3

    .line 479
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 480
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    .line 485
    iget-object p4, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->selectQuery:Lcom/couchbase/lite/Select;

    .line 489
    :cond_2
    invoke-static {v0}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/DataSource;

    invoke-virtual {p4, v0}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object p4

    .line 490
    const-string v0, "listType"

    invoke-static {v0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v0

    iget-object v1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    .line 491
    const-string v1, "list_type"

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    .line 492
    const-string v1, "isTranslator"

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v1

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Lcom/couchbase/lite/Expression;->booleanValue(Z)Lcom/couchbase/lite/Expression;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p3

    .line 490
    invoke-virtual {p4, p3}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p3

    .line 488
    const-string/jumbo p4, "where(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    invoke-direct {p0, p3, p5}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->applyOrder(Lcom/couchbase/lite/Where;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/OrderBy;

    move-result-object p0

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/OrderBy;->limit(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Query;

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method private final getQuery(ILfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;
    .locals 4

    .line 498
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 499
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 501
    :cond_1
    iget-object v1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->selectQuery:Lcom/couchbase/lite/Select;

    .line 502
    invoke-static {v0}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/DataSource;

    invoke-virtual {v1, v0}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object v0

    .line 503
    const-string v1, "listType"

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    .line 504
    const-string v2, "list_type"

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v2

    iget-object v3, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v3}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    .line 505
    const-string v2, "category"

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v2

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    .line 503
    invoke-virtual {v0, p1}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p1

    const-string/jumbo v0, "where(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->applyOrder(Lcom/couchbase/lite/Where;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/OrderBy;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Query;

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private final getQuery(Lcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;
    .locals 3

    .line 524
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 525
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 529
    iget-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->selectQuery:Lcom/couchbase/lite/Select;

    .line 533
    :cond_2
    invoke-static {v0}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/DataSource;

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object p1

    .line 535
    const-string v0, "listType"

    invoke-static {v0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v0

    iget-object v1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    .line 536
    const-string v1, "list_type"

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    .line 534
    invoke-virtual {p1, v0}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p1

    .line 532
    const-string/jumbo v0, "where(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->applyOrder(Lcom/couchbase/lite/Where;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/OrderBy;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Query;

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method private final getQuery(Ljava/lang/String;Lcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;
    .locals 3

    .line 455
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 456
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 458
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_3

    return-object v1

    :cond_3
    if-nez p2, :cond_4

    .line 464
    iget-object p2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->selectQuery:Lcom/couchbase/lite/Select;

    .line 468
    :cond_4
    invoke-static {v0}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/DataSource;

    invoke-virtual {p2, v0}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object p2

    .line 470
    const-string v0, "listType"

    invoke-static {v0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v0

    iget-object v1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    .line 471
    const-string v1, "list_type"

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    .line 472
    const-string/jumbo v1, "word"

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v1

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    .line 469
    invoke-virtual {p2, p1}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p1

    .line 467
    const-string/jumbo p2, "where(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    invoke-direct {p0, p1, p3}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->applyOrder(Lcom/couchbase/lite/Where;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/OrderBy;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Query;

    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method static synthetic getQuery$default(Lfast/dic/dict/helpers/database/couchbase/FDHistory;IIILfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Lcom/couchbase/lite/Query;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 510
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery(IIILfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;

    move-result-object p0

    return-object p0
.end method

.method static synthetic getQuery$default(Lfast/dic/dict/helpers/database/couchbase/FDHistory;IILfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Lcom/couchbase/lite/Query;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 542
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery(IILfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;

    move-result-object p0

    return-object p0
.end method

.method static synthetic getQuery$default(Lfast/dic/dict/helpers/database/couchbase/FDHistory;IIZLcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Lcom/couchbase/lite/Query;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v0, p0

    move v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 478
    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery(IIZLcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;

    move-result-object p0

    return-object p0
.end method

.method static synthetic getQuery$default(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Lcom/couchbase/lite/Query;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 523
    :cond_0
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery(Lcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;

    move-result-object p0

    return-object p0
.end method

.method static synthetic getQuery$default(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Ljava/lang/String;Lcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Lcom/couchbase/lite/Query;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 454
    sget-object p3, Lfast/dic/dict/domain/entity/WordSortEnum;->NEWEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery(Ljava/lang/String;Lcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;

    move-result-object p0

    return-object p0
.end method

.method private static final getWordModels$lambda$0$0(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-virtual {p0, p2, p3, p1}, Lfast/dic/dict/database/FDDatabaseManager;->getMeanings(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;ILnet/zetetic/database/sqlcipher/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getWords$default(Lfast/dic/dict/helpers/database/couchbase/FDHistory;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x32

    .line 349
    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getWords(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static final insert$lambda$0(Ljava/util/ArrayList;Lfast/dic/dict/helpers/database/couchbase/FDHistory;Ljava/util/List;)V
    .locals 5

    .line 153
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, "iterator(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lfast/dic/dict/models/database/ListModel;

    .line 154
    sget-object v1, Lfast/dic/dict/utils/Category;->English:Lfast/dic/dict/utils/Category;

    invoke-virtual {v1}, Lfast/dic/dict/utils/Category;->getRawValue()I

    move-result v1

    .line 155
    sget-object v2, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    sget-object v1, Lfast/dic/dict/utils/Category;->English:Lfast/dic/dict/utils/Category;

    invoke-virtual {v1}, Lfast/dic/dict/utils/Category;->getRawValue()I

    move-result v1

    goto :goto_1

    .line 157
    :cond_1
    sget-object v2, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isPersian(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 158
    sget-object v1, Lfast/dic/dict/utils/Category;->Persian:Lfast/dic/dict/utils/Category;

    invoke-virtual {v1}, Lfast/dic/dict/utils/Category;->getRawValue()I

    move-result v1

    .line 161
    :cond_2
    :goto_1
    new-instance v2, Lcom/couchbase/lite/MutableDocument;

    invoke-direct {v2}, Lcom/couchbase/lite/MutableDocument;-><init>()V

    .line 162
    const-string/jumbo v3, "word"

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/couchbase/lite/MutableDocument;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v2

    .line 163
    const-string v3, "category"

    invoke-virtual {v2, v3, v1}, Lcom/couchbase/lite/MutableDocument;->setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDocument;

    move-result-object v1

    .line 164
    const-string v2, "meaning"

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/couchbase/lite/MutableDocument;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v1

    .line 165
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "createdAt"

    invoke-virtual {v1, v3, v2}, Lcom/couchbase/lite/MutableDocument;->setDate(Ljava/lang/String;Ljava/util/Date;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v1

    .line 166
    const-string v2, "listType"

    iget-object v3, p1, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/couchbase/lite/MutableDocument;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v1

    .line 167
    const-string v2, "list_type"

    iget-object v3, p1, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/couchbase/lite/MutableDocument;->setString(Ljava/lang/String;Ljava/lang/String;)Lcom/couchbase/lite/MutableDocument;

    move-result-object v1

    .line 168
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->isTranslator()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    const-string v3, "isTranslator"

    invoke-virtual {v1, v3, v2}, Lcom/couchbase/lite/MutableDocument;->setBoolean(Ljava/lang/String;Z)Lcom/couchbase/lite/MutableDocument;

    move-result-object v1

    const-string v2, "setBoolean(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 171
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "wordId"

    invoke-virtual {v1, v3, v2}, Lcom/couchbase/lite/MutableDocument;->setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDocument;

    .line 172
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v2, "word_id"

    invoke-virtual {v1, v2, v0}, Lcom/couchbase/lite/MutableDocument;->setInt(Ljava/lang/String;I)Lcom/couchbase/lite/MutableDocument;

    :cond_4
    if-eqz p2, :cond_5

    .line 176
    new-instance v0, Lcom/couchbase/lite/MutableArray;

    invoke-direct {v0, p2}, Lcom/couchbase/lite/MutableArray;-><init>(Ljava/util/List;)V

    check-cast v0, Lcom/couchbase/lite/Array;

    const-string v2, "channels"

    invoke-virtual {v1, v2, v0}, Lcom/couchbase/lite/MutableDocument;->setArray(Ljava/lang/String;Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableDocument;

    .line 179
    :cond_5
    invoke-virtual {p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Collection;->save(Lcom/couchbase/lite/MutableDocument;)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method static final search$lambda$0(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-virtual {p0, p2, p3, p1}, Lfast/dic/dict/database/FDDatabaseManager;->getMeanings(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;ILnet/zetetic/database/sqlcipher/SQLiteDatabase;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final count(Ljava/lang/Integer;)I
    .locals 10

    const-string v0, "Get ("

    .line 282
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 283
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 285
    new-array v4, v3, [Lcom/couchbase/lite/SelectResult;

    sget-object v5, Lcom/couchbase/lite/Meta;->id:Lcom/couchbase/lite/MetaExpression;

    check-cast v5, Lcom/couchbase/lite/Expression;

    invoke-static {v5}, Lcom/couchbase/lite/SelectResult;->expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object v4

    .line 286
    invoke-static {v1}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v5

    check-cast v5, Lcom/couchbase/lite/DataSource;

    invoke-virtual {v4, v5}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object v4

    .line 288
    const-string v5, "listType"

    invoke-static {v5}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v6

    iget-object v7, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v7}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v6

    .line 289
    const-string v7, "list_type"

    invoke-static {v7}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v8

    iget-object v9, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v9}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v6

    .line 287
    invoke-virtual {v4, v6}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object v4

    const-string/jumbo v6, "where(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 293
    new-array v3, v3, [Lcom/couchbase/lite/SelectResult;

    sget-object v4, Lcom/couchbase/lite/Meta;->id:Lcom/couchbase/lite/MetaExpression;

    check-cast v4, Lcom/couchbase/lite/Expression;

    invoke-static {v4}, Lcom/couchbase/lite/SelectResult;->expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object v3

    .line 294
    invoke-static {v1}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/DataSource;

    invoke-virtual {v3, v1}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object v1

    .line 295
    invoke-static {v5}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v3

    iget-object v4, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v4}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    .line 296
    invoke-static {v7}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v4

    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {p0}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    .line 297
    const-string v3, "category"

    invoke-static {v3}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p0

    .line 295
    invoke-virtual {v1, p0}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object v4

    .line 297
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Lcom/couchbase/lite/Where;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    const-string p1, "execute(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->count(Ljava/lang/Iterable;)I

    move-result p0

    .line 305
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") count of history"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 309
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Error happen get count of history "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return v2
.end method

.method public final delete(Ljava/lang/String;)V
    .locals 1

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/Collection;->getDocument(Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 225
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Collection;->delete(Lcom/couchbase/lite/Document;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 228
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final deleteAll()V
    .locals 4

    .line 234
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 238
    new-array v1, v1, [Lcom/couchbase/lite/SelectResult;

    sget-object v2, Lcom/couchbase/lite/Meta;->id:Lcom/couchbase/lite/MetaExpression;

    check-cast v2, Lcom/couchbase/lite/Expression;

    invoke-static {v2}, Lcom/couchbase/lite/SelectResult;->expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object v1

    .line 239
    invoke-static {v0}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/DataSource;

    invoke-virtual {v1, v0}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object v0

    .line 241
    const-string v1, "listType"

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    .line 242
    const-string v2, "list_type"

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v2

    iget-object v3, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v3}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object v0

    const-string/jumbo v1, "where(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda2;-><init>(Lcom/couchbase/lite/Where;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 256
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final deleteAndInsert(Lfast/dic/dict/models/database/ListModel;)V
    .locals 3

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/models/database/ListModel;)V

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 144
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error happen to deleteAndInsert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final deleteOldHistory()V
    .locals 3

    .line 261
    invoke-direct {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDocumentIds()Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0, p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 276
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public final get(Ljava/lang/Integer;IIZZLfast/dic/dict/domain/entity/WordSortEnum;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "IIZZ",
            "Lfast/dic/dict/domain/entity/WordSortEnum;",
            ")",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v5, p6

    const-string v0, "sort"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    if-eqz p5, :cond_0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    .line 400
    invoke-static/range {v0 .. v7}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery$default(Lfast/dic/dict/helpers/database/couchbase/FDHistory;IIZLcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Lcom/couchbase/lite/Query;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 402
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery(ILfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p4, :cond_2

    .line 404
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2, p3, v5}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery(IIILfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    if-nez p4, :cond_3

    .line 406
    invoke-direct {p0, p2, p3, v5}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery(IILfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;

    move-result-object p1

    goto :goto_0

    .line 408
    :cond_3
    iget-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->selectQuery:Lcom/couchbase/lite/Select;

    invoke-direct {p0, p1, v5}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery(Lcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;

    move-result-object p1

    .line 411
    :goto_0
    iget-object p2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-virtual {p2}, Lfast/dic/dict/database/FDDatabaseManager;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object p2

    .line 412
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 415
    :try_start_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/couchbase/lite/Query;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p1

    const-string p4, "execute(...)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p1}, Lcom/couchbase/lite/ResultSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string p4, "iterator(...)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/couchbase/lite/Result;

    .line 417
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p5, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda1;

    invoke-direct {p5, p0, p2}, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;)V

    invoke-static {p4, p5}, Lfast/dic/dict/utils/SQLResultExtKt;->toListModel(Lcom/couchbase/lite/Result;Lkotlin/jvm/functions/Function1;)Lfast/dic/dict/models/database/ListModel;

    move-result-object p4

    .line 425
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 428
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 431
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 432
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p2

    sub-long p4, p0, v8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "~~~> Finish getting History at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ". diff = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    check-cast p3, Ljava/util/List;

    return-object p3
.end method

.method public final getDatabase()Lcom/couchbase/lite/Database;
    .locals 0

    .line 41
    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->manager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->openDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    return-object p0
.end method

.method public final getWordModels(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "word"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->selectQuery:Lcom/couchbase/lite/Select;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery$default(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Ljava/lang/String;Lcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Lcom/couchbase/lite/Query;

    move-result-object p0

    .line 334
    iget-object p1, v1, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-virtual {p1}, Lfast/dic/dict/database/FDDatabaseManager;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object p1

    .line 337
    :try_start_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/couchbase/lite/Query;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    const-string v0, "execute(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    check-cast p0, Ljava/lang/Iterable;

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 561
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 562
    check-cast v2, Lcom/couchbase/lite/Result;

    .line 339
    sget-object v3, Lfast/dic/dict/models/database/ListModel;->Companion:Lfast/dic/dict/models/database/ListModel$Companion;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v4, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda6;

    invoke-direct {v4, v1, p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda6;-><init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;)V

    invoke-virtual {v3, v2, v4}, Lfast/dic/dict/models/database/ListModel$Companion;->convert(Lcom/couchbase/lite/Result;Lkotlin/jvm/functions/Function2;)Lfast/dic/dict/models/database/ListModel;

    move-result-object v2

    .line 562
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 563
    :cond_0
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 343
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 346
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getWords(I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 351
    new-array v2, v2, [Lcom/couchbase/lite/SelectResult;

    const-string/jumbo v3, "word"

    invoke-static {v3}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v2}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object v10

    const-string v2, "select(...)"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 352
    sget-object v11, Lfast/dic/dict/domain/entity/WordSortEnum;->NEWEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    const/4 v8, 0x0

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v6 .. v11}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery(IIZLcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;)Lcom/couchbase/lite/Query;

    move-result-object p0

    .line 355
    :try_start_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/couchbase/lite/Query;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    const-string p1, "execute(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    check-cast p0, Ljava/lang/Iterable;

    .line 564
    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 565
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 566
    check-cast v2, Lcom/couchbase/lite/Result;

    .line 356
    invoke-virtual {v2, v3}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 567
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 359
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    sub-long v0, v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "~~~> Finish getting words from History at "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". diff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 362
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 365
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final has(Ljava/lang/String;)Z
    .locals 7

    const-string/jumbo v0, "word"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    iget-object v3, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->selectQuery:Lcom/couchbase/lite/Select;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getQuery$default(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Ljava/lang/String;Lcom/couchbase/lite/Select;Lfast/dic/dict/domain/entity/WordSortEnum;ILjava/lang/Object;)Lcom/couchbase/lite/Query;

    move-result-object p0

    const/4 p1, 0x0

    .line 321
    :try_start_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/couchbase/lite/Query;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    const-string v1, "execute(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    check-cast p0, Ljava/lang/Iterable;

    .line 556
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 557
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 558
    check-cast v2, Lcom/couchbase/lite/Result;

    .line 322
    invoke-virtual {v2, v0}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 324
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    return p1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 326
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return p1
.end method

.method public final insert(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "lists"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getCouchbaseChannels()Ljava/util/List;

    move-result-object v0

    .line 152
    :try_start_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p0, v0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;Lfast/dic/dict/helpers/database/couchbase/FDHistory;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 185
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    const-string v0, "Unknown error happen insert to history"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final isDBExistsInDocumentCB()Z
    .locals 0

    .line 57
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final search(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "word"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 71
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 73
    :cond_1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    .line 78
    :cond_2
    sget-object v3, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    move v3, v4

    .line 83
    :goto_0
    iget-object v5, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->selectQuery:Lcom/couchbase/lite/Select;

    .line 84
    invoke-static {v2}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/DataSource;

    invoke-virtual {v5, v2}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object v2

    .line 85
    const-string v5, "listType"

    invoke-static {v5}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v5

    iget-object v6, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v6}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v5

    .line 86
    const-string v6, "list_type"

    invoke-static {v6}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v6

    iget-object v7, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v7}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v5

    .line 87
    const-string v6, "category"

    invoke-static {v6}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v6

    invoke-static {v3}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    .line 88
    invoke-static {v0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v0

    invoke-static {p1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, "%"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/PropertyExpression;->like(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    .line 85
    invoke-virtual {v2, p1}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p1

    .line 89
    new-array v0, v4, [Lcom/couchbase/lite/Ordering;

    const-string v2, "createdAt"

    invoke-static {v2}, Lcom/couchbase/lite/Ordering;->property(Ljava/lang/String;)Lcom/couchbase/lite/Ordering$SortOrder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/couchbase/lite/Ordering$SortOrder;->descending()Lcom/couchbase/lite/Ordering;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Where;->orderBy([Lcom/couchbase/lite/Ordering;)Lcom/couchbase/lite/OrderBy;

    move-result-object p1

    .line 90
    invoke-static {p2}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/couchbase/lite/OrderBy;->limit(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Limit;

    move-result-object p1

    const-string p2, "limit(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-virtual {p2}, Lfast/dic/dict/database/FDDatabaseManager;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object p2

    .line 95
    :try_start_0
    invoke-virtual {p1}, Lcom/couchbase/lite/Limit;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p1

    const-string v0, "execute(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/couchbase/lite/ResultSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "iterator(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/Result;

    .line 97
    sget-object v2, Lfast/dic/dict/models/database/ListModel;->Companion:Lfast/dic/dict/models/database/ListModel$Companion;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v3, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;)V

    invoke-virtual {v2, v0, v3}, Lfast/dic/dict/models/database/ListModel$Companion;->convert(Lcom/couchbase/lite/Result;Lkotlin/jvm/functions/Function2;)Lfast/dic/dict/models/database/ListModel;

    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 104
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-object v1
.end method

.method public final wordDocumentId(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, "word"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 194
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 196
    :cond_1
    const-string v3, "listType"

    invoke-static {v3}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v3

    iget-object v4, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v4}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    .line 197
    const-string v4, "list_type"

    invoke-static {v4}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v4

    iget-object v5, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->listType:Ljava/lang/String;

    invoke-static {v5}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v3

    .line 198
    invoke-static {v0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v0

    invoke-static {p1}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    const-string v0, "and(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 201
    const-string v3, "category"

    invoke-static {v3}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/couchbase/lite/Expression;->and(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    :cond_2
    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->selectQuery:Lcom/couchbase/lite/Select;

    .line 205
    invoke-static {v1}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object p2

    check-cast p2, Lcom/couchbase/lite/DataSource;

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object p0

    .line 206
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p0

    const-string/jumbo p1, "where(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Where;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    const-string p1, "execute(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, "iterator(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/Result;

    .line 211
    const-string p1, "id"

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 214
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-object v2
.end method
