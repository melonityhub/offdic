.class public final Lfast/dic/dict/helpers/FDWordCategory;
.super Ljava/lang/Object;
.source "FDWordCategory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;,
        Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;,
        Lfast/dic/dict/helpers/FDWordCategory$Companion;,
        Lfast/dic/dict/helpers/FDWordCategory$Filter;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDWordCategory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDWordCategory.kt\nfast/dic/dict/helpers/FDWordCategory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 Cursor.kt\nandroidx/core/database/CursorKt\n*L\n1#1,539:1\n1739#2:540\n1814#2,3:541\n1221#2:544\n1739#2:545\n1814#2,3:546\n1739#2:553\n1814#2,3:554\n777#2:557\n873#2,2:558\n1739#2:564\n1814#2,3:565\n777#2:568\n873#2,2:569\n1739#2:571\n1814#2,3:572\n1739#2:576\n1814#2,3:577\n777#2:580\n873#2,2:581\n1739#2:584\n1814#2,3:585\n777#2:588\n873#2,2:589\n1739#2:595\n1814#2,3:596\n777#2:599\n873#2,2:600\n1739#2:603\n1814#2,3:604\n1221#2:607\n1#3:549\n37#4,2:550\n37#4,2:561\n37#4,2:592\n110#5:552\n72#5:560\n110#5:563\n110#5:575\n110#5:583\n72#5:591\n110#5:594\n72#5:602\n*S KotlinDebug\n*F\n+ 1 FDWordCategory.kt\nfast/dic/dict/helpers/FDWordCategory\n*L\n63#1:540\n63#1:541,3\n87#1:544\n104#1:545\n104#1:546,3\n214#1:553\n214#1:554,3\n214#1:557\n214#1:558,2\n301#1:564\n301#1:565,3\n302#1:568\n302#1:569,2\n303#1:571\n303#1:572,3\n306#1:576\n306#1:577,3\n307#1:580\n307#1:581,2\n311#1:584\n311#1:585,3\n312#1:588\n312#1:589,2\n402#1:595\n402#1:596,3\n402#1:599\n402#1:600,2\n432#1:603\n432#1:604,3\n513#1:607\n210#1:550,2\n296#1:561,2\n398#1:592,2\n213#1:552\n219#1:560\n299#1:563\n304#1:575\n309#1:583\n317#1:591\n401#1:594\n408#1:602\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u0000 /2\u00020\u0001:\u0004,-./B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u001a\u0002\u0008\n\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u000e\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0010H\u0002J\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0010J\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0010H\u0086@\u00a2\u0006\u0002\u0010\u0014J\u0006\u0010\u001a\u001a\u00020\u0011J\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0006\u0010\u001d\u001a\u00020\u0011J&\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00102\u0006\u0010 \u001a\u00020\u00112\u0008\u0008\u0002\u0010!\u001a\u00020\"H\u0086@\u00a2\u0006\u0002\u0010#J&\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00102\u0006\u0010$\u001a\u00020%2\u0008\u0008\u0002\u0010!\u001a\u00020\"H\u0086@\u00a2\u0006\u0002\u0010&J&\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00102\u0006\u0010(\u001a\u00020%2\u0008\u0008\u0002\u0010!\u001a\u00020\"H\u0086@\u00a2\u0006\u0002\u0010&J&\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00102\u0006\u0010 \u001a\u00020\u00112\u0008\u0008\u0002\u0010!\u001a\u00020\"H\u0086@\u00a2\u0006\u0002\u0010#J&\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00102\u0006\u0010 \u001a\u00020\u00112\u0008\u0008\u0002\u0010!\u001a\u00020\"H\u0086@\u00a2\u0006\u0002\u0010#J\u0014\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0010H\u0082@\u00a2\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lfast/dic/dict/helpers/FDWordCategory;",
        "",
        "databaseHelper",
        "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
        "databaseManager",
        "Lfast/dic/dict/database/FDDatabaseManager;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "<init>",
        "(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/database/FDDatabaseManager;Lfast/dic/dict/database/LocalStorage;)V",
        "Ljavax/inject/Inject;",
        "database",
        "Lnet/zetetic/database/sqlcipher/SQLiteDatabase;",
        "getDatabase",
        "()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;",
        "posIds",
        "",
        "",
        "getCategories",
        "Lfast/dic/dict/models/WordCategoryModel;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getCefrLabelsMap",
        "Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;",
        "getCefrLabels",
        "Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;",
        "getEmptyCategories",
        "getCefrLevelCount",
        "daysPassForWod",
        "",
        "getCategoryCount",
        "getWords",
        "Lfast/dic/dict/models/database/CategorizedWordDto;",
        "id",
        "filter",
        "Lfast/dic/dict/helpers/FDWordCategory$Filter;",
        "(ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cefr",
        "",
        "(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getCefrWords",
        "level",
        "getCategoryWords",
        "getPosWords",
        "getWordsCounts",
        "CefrLanguageLabel",
        "CefrLabel",
        "Filter",
        "Companion",
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


# static fields
.field public static final Companion:Lfast/dic/dict/helpers/FDWordCategory$Companion;

.field private static final WOD_WORD_ID:I


# instance fields
.field private final databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

.field private final databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

.field private final localStorage:Lfast/dic/dict/database/LocalStorage;

.field private final posIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/helpers/FDWordCategory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/helpers/FDWordCategory;->Companion:Lfast/dic/dict/helpers/FDWordCategory$Companion;

    return-void
.end method

.method public constructor <init>(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/database/FDDatabaseManager;Lfast/dic/dict/database/LocalStorage;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "databaseHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localStorage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lfast/dic/dict/helpers/FDWordCategory;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    .line 21
    iput-object p2, p0, Lfast/dic/dict/helpers/FDWordCategory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    .line 22
    iput-object p3, p0, Lfast/dic/dict/helpers/FDWordCategory;->localStorage:Lfast/dic/dict/database/LocalStorage;

    const/4 p1, 0x4

    .line 36
    new-array p1, p1, [Ljava/lang/Integer;

    const/16 p2, 0x14

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/16 p2, 0x12

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const/16 p2, 0x13

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const/16 p2, 0x18

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, p1, p3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/helpers/FDWordCategory;->posIds:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getWordsCounts(Lfast/dic/dict/helpers/FDWordCategory;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lfast/dic/dict/helpers/FDWordCategory;->getWordsCounts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final daysPassForWod()J
    .locals 5

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x2

    const/16 v1, 0x14

    const/16 v2, 0x7e4

    .line 125
    invoke-virtual {p0, v2, v0, v1}, Ljava/util/Calendar;->set(III)V

    .line 128
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 132
    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    const/4 v4, 0x1

    .line 133
    invoke-virtual {p0, v3, v4}, Ljava/util/Calendar;->add(II)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static synthetic getCategoryWords$default(Lfast/dic/dict/helpers/FDWordCategory;ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 231
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$Filter;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/helpers/FDWordCategory$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/helpers/FDWordCategory;->getCategoryWords(ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getCefrLabelsMap()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x6

    .line 45
    new-array p0, p0, [Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;

    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;

    const-string/jumbo v1, "\u0633\u0637\u062d \u0645\u0628\u062a\u062f\u06cc - A1"

    const-string v2, "Beginner A1"

    invoke-direct {v0, v1, v2}, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v0, p0, v1

    .line 46
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;

    const-string/jumbo v1, "\u0633\u0637\u062d \u0627\u0628\u062a\u062f\u0627\u06cc\u06cc - A2"

    const-string v2, "Elementary A2"

    invoke-direct {v0, v1, v2}, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    aput-object v0, p0, v1

    .line 47
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;

    const-string/jumbo v1, "\u0633\u0637\u062d \u0645\u062a\u0648\u0633\u0637 - B1"

    const-string v2, "Intermediate B1"

    invoke-direct {v0, v1, v2}, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    aput-object v0, p0, v1

    .line 48
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;

    .line 49
    const-string/jumbo v1, "\u0633\u0637\u062d \u0641\u0648\u0642 - B2"

    .line 50
    const-string v2, "Upper-Intermediate B2"

    .line 48
    invoke-direct {v0, v1, v2}, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    aput-object v0, p0, v1

    .line 52
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;

    const-string/jumbo v1, "\u0633\u0637\u062d \u067e\u06cc\u0634\u0631\u0641\u062a\u0647 - C1"

    const-string v2, "Advanced C1"

    invoke-direct {v0, v1, v2}, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    aput-object v0, p0, v1

    .line 53
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;

    .line 54
    const-string/jumbo v1, "\u0633\u0637\u062d \u0641\u0648\u0642 - C2"

    .line 55
    const-string v2, "Proficiency C2"

    .line 53
    invoke-direct {v0, v1, v2}, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, p0, v1

    .line 44
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCefrWords$default(Lfast/dic/dict/helpers/FDWordCategory;Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 154
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$Filter;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/helpers/FDWordCategory$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/helpers/FDWordCategory;->getCefrWords(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPosWords$default(Lfast/dic/dict/helpers/FDWordCategory;ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 329
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$Filter;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/helpers/FDWordCategory$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/helpers/FDWordCategory;->getPosWords(ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getWords$default(Lfast/dic/dict/helpers/FDWordCategory;ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 142
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$Filter;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/helpers/FDWordCategory$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/helpers/FDWordCategory;->getWords(ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getWords$default(Lfast/dic/dict/helpers/FDWordCategory;Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 150
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory$Filter;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/helpers/FDWordCategory$Filter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/helpers/FDWordCategory;->getWords(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getWordsCounts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WordCategoryModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 421
    iget-object v2, v0, Lfast/dic/dict/helpers/FDWordCategory;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v2}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result v2

    .line 423
    iget-object v3, v0, Lfast/dic/dict/helpers/FDWordCategory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-virtual {v3}, Lfast/dic/dict/database/FDDatabaseManager;->getAllCategoryIds()Ljava/util/List;

    move-result-object v3

    .line 432
    iget-object v4, v0, Lfast/dic/dict/helpers/FDWordCategory;->posIds:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .line 603
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 604
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 605
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 432
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    .line 605
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 606
    :cond_0
    check-cast v5, Ljava/util/List;

    .line 603
    move-object v6, v5

    check-cast v6, Ljava/lang/Iterable;

    .line 432
    const-string v4, ","

    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    const/16 v13, 0x3e

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\n            SELECT\n              p.pos,\n              COUNT(DISTINCT d.english_word_id) AS count\n            FROM english_pos AS p\n            JOIN english_details AS d\n              ON d.english_detail_id = p.english_detail_id\n            WHERE p.pos IN ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")\n            GROUP BY p.pos\n            ORDER BY p.pos;\n        "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 435
    invoke-static {v5}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    move-object v6, v3

    check-cast v6, Ljava/lang/Iterable;

    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static/range {v6 .. v14}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\n            SELECT\n              c.category,\n              COUNT(DISTINCT d.english_word_id) AS count\n            FROM english_categories AS c\n            JOIN english_details AS d\n              ON d.english_detail_id = c.english_detail_id\n            WHERE c.category IN ("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")\n            GROUP BY c.category\n            ORDER BY c.category;\n        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 447
    invoke-static {v3}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 449
    iget-object v4, v0, Lfast/dic/dict/helpers/FDWordCategory;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v4}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    .line 453
    :cond_1
    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDWordCategory;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    .line 456
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 458
    :cond_2
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 459
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 460
    move-object v10, v1

    check-cast v10, Ljava/util/Collection;

    .line 462
    iget-object v11, v0, Lfast/dic/dict/helpers/FDWordCategory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v2}, Lfast/dic/dict/database/FDDatabaseManager;->getCategoryNameById(Ljava/lang/Integer;Z)Ljava/lang/String;

    move-result-object v15

    .line 464
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "c"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 460
    new-instance v13, Lfast/dic/dict/models/WordCategoryModel;

    .line 463
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v14

    .line 461
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v23, 0x1f0

    const/16 v24, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 460
    invoke-direct/range {v13 .. v24}, Lfast/dic/dict/models/WordCategoryModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v10, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 468
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 471
    :cond_4
    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDWordCategory;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v6}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 474
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 476
    :cond_5
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 477
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/16 v8, 0x14

    const/4 v9, 0x3

    const/16 v10, 0x12

    const/4 v11, 0x2

    const/16 v12, 0x13

    const/16 v13, 0x18

    const/4 v14, 0x4

    if-eqz v2, :cond_6

    .line 480
    new-array v14, v14, [Lkotlin/Pair;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v13

    const-string/jumbo v15, "\u0645\u062e\u0641\u0641\u200c\u0647\u0627 - Abbreviations"

    invoke-static {v13, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    aput-object v13, v14, v7

    .line 481
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    const-string/jumbo v13, "\u06a9\u0627\u0644\u0648\u06a9\u06cc\u0634\u0646\u200c\u0647\u0627 - Collocations"

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    aput-object v12, v14, v4

    .line 482
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    const-string/jumbo v12, "\u0627\u0635\u0637\u0644\u0627\u062d\u0627\u062a - Idioms"

    invoke-static {v10, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v14, v11

    .line 483
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v10, "\u0627\u0641\u0639\u0627\u0644 \u062f\u0648 \u0642\u0633\u0645\u062a\u06cc - Phrasal verbs"

    invoke-static {v8, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v14, v9

    .line 479
    invoke-static {v14}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    goto :goto_1

    .line 487
    :cond_6
    new-array v14, v14, [Lkotlin/Pair;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v15, "Abbreviations"

    invoke-static {v13, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    aput-object v13, v14, v7

    .line 488
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "Collocations"

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    aput-object v12, v14, v4

    .line 489
    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v12, "Idioms"

    invoke-static {v10, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v14, v11

    .line 490
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "Phrasal verbs"

    invoke-static {v8, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    aput-object v8, v14, v9

    .line 486
    invoke-static {v14}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    .line 494
    :goto_1
    move-object v9, v1

    check-cast v9, Ljava/util/Collection;

    .line 496
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Ljava/lang/String;

    .line 499
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "p"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 494
    new-instance v10, Lfast/dic/dict/models/WordCategoryModel;

    .line 498
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v11

    .line 495
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v20, 0x1b0

    const/16 v21, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 494
    invoke-direct/range {v10 .. v21}, Lfast/dic/dict/models/WordCategoryModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 503
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_8
    iget-object v2, v0, Lfast/dic/dict/helpers/FDWordCategory;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v2}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 508
    new-instance v2, Ljava/util/Locale;

    const-string v3, "fa_IR"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    .line 509
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/Comparator;

    new-instance v3, Lfast/dic/dict/helpers/FDWordCategory$getWordsCounts$$inlined$compareBy$1;

    invoke-direct {v3, v2}, Lfast/dic/dict/helpers/FDWordCategory$getWordsCounts$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 513
    :cond_9
    check-cast v1, Ljava/lang/Iterable;

    .line 607
    new-instance v2, Lfast/dic/dict/helpers/FDWordCategory$getWordsCounts$$inlined$sortedBy$1;

    invoke-direct {v2}, Lfast/dic/dict/helpers/FDWordCategory$getWordsCounts$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    :goto_2
    check-cast v1, Ljava/util/Collection;

    .line 517
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 523
    invoke-direct {v0}, Lfast/dic/dict/helpers/FDWordCategory;->daysPassForWod()J

    move-result-wide v2

    long-to-int v2, v2

    .line 521
    new-instance v8, Lfast/dic/dict/models/WordCategoryModel;

    .line 523
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v9

    .line 522
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v18, 0x1d2

    const/16 v19, 0x0

    const/4 v10, 0x0

    .line 521
    const-string v11, "c0"

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v8 .. v19}, Lfast/dic/dict/models/WordCategoryModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 519
    invoke-interface {v1, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 529
    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDWordCategory;->getCefrLabels()Ljava/util/List;

    move-result-object v2

    .line 530
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    iget-object v0, v0, Lfast/dic/dict/helpers/FDWordCategory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-virtual {v0, v2}, Lfast/dic/dict/database/FDDatabaseManager;->getCefrLevelCounts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v1
.end method


# virtual methods
.method public final getCategories(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WordCategoryModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lfast/dic/dict/helpers/FDWordCategory;->getWordsCounts(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getCategoryCount()I
    .locals 2

    .line 140
    iget-object v0, p0, Lfast/dic/dict/helpers/FDWordCategory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    invoke-virtual {v0}, Lfast/dic/dict/database/FDDatabaseManager;->getCategoryCount()I

    move-result v0

    iget-object v1, p0, Lfast/dic/dict/helpers/FDWordCategory;->posIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lfast/dic/dict/helpers/FDWordCategory;->getCefrLevelCount()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final getCategoryWords(ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lfast/dic/dict/helpers/FDWordCategory$Filter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/CategorizedWordDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 233
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasSubscription()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    .line 234
    iget-object v2, v1, Lfast/dic/dict/helpers/FDWordCategory;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v2}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-object v0

    .line 236
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    const-string v3, "SELECT\n  w.english_word_id AS word_id,\n  w.english_word,\n  MAX(d.most_common) AS most_common,\n  REPLACE(GROUP_CONCAT(DISTINCT d.persian_meaning), \',\', \'|| \') AS persian_meaning,\n  GROUP_CONCAT(DISTINCT c.category) AS categories,\n  REPLACE(GROUP_CONCAT(DISTINCT IFNULL(c.sub_category,\'\')), \',\', \'|| \') AS sub_categories,\n  REPLACE(GROUP_CONCAT(DISTINCT IFNULL(d.cefr,\'\')), \',\', \'|| \') AS cefrs,\n  REPLACE(GROUP_CONCAT(DISTINCT IFNULL(p.pos,\'\')), \',\', \'|| \') AS poses\nFROM english_words AS w\nJOIN english_details AS d\n  ON d.english_word_id = w.english_word_id\nJOIN english_categories AS c\n  ON c.english_detail_id = d.english_detail_id\n AND c.category = ?\nLEFT JOIN english_pos AS p\n  ON p.english_detail_id = d.english_detail_id\nWHERE 1 = 1"

    .line 236
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 259
    new-array v4, v3, [Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 262
    invoke-virtual/range {p2 .. p2}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getSubCategory()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v7

    :goto_1
    if-eqz v5, :cond_3

    .line 263
    const-string v8, "\n  AND c.sub_category = ?"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getCerf()Ljava/lang/Boolean;

    move-result-object v5

    .line 269
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v5, "\n  AND d.cefr IS NOT NULL"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 270
    :cond_4
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v5, "\n  AND d.cefr IS NULL"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-nez v5, :cond_1d

    .line 271
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 276
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getMostCommon()Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 277
    const-string v5, "\n  AND d.most_common <> 0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getSearch()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    move-object v5, v7

    :goto_3
    if-eqz v5, :cond_8

    .line 282
    const-string v8, "\n  AND w.english_word LIKE ?"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "%"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_8
    const-string v5, " GROUP BY w.english_word_id, w.english_word\n ORDER BY MAX(d.most_common) DESC,\n         w.english_word,\n         MIN(d.position),\n         MIN(d.english_detail_id)"

    .line 286
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v1}, Lfast/dic/dict/helpers/FDWordCategory;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v4, Ljava/util/Collection;

    .line 562
    new-array v5, v6, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 296
    invoke-virtual {v1, v2, v4}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    .line 297
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 299
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x7

    .line 563
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object v4, v7

    goto :goto_4

    :cond_a
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    :goto_4
    const-string/jumbo v5, "||"

    const/16 v8, 0xa

    if-eqz v4, :cond_10

    :try_start_1
    move-object v9, v4

    check-cast v9, Ljava/lang/CharSequence;

    new-array v10, v3, [Ljava/lang/String;

    aput-object v5, v10, v6

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_10

    check-cast v4, Ljava/lang/Iterable;

    .line 564
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 565
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 566
    check-cast v10, Ljava/lang/String;

    .line 301
    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 566
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 567
    :cond_b
    check-cast v9, Ljava/util/List;

    .line 300
    check-cast v9, Ljava/lang/Iterable;

    .line 568
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 569
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_c
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .line 302
    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_c

    .line 569
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 570
    :cond_d
    check-cast v4, Ljava/util/List;

    .line 300
    check-cast v4, Ljava/lang/Iterable;

    .line 571
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 572
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 573
    check-cast v10, Ljava/lang/String;

    .line 303
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lfast/dic/dict/utils/IntExtKt;->getEnglishPos(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_e

    const-string v10, ""

    .line 573
    :cond_e
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 574
    :cond_f
    check-cast v9, Ljava/util/List;

    move-object/from16 v17, v9

    goto :goto_8

    :cond_10
    move-object/from16 v17, v7

    :goto_8
    const/4 v4, 0x5

    .line 575
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object v4, v7

    goto :goto_9

    :cond_11
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_9
    if-eqz v4, :cond_15

    .line 305
    move-object v9, v4

    check-cast v9, Ljava/lang/CharSequence;

    new-array v10, v3, [Ljava/lang/String;

    aput-object v5, v10, v6

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_15

    check-cast v4, Ljava/lang/Iterable;

    .line 576
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .line 577
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 578
    check-cast v10, Ljava/lang/String;

    .line 306
    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 578
    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 579
    :cond_12
    check-cast v9, Ljava/util/List;

    .line 305
    check-cast v9, Ljava/lang/Iterable;

    .line 580
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 581
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_13
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/String;

    .line 307
    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_13

    .line 581
    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 582
    :cond_14
    check-cast v4, Ljava/util/List;

    move-object v15, v4

    goto :goto_c

    :cond_15
    move-object v15, v7

    :goto_c
    const/4 v4, 0x6

    .line 583
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_16

    move-object v4, v7

    goto :goto_d

    :cond_16
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_d
    if-eqz v4, :cond_1a

    .line 310
    move-object v9, v4

    check-cast v9, Ljava/lang/CharSequence;

    new-array v10, v3, [Ljava/lang/String;

    aput-object v5, v10, v6

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1a

    check-cast v4, Ljava/lang/Iterable;

    .line 584
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 585
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 586
    check-cast v8, Ljava/lang/String;

    .line 311
    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 586
    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 587
    :cond_17
    check-cast v5, Ljava/util/List;

    .line 310
    check-cast v5, Ljava/lang/Iterable;

    .line 588
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 589
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_18
    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 312
    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_18

    .line 589
    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 590
    :cond_19
    check-cast v4, Ljava/util/List;

    move-object/from16 v16, v4

    goto :goto_10

    :cond_1a
    move-object/from16 v16, v7

    .line 314
    :goto_10
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    .line 315
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 316
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v5, "getString(...)"

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    .line 591
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1b

    move-object v13, v7

    goto :goto_11

    :cond_1b
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v13, v5

    :goto_11
    const/4 v5, 0x3

    .line 318
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x4

    .line 319
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 314
    new-instance v8, Lfast/dic/dict/models/database/CategorizedWordDto;

    invoke-direct/range {v8 .. v17}, Lfast/dic/dict/models/database/CategorizedWordDto;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 326
    :cond_1c
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    invoke-static {v1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 268
    :cond_1d
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getCefrLabels()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lfast/dic/dict/helpers/FDWordCategory;->getCefrLabelsMap()Ljava/util/List;

    move-result-object v0

    .line 63
    check-cast v0, Ljava/lang/Iterable;

    .line 540
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 541
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 542
    check-cast v2, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;

    .line 64
    invoke-virtual {v2}, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;->getEnglish()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, " "

    aput-object v6, v5, v3

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    const-string v3, ""

    .line 66
    :cond_0
    iget-object v4, p0, Lfast/dic/dict/helpers/FDWordCategory;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v4}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    invoke-virtual {v2}, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;->getPersian()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {v2}, Lfast/dic/dict/helpers/FDWordCategory$CefrLanguageLabel;->getEnglish()Ljava/lang/String;

    move-result-object v2

    .line 72
    :goto_1
    new-instance v4, Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;

    invoke-direct {v4, v2, v3}, Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 543
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getCefrLevelCount()I
    .locals 0

    .line 119
    invoke-direct {p0}, Lfast/dic/dict/helpers/FDWordCategory;->getCefrLabelsMap()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getCefrWords(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfast/dic/dict/helpers/FDWordCategory$Filter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/CategorizedWordDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    move-object/from16 v1, p0

    .line 156
    iget-object v2, v1, Lfast/dic/dict/helpers/FDWordCategory;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v2}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 158
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 169
    const-string v3, "SELECT \n    w.english_word_id AS word_id,\n    w.english_word AS english_word,\n    MAX(d.most_common) AS most_common,\n    REPLACE(GROUP_CONCAT(DISTINCT d.persian_meaning), \',\', \'|| \') AS persian_meaning,\n    REPLACE(GROUP_CONCAT(DISTINCT IFNULL(d.cefr,\'\')), \',\', \'|| \') AS cefrs\nFROM english_words w\nJOIN english_details d ON w.english_word_id = d.english_word_id\nWHERE d.cefr = ?"

    .line 158
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 173
    check-cast v3, Ljava/util/Collection;

    move-object/from16 v4, p1

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-virtual/range {p2 .. p2}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getSubCategory()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_2

    .line 184
    const-string v6, "  AND EXISTS (\n      SELECT 1 FROM english_categories c2\n      WHERE c2.english_detail_id = d.english_detail_id\n        AND c2.sub_category LIKE ?\n  )"

    .line 177
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getMostCommon()Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 191
    const-string v4, "\n  AND d.most_common <> 0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getSearch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_5

    .line 196
    const-string v7, "\n  AND w.english_word LIKE ?"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_5
    const-string v4, " GROUP BY w.english_word_id, w.english_word\n ORDER BY MAX(d.most_common) DESC,\n         w.english_word,\n         MIN(d.position),\n         MIN(d.english_detail_id)"

    .line 200
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1}, Lfast/dic/dict/helpers/FDWordCategory;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 551
    new-array v7, v4, [Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 210
    invoke-virtual {v1, v2, v3}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    .line 211
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 213
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x4

    .line 552
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v3, v5

    goto :goto_3

    :cond_6
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    if-eqz v3, :cond_a

    .line 214
    move-object v7, v3

    check-cast v7, Ljava/lang/CharSequence;

    new-array v8, v6, [Ljava/lang/String;

    const-string/jumbo v3, "||"

    aput-object v3, v8, v4

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    check-cast v3, Ljava/lang/Iterable;

    .line 553
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .line 554
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 555
    check-cast v8, Ljava/lang/String;

    .line 214
    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 555
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 556
    :cond_7
    check-cast v7, Ljava/util/List;

    .line 214
    check-cast v7, Ljava/lang/Iterable;

    .line 557
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 558
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 214
    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_8

    .line 558
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 559
    :cond_9
    check-cast v3, Ljava/util/List;

    move-object v15, v3

    goto :goto_6

    :cond_a
    move-object v15, v5

    .line 216
    :goto_6
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    .line 217
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 218
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v7, "getString(...)"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    .line 560
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_b

    move-object v12, v5

    goto :goto_7

    :cond_b
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v12, v7

    :goto_7
    const/4 v7, 0x3

    .line 220
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 216
    new-instance v7, Lfast/dic/dict/models/database/CategorizedWordDto;

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lfast/dic/dict/models/database/CategorizedWordDto;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 227
    :cond_c
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;
    .locals 0

    .line 35
    iget-object p0, p0, Lfast/dic/dict/helpers/FDWordCategory;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->getReadableDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public final getEmptyCategories(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WordCategoryModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 77
    iget-object v1, v0, Lfast/dic/dict/helpers/FDWordCategory;->databaseManager:Lfast/dic/dict/database/FDDatabaseManager;

    iget-object v2, v0, Lfast/dic/dict/helpers/FDWordCategory;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v2}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result v2

    invoke-virtual {v1, v2}, Lfast/dic/dict/database/FDDatabaseManager;->getCategoryAndPosList(Z)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 78
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 81
    iget-object v2, v0, Lfast/dic/dict/helpers/FDWordCategory;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v2}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    new-instance v2, Ljava/util/Locale;

    const-string v3, "fa_IR"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    .line 83
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/Comparator;

    new-instance v3, Lfast/dic/dict/helpers/FDWordCategory$getEmptyCategories$$inlined$compareBy$1;

    invoke-direct {v3, v2}, Lfast/dic/dict/helpers/FDWordCategory$getEmptyCategories$$inlined$compareBy$1;-><init>(Ljava/util/Comparator;)V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 87
    :cond_0
    check-cast v1, Ljava/lang/Iterable;

    .line 544
    new-instance v2, Lfast/dic/dict/helpers/FDWordCategory$getEmptyCategories$$inlined$sortedBy$1;

    invoke-direct {v2}, Lfast/dic/dict/helpers/FDWordCategory$getEmptyCategories$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    :goto_0
    check-cast v1, Ljava/util/Collection;

    .line 91
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 97
    invoke-direct {v0}, Lfast/dic/dict/helpers/FDWordCategory;->daysPassForWod()J

    move-result-wide v2

    long-to-int v2, v2

    .line 95
    new-instance v3, Lfast/dic/dict/models/WordCategoryModel;

    .line 97
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x0

    .line 96
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v13, 0x1d2

    const/4 v14, 0x0

    const/4 v5, 0x0

    .line 95
    const-string v6, "c0"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v14}, Lfast/dic/dict/models/WordCategoryModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 104
    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDWordCategory;->getCefrLabels()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 545
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 546
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 547
    check-cast v4, Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;

    .line 106
    invoke-virtual {v4}, Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;->getId()Ljava/lang/String;

    move-result-object v10

    .line 107
    invoke-virtual {v4}, Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;->getLabel()Ljava/lang/String;

    move-result-object v7

    .line 105
    new-instance v5, Lfast/dic/dict/models/WordCategoryModel;

    .line 109
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v15, 0x168

    const/16 v16, 0x0

    .line 105
    const-string v8, "c60"

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v16}, Lfast/dic/dict/models/WordCategoryModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 547
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 548
    :cond_1
    check-cast v3, Ljava/util/List;

    .line 545
    check-cast v3, Ljava/util/Collection;

    .line 103
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public final getPosWords(ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lfast/dic/dict/helpers/FDWordCategory$Filter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/CategorizedWordDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 331
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasSubscription()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p0

    .line 332
    iget-object v2, v1, Lfast/dic/dict/helpers/FDWordCategory;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v2}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-object v0

    .line 334
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 350
    const-string v3, "SELECT\n  w.english_word_id AS word_id,\n  w.english_word,\n  MAX(d.most_common) AS most_common,\n  REPLACE(GROUP_CONCAT(DISTINCT d.persian_meaning), \',\', \'|| \') AS persian_meaning,\n  REPLACE(GROUP_CONCAT(DISTINCT IFNULL(d.cefr,\'\')), \',\', \'|| \') AS cefrs\nFROM english_words AS w\nJOIN english_details AS d\n  ON d.english_word_id = w.english_word_id\nJOIN english_pos AS p\n  ON p.english_detail_id = d.english_detail_id\n AND p.pos = ?\nWHERE 1=1\n"

    .line 334
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 354
    check-cast v3, Ljava/util/Collection;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 357
    invoke-virtual/range {p2 .. p2}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getSubCategory()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_3

    .line 365
    const-string v6, "  AND EXISTS (\n      SELECT 1 FROM english_categories c2\n      WHERE c2.english_detail_id = d.english_detail_id\n        AND c2.sub_category LIKE ?\n  )"

    .line 358
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getCerf()Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x1

    .line 372
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    const-string v4, "\n  AND d.cefr IS NOT NULL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 373
    :cond_4
    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v4, "\n  AND d.cefr IS NULL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-nez v4, :cond_11

    .line 374
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 378
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getMostCommon()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 379
    const-string v4, "\n  AND d.most_common <> 0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lfast/dic/dict/helpers/FDWordCategory$Filter;->getSearch()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    move-object v4, v5

    :goto_3
    if-eqz v4, :cond_8

    .line 384
    const-string v7, "\n  AND w.english_word LIKE ?"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_8
    const-string v4, " GROUP BY w.english_word_id, w.english_word\n ORDER BY MAX(d.most_common) DESC,\n         w.english_word,\n         MIN(d.position),\n         MIN(d.english_detail_id)"

    .line 388
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v1}, Lfast/dic/dict/helpers/FDWordCategory;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 593
    new-array v4, v8, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 398
    invoke-virtual {v1, v2, v3}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    .line 399
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_9

    .line 398
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 401
    :cond_9
    :try_start_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x4

    .line 594
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v3, v5

    goto :goto_4

    :cond_a
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_e

    .line 402
    move-object v9, v3

    check-cast v9, Ljava/lang/CharSequence;

    new-array v10, v6, [Ljava/lang/String;

    const-string/jumbo v3, "||"

    aput-object v3, v10, v8

    const/4 v13, 0x6

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    check-cast v3, Ljava/lang/Iterable;

    .line 595
    new-instance v4, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 596
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 597
    check-cast v7, Ljava/lang/String;

    .line 402
    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 597
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 598
    :cond_b
    check-cast v4, Ljava/util/List;

    .line 402
    check-cast v4, Ljava/lang/Iterable;

    .line 599
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 600
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    .line 402
    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_c

    .line 600
    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 601
    :cond_d
    check-cast v3, Ljava/util/List;

    move-object/from16 v17, v3

    goto :goto_7

    :cond_e
    move-object/from16 v17, v5

    .line 405
    :cond_f
    :goto_7
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    .line 406
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 407
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v4, "getString(...)"

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 602
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_10

    move-object v14, v5

    goto :goto_8

    :cond_10
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v14, v4

    :goto_8
    const/4 v4, 0x3

    .line 409
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 405
    new-instance v9, Lfast/dic/dict/models/database/CategorizedWordDto;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lfast/dic/dict/models/database/CategorizedWordDto;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_f

    .line 416
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 371
    :cond_11
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final getWords(ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lfast/dic/dict/helpers/FDWordCategory$Filter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/CategorizedWordDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lfast/dic/dict/helpers/FDWordCategory;->posIds:Ljava/util/List;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/helpers/FDWordCategory;->getPosWords(ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 146
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/helpers/FDWordCategory;->getCategoryWords(ILfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getWords(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfast/dic/dict/helpers/FDWordCategory$Filter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/CategorizedWordDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/helpers/FDWordCategory;->getCefrWords(Ljava/lang/String;Lfast/dic/dict/helpers/FDWordCategory$Filter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
