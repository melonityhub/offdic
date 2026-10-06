.class public final Lfast/dic/dict/helpers/FDListPath;
.super Ljava/lang/Object;
.source "FDListPath.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDListPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDListPath.kt\nfast/dic/dict/helpers/FDListPath\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,253:1\n1#2:254\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\u0008\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\r\u001a\u00020\u000eJ \u0010\u000f\u001a\u00020\u0010H\u0007b\u0016\u0008\u0011\u0012\u0012\u0008\u0012\u0012\u000e\u0008\u000cJ\u0004\u0008\u0008(\u0013J\u0004\u0008\u0008(\u0014J\u0006\u0010\u0015\u001a\u00020\u0010J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J)\u0010\u001a\u001a\u00020\u00102!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u001d\u0012\u0008\u0008\u001e\u0012\u0004\u0008\u0008(\u001f\u0012\u0004\u0012\u00020\u00100\u001cJ\u0006\u0010 \u001a\u00020\u0010J\u0006\u0010!\u001a\u00020\u0010J\u0018\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0019H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lfast/dic/dict/helpers/FDListPath;",
        "",
        "historyWrapper",
        "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
        "favoriteWrapper",
        "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
        "<init>",
        "(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;)V",
        "Ljavax/inject/Inject;",
        "manager",
        "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;",
        "selectQuery",
        "Lcom/couchbase/lite/Select;",
        "isDBExistsInDocumentCB",
        "",
        "migrateToCB",
        "",
        "Landroid/annotation/SuppressLint;",
        "value",
        "Range",
        "Recycle",
        "migrateAddFolder",
        "replicatorConfiguration",
        "Lcom/couchbase/lite/ReplicatorConfiguration;",
        "sessionId",
        "",
        "deleteDB",
        "completion",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "updateDocuments",
        "checkAndDeDuplicateDocuments",
        "groupByDeDup",
        "database",
        "Lcom/couchbase/lite/Database;",
        "listType",
        "app"
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
.field private final favoriteWrapper:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

.field private final historyWrapper:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

.field private final manager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

.field private final selectQuery:Lcom/couchbase/lite/Select;


# direct methods
.method public constructor <init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "historyWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfast/dic/dict/helpers/FDListPath;->historyWrapper:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    .line 35
    iput-object p2, p0, Lfast/dic/dict/helpers/FDListPath;->favoriteWrapper:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    .line 38
    sget-object p1, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->Companion:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;

    invoke-virtual {p1}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;->getInstance()Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/helpers/FDListPath;->manager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    const/4 p1, 0x6

    .line 41
    new-array p1, p1, [Lcom/couchbase/lite/SelectResult;

    sget-object p2, Lcom/couchbase/lite/Meta;->id:Lcom/couchbase/lite/MetaExpression;

    check-cast p2, Lcom/couchbase/lite/Expression;

    invoke-static {p2}, Lcom/couchbase/lite/SelectResult;->expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 42
    const-string/jumbo p2, "wordId"

    invoke-static {p2}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 43
    const-string p2, "category"

    invoke-static {p2}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object p2

    const/4 v0, 0x2

    aput-object p2, p1, v0

    .line 44
    const-string/jumbo p2, "word"

    invoke-static {p2}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object p2

    const/4 v0, 0x3

    aput-object p2, p1, v0

    .line 45
    const-string p2, "createdAt"

    invoke-static {p2}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object p2

    const/4 v0, 0x4

    aput-object p2, p1, v0

    .line 46
    const-string p2, "channels"

    invoke-static {p2}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object p2

    const/4 v0, 0x5

    aput-object p2, p1, v0

    .line 40
    invoke-static {p1}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object p1

    const-string p2, "select(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/helpers/FDListPath;->selectQuery:Lcom/couchbase/lite/Select;

    return-void
.end method

.method private final groupByDeDup(Lcom/couchbase/lite/Database;Ljava/lang/String;)V
    .locals 4

    .line 219
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "groupByDeDup: start group by --> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    .line 222
    new-array p0, p0, [Lcom/couchbase/lite/SelectResult;

    sget-object v0, Lcom/couchbase/lite/Meta;->id:Lcom/couchbase/lite/MetaExpression;

    check-cast v0, Lcom/couchbase/lite/Expression;

    invoke-static {v0}, Lcom/couchbase/lite/SelectResult;->expression(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v0

    aput-object v0, p0, v1

    .line 223
    const-string/jumbo v0, "word"

    invoke-static {v0}, Lcom/couchbase/lite/SelectResult;->property(Ljava/lang/String;)Lcom/couchbase/lite/SelectResult$As;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, p0, v3

    .line 221
    invoke-static {p0}, Lcom/couchbase/lite/QueryBuilder;->select([Lcom/couchbase/lite/SelectResult;)Lcom/couchbase/lite/Select;

    move-result-object p0

    const-string v2, "select(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-static {p1}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v2

    check-cast v2, Lcom/couchbase/lite/DataSource;

    invoke-virtual {p0, v2}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object p0

    .line 230
    const-string v2, "listType"

    invoke-static {v2}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v2

    invoke-static {p2}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/couchbase/lite/PropertyExpression;->equalTo(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p0

    .line 231
    new-array p2, v3, [Lcom/couchbase/lite/Expression;

    invoke-static {v0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/Where;->groupBy([Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/GroupBy;

    move-result-object p0

    .line 232
    invoke-static {}, Lcom/couchbase/lite/Expression;->all()Lcom/couchbase/lite/PropertyExpression;

    move-result-object p2

    check-cast p2, Lcom/couchbase/lite/Expression;

    invoke-static {p2}, Lcom/couchbase/lite/Function;->count(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-static {v3}, Lcom/couchbase/lite/Expression;->intValue(I)Lcom/couchbase/lite/Expression;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/couchbase/lite/Expression;->greaterThan(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/couchbase/lite/GroupBy;->having(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Having;

    move-result-object p0

    const-string p2, "having(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/couchbase/lite/Having;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

    const-string p2, "execute(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/couchbase/lite/ResultSet;->allResults()Ljava/util/List;

    move-result-object p0

    const-string p2, "allResults(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "groupByDeDup: end group by : length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/couchbase/lite/Result;

    .line 241
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, ""

    .line 242
    :cond_2
    invoke-virtual {p1, p2}, Lcom/couchbase/lite/Collection;->getDocument(Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 246
    invoke-virtual {p1, p2}, Lcom/couchbase/lite/Collection;->delete(Lcom/couchbase/lite/Document;)V

    goto :goto_0

    .line 250
    :cond_3
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const-string p1, "groupByDeDup: end delete duplicate"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final updateDocuments$lambda$0(Lcom/couchbase/lite/Where;Lcom/couchbase/lite/Collection;Ljava/lang/String;)V
    .locals 3

    .line 199
    invoke-virtual {p0}, Lcom/couchbase/lite/Where;->execute()Lcom/couchbase/lite/ResultSet;

    move-result-object p0

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

    .line 200
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Collection;->getDocument(Ljava/lang/String;)Lcom/couchbase/lite/Document;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/couchbase/lite/Document;->toMutable()Lcom/couchbase/lite/MutableDocument;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 201
    new-instance v1, Lcom/couchbase/lite/MutableArray;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/couchbase/lite/MutableArray;-><init>(Ljava/util/List;)V

    check-cast v1, Lcom/couchbase/lite/Array;

    const-string v2, "channels"

    invoke-virtual {v0, v2, v1}, Lcom/couchbase/lite/MutableDocument;->setArray(Ljava/lang/String;Lcom/couchbase/lite/Array;)Lcom/couchbase/lite/MutableDocument;

    :cond_2
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p1, v0}, Lcom/couchbase/lite/Collection;->save(Lcom/couchbase/lite/MutableDocument;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public final checkAndDeDuplicateDocuments()V
    .locals 2

    .line 212
    iget-object v0, p0, Lfast/dic/dict/helpers/FDListPath;->manager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->openDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    const-string v1, "history"

    invoke-direct {p0, v0, v1}, Lfast/dic/dict/helpers/FDListPath;->groupByDeDup(Lcom/couchbase/lite/Database;Ljava/lang/String;)V

    .line 215
    const-string v1, "favourite"

    invoke-direct {p0, v0, v1}, Lfast/dic/dict/helpers/FDListPath;->groupByDeDup(Lcom/couchbase/lite/Database;Ljava/lang/String;)V

    return-void
.end method

.method public final deleteDB(Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lfast/dic/dict/helpers/FDListPath;->manager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->openDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    new-instance v1, Lcom/couchbase/lite/DatabaseConfiguration;

    invoke-direct {v1}, Lcom/couchbase/lite/DatabaseConfiguration;-><init>()V

    .line 161
    :try_start_0
    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/couchbase/lite/Collection;->close()V

    .line 163
    :cond_1
    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->close()V

    .line 166
    const-string v0, "lists"

    invoke-virtual {v1}, Lcom/couchbase/lite/DatabaseConfiguration;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfast/dic/dict/utils/StringExtKt;->toFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/couchbase/lite/Database;->delete(Ljava/lang/String;Ljava/io/File;)V

    .line 168
    iget-object v0, p0, Lfast/dic/dict/helpers/FDListPath;->manager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->closeDatabase()V

    .line 171
    iget-object p0, p0, Lfast/dic/dict/helpers/FDListPath;->manager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->openDatabase()Lcom/couchbase/lite/Database;

    const/4 p0, 0x1

    .line 173
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 175
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const-string v1, "Something went wrong while deleting database"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final isDBExistsInDocumentCB()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lfast/dic/dict/helpers/FDListPath;->historyWrapper:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->isDBExistsInDocumentCB()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lfast/dic/dict/helpers/FDListPath;->favoriteWrapper:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->isDBExistsInDocumentCB()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final migrateAddFolder()V
    .locals 5

    .line 116
    new-instance v0, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    invoke-direct {v0}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;-><init>()V

    invoke-virtual {v0}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;->count()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/helpers/FDListPath;->favoriteWrapper:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->getAllWithoutFolder()Ljava/util/ArrayList;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 126
    :cond_1
    new-instance v1, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    invoke-direct {v1}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;-><init>()V

    new-instance v2, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    invoke-direct {v2}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;-><init>()V

    invoke-virtual {v2}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;->getDefaultFolder()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;->insert(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "iterator(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "next(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lfast/dic/dict/models/database/ListModel;

    .line 129
    invoke-virtual {v3, v1}, Lfast/dic/dict/models/database/ListModel;->setFolderId(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_2
    iget-object p0, p0, Lfast/dic/dict/helpers/FDListPath;->favoriteWrapper:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    invoke-virtual {p0, v0}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->updateAllFolders(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final migrateToCB()V
    .locals 35

    move-object/from16 v0, p0

    .line 55
    sget-object v1, Lfast/dic/dict/helpers/database/DatabaseListManager;->Companion:Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;

    invoke-virtual {v1}, Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;->getInstance()Lfast/dic/dict/helpers/database/DatabaseListManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lfast/dic/dict/helpers/database/DatabaseListManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 57
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    .line 58
    const-string v4, "SELECT word_id, word, category FROM history"

    invoke-virtual {v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 61
    :goto_1
    const-string v4, "category"

    const-string v5, "getString(...)"

    const-string/jumbo v6, "word"

    const-string/jumbo v7, "word_id"

    if-eqz v1, :cond_4

    .line 62
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 64
    :cond_2
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 65
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 67
    new-instance v11, Lfast/dic/dict/models/database/ListModel;

    const v33, 0x1fffff

    const/16 v34, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v11 .. v34}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    invoke-virtual {v11, v9}, Lfast/dic/dict/models/database/ListModel;->setWord(Ljava/lang/String;)V

    .line 70
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Lfast/dic/dict/models/database/ListModel;->setWordId(Ljava/lang/Integer;)V

    .line 71
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Lfast/dic/dict/models/database/ListModel;->setCategory(Ljava/lang/Integer;)V

    .line 73
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 76
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 80
    iget-object v1, v0, Lfast/dic/dict/helpers/FDListPath;->historyWrapper:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-virtual {v1, v3}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->insert(Ljava/util/ArrayList;)Z

    .line 83
    :cond_5
    sget-object v1, Lfast/dic/dict/helpers/database/DatabaseListManager;->Companion:Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;

    invoke-virtual {v1}, Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;->getInstance()Lfast/dic/dict/helpers/database/DatabaseListManager;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lfast/dic/dict/helpers/database/DatabaseListManager;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v1, v2

    .line 85
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_7

    .line 88
    const-string v8, "SELECT word_id, word, category FROM favourite"

    invoke-virtual {v1, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_a

    .line 91
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 93
    :cond_8
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 94
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 96
    new-instance v11, Lfast/dic/dict/models/database/ListModel;

    const v33, 0x1fffff

    const/16 v34, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v11 .. v34}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 98
    invoke-virtual {v11, v9}, Lfast/dic/dict/models/database/ListModel;->setWord(Ljava/lang/String;)V

    .line 99
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Lfast/dic/dict/models/database/ListModel;->setWordId(Ljava/lang/Integer;)V

    .line 100
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Lfast/dic/dict/models/database/ListModel;->setCategory(Ljava/lang/Integer;)V

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v8}, Lfast/dic/dict/models/database/ListModel;->setPosition(Ljava/lang/Integer;)V

    add-int/lit8 v1, v1, 0x1

    .line 104
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_8

    .line 107
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 111
    iget-object v0, v0, Lfast/dic/dict/helpers/FDListPath;->favoriteWrapper:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    invoke-virtual {v0, v3}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->insert(Ljava/util/ArrayList;)Z

    :cond_b
    return-void
.end method

.method public final replicatorConfiguration(Ljava/lang/String;)Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 3

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/couchbase/lite/URLEndpoint;

    new-instance v1, Ljava/net/URI;

    const-string/jumbo v2, "wss://sync.fastdic.com:4984/sync_gateway"

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/couchbase/lite/URLEndpoint;-><init>(Ljava/net/URI;)V

    .line 138
    new-instance v1, Lcom/couchbase/lite/ReplicatorConfiguration;

    check-cast v0, Lcom/couchbase/lite/Endpoint;

    invoke-direct {v1, v0}, Lcom/couchbase/lite/ReplicatorConfiguration;-><init>(Lcom/couchbase/lite/Endpoint;)V

    .line 140
    iget-object p0, p0, Lfast/dic/dict/helpers/FDListPath;->manager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->openDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    :try_start_0
    new-instance v0, Lcom/couchbase/lite/CollectionConfiguration;

    invoke-direct {v0}, Lcom/couchbase/lite/CollectionConfiguration;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/couchbase/lite/ReplicatorConfiguration;->addCollection(Lcom/couchbase/lite/Collection;Lcom/couchbase/lite/CollectionConfiguration;)Lcom/couchbase/lite/ReplicatorConfiguration;

    .line 145
    sget-object p0, Lcom/couchbase/lite/ReplicatorType;->PUSH_AND_PULL:Lcom/couchbase/lite/ReplicatorType;

    invoke-virtual {v1, p0}, Lcom/couchbase/lite/ReplicatorConfiguration;->setType(Lcom/couchbase/lite/ReplicatorType;)Lcom/couchbase/lite/ReplicatorConfiguration;

    const/4 p0, 0x1

    .line 146
    invoke-virtual {v1, p0}, Lcom/couchbase/lite/ReplicatorConfiguration;->setContinuous(Z)Lcom/couchbase/lite/ReplicatorConfiguration;

    .line 149
    new-instance p0, Lcom/couchbase/lite/SessionAuthenticator;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/SessionAuthenticator;-><init>(Ljava/lang/String;)V

    check-cast p0, Lcom/couchbase/lite/Authenticator;

    invoke-virtual {v1, p0}, Lcom/couchbase/lite/ReplicatorConfiguration;->setAuthenticator(Lcom/couchbase/lite/Authenticator;)Lcom/couchbase/lite/ReplicatorConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v1
.end method

.method public final updateDocuments()V
    .locals 6

    .line 182
    const-string v0, "channels"

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    instance-of v2, v1, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v2, :cond_0

    check-cast v1, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 183
    :cond_1
    iget-object v2, p0, Lfast/dic/dict/helpers/FDListPath;->manager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    invoke-virtual {v2}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->openDatabase()Lcom/couchbase/lite/Database;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {v2}, Lcom/couchbase/lite/Database;->getDefaultCollection()Lcom/couchbase/lite/Collection;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 188
    :cond_3
    :try_start_0
    iget-object p0, p0, Lfast/dic/dict/helpers/FDListPath;->selectQuery:Lcom/couchbase/lite/Select;

    .line 189
    invoke-static {v3}, Lcom/couchbase/lite/DataSource;->collection(Lcom/couchbase/lite/Collection;)Lcom/couchbase/lite/DataSource$As;

    move-result-object v4

    check-cast v4, Lcom/couchbase/lite/DataSource;

    invoke-virtual {p0, v4}, Lcom/couchbase/lite/Select;->from(Lcom/couchbase/lite/DataSource;)Lcom/couchbase/lite/From;

    move-result-object p0

    .line 192
    invoke-static {v0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v4

    check-cast v4, Lcom/couchbase/lite/Expression;

    invoke-static {v1}, Lcom/couchbase/lite/Expression;->string(Ljava/lang/String;)Lcom/couchbase/lite/Expression;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/couchbase/lite/ArrayFunction;->contains(Lcom/couchbase/lite/Expression;Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v4

    .line 191
    invoke-static {v4}, Lcom/couchbase/lite/Expression;->not(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v4

    .line 194
    invoke-static {v0}, Lcom/couchbase/lite/Expression;->property(Ljava/lang/String;)Lcom/couchbase/lite/PropertyExpression;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/PropertyExpression;->isNotValued()Lcom/couchbase/lite/Expression;

    move-result-object v0

    .line 193
    invoke-virtual {v4, v0}, Lcom/couchbase/lite/Expression;->or(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Expression;

    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Lcom/couchbase/lite/From;->where(Lcom/couchbase/lite/Expression;)Lcom/couchbase/lite/Where;

    move-result-object p0

    const-string/jumbo v0, "where(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lfast/dic/dict/helpers/FDListPath$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v3, v1}, Lfast/dic/dict/helpers/FDListPath$$ExternalSyntheticLambda0;-><init>(Lcom/couchbase/lite/Where;Lcom/couchbase/lite/Collection;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/couchbase/lite/Database;->inBatch(Lcom/couchbase/lite/UnitOfWork;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 207
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method
