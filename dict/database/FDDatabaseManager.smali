.class public final Lfast/dic/dict/database/FDDatabaseManager;
.super Ljava/lang/Object;
.source "FDDatabaseManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/database/FDDatabaseManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDDatabaseManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDDatabaseManager.kt\nfast/dic/dict/database/FDDatabaseManager\n+ 2 Cursor.kt\nandroidx/core/database/CursorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,1746:1\n110#2:1747\n72#2:1748\n110#2:1749\n72#2:1750\n72#2:1751\n110#2:1752\n72#2:1753\n72#2:1754\n72#2:1755\n110#2:1756\n110#2:1757\n110#2:1758\n110#2:1759\n72#2:1760\n110#2:1761\n72#2:1762\n72#2:1763\n110#2:1764\n110#2:1765\n110#2:1766\n72#2:1767\n72#2:1768\n72#2:1769\n110#2:1770\n72#2:1771\n72#2:1772\n72#2:1773\n110#2:1774\n110#2:1775\n110#2:1776\n110#2:1777\n72#2:1778\n110#2:1779\n72#2:1780\n72#2:1781\n110#2:1782\n110#2:1783\n110#2:1784\n72#2:1785\n72#2:1786\n72#2:1787\n110#2:1788\n72#2:1789\n72#2:1790\n72#2:1791\n110#2:1792\n110#2:1793\n110#2:1794\n110#2:1795\n72#2:1796\n110#2:1797\n72#2:1798\n72#2:1799\n110#2:1800\n110#2:1801\n72#2:1802\n110#2:1812\n110#2:1813\n110#2:1837\n110#2:1838\n72#2:1862\n72#2:1863\n110#2:1864\n110#2:1868\n110#2:1872\n72#2:1882\n72#2:1883\n1960#3,3:1803\n2945#3,3:1806\n296#3,2:1810\n2945#3,3:1865\n2945#3,3:1869\n2945#3,3:1873\n2945#3,3:1876\n777#3:1879\n873#3,2:1880\n1#4:1809\n106#5:1814\n78#5,22:1815\n106#5:1839\n78#5,22:1840\n*S KotlinDebug\n*F\n+ 1 FDDatabaseManager.kt\nfast/dic/dict/database/FDDatabaseManager\n*L\n336#1:1747\n337#1:1748\n351#1:1749\n379#1:1750\n380#1:1751\n381#1:1752\n382#1:1753\n383#1:1754\n384#1:1755\n385#1:1756\n386#1:1757\n415#1:1758\n419#1:1759\n420#1:1760\n421#1:1761\n428#1:1762\n429#1:1763\n432#1:1764\n433#1:1765\n480#1:1766\n481#1:1767\n529#1:1768\n530#1:1769\n531#1:1770\n537#1:1771\n538#1:1772\n539#1:1773\n540#1:1774\n541#1:1775\n567#1:1776\n572#1:1777\n573#1:1778\n574#1:1779\n584#1:1780\n585#1:1781\n591#1:1782\n592#1:1783\n653#1:1784\n654#1:1785\n702#1:1786\n703#1:1787\n704#1:1788\n705#1:1789\n706#1:1790\n707#1:1791\n708#1:1792\n709#1:1793\n741#1:1794\n746#1:1795\n747#1:1796\n748#1:1797\n758#1:1798\n759#1:1799\n765#1:1800\n766#1:1801\n922#1:1802\n1213#1:1812\n1215#1:1813\n1245#1:1837\n1247#1:1838\n1435#1:1862\n1439#1:1863\n1493#1:1864\n1541#1:1868\n1589#1:1872\n1665#1:1882\n1687#1:1883\n1073#1:1803,3\n1091#1:1806,3\n1173#1:1810,2\n1494#1:1865,3\n1542#1:1869,3\n1590#1:1873,3\n1620#1:1876,3\n1628#1:1879\n1628#1:1880,2\n1217#1:1814\n1217#1:1815,22\n1250#1:1839\n1250#1:1840,22\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\u0008\u0007\u0018\u0000 h2\u00020\u0001:\u0001hB#\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0008\u0001\u0010\u0004\u001a\u00020\u0005:\u0002\u0008\u0006\u001a\u0002\u0008\t\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u0014\u001a\u00020\u0015J)\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0010\u0008\u0002\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001bH\u0002\u00a2\u0006\u0002\u0010\u001cJ~\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 2)\u0010!\u001a%\u0012\u0015\u0012\u0013\u0018\u00010\u0019\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(%\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\'0&0\"2\'\u0010(\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\'0&\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008()\u0012\u0004\u0012\u00020\u00150\"H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J\u000e\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\'0&H\u0002J,\u0010.\u001a\u0004\u0018\u00010\u00192\u0006\u0010/\u001a\u00020\u00192\u0006\u00100\u001a\u000201H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J*\u00102\u001a\u0002032\u0006\u00100\u001a\u0002012\u0006\u0010/\u001a\u00020\u0019H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J*\u00104\u001a\u0002032\u0006\u00100\u001a\u0002012\u0006\u00105\u001a\u00020 H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J*\u00106\u001a\u0002032\u0006\u00100\u001a\u0002012\u0006\u0010/\u001a\u00020\u0019H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J*\u00107\u001a\u00020\u00192\u0006\u00100\u001a\u0002012\u0006\u00105\u001a\u00020 H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J\"\u00108\u001a\u0002092\u0006\u0010/\u001a\u00020\u0019H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J:\u0010:\u001a\u0012\u0012\u0004\u0012\u00020\u00190;j\u0008\u0012\u0004\u0012\u00020\u0019`<2\u0006\u00100\u001a\u0002012\u0006\u00105\u001a\u00020 H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J\u001c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\u00190&2\u0006\u00100\u001a\u0002012\u0006\u0010>\u001a\u00020 J \u0010?\u001a\u0008\u0012\u0004\u0012\u00020@0&H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020 0&J\u0006\u0010B\u001a\u00020 J\u0017\u0010C\u001a\u0004\u0018\u00010@2\u0008\u0010D\u001a\u0004\u0018\u00010 \u00a2\u0006\u0002\u0010EJ\u001f\u0010F\u001a\u0004\u0018\u00010\u00192\u0008\u0010D\u001a\u0004\u0018\u00010 2\u0006\u0010G\u001a\u00020H\u00a2\u0006\u0002\u0010IJ\u0014\u0010J\u001a\u0008\u0012\u0004\u0012\u00020K0&2\u0006\u0010G\u001a\u00020HJ\u001a\u0010L\u001a\u0008\u0012\u0004\u0012\u00020K0&2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020N0&J\"\u0010O\u001a\u00020P2\u0006\u00105\u001a\u00020 H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J0\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020R0&2\u0006\u00100\u001a\u0002012\u0006\u0010S\u001a\u00020 H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J(\u0010T\u001a\u0008\u0012\u0004\u0012\u00020U0&2\u0006\u0010V\u001a\u00020 H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J0\u0010W\u001a\u0008\u0012\u0004\u0012\u00020X0&2\u0006\u00100\u001a\u0002012\u0006\u0010V\u001a\u00020 H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J0\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020Z0&2\u0006\u00100\u001a\u0002012\u0006\u0010S\u001a\u00020 H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J\u000e\u0010[\u001a\u00020\\2\u0006\u00105\u001a\u00020 J(\u0010]\u001a\u0008\u0012\u0004\u0012\u00020^0&2\u0006\u00105\u001a\u00020 H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J(\u0010_\u001a\u0008\u0012\u0004\u0012\u00020^0&2\u0006\u00105\u001a\u00020 H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J(\u0010`\u001a\u0008\u0012\u0004\u0012\u00020^0&2\u0006\u00105\u001a\u00020 H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,J\u001c\u0010a\u001a\u0008\u0012\u0004\u0012\u00020b0&2\u000c\u0010c\u001a\u0008\u0012\u0004\u0012\u00020^0&H\u0002J1\u0010d\u001a\u0004\u0018\u00010 2\u0006\u00100\u001a\u0002012\u0006\u0010/\u001a\u00020\u0019H\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,\u00a2\u0006\u0002\u0010eJ<\u0010f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190&2\u0006\u00100\u001a\u0002012\u0006\u00105\u001a\u00020 2\u0008\u0010g\u001a\u0004\u0018\u00010\u000fH\u0007b\u0010\u0008*\u0012\u000c\u0008+\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(,R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0004\u001a\u00020\u00058\u0002X\u0083\u0004\u0092\u0002\u0002\u0008\u0006\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008j\u00a8\u0006i"
    }
    d2 = {
        "Lfast/dic/dict/database/FDDatabaseManager;",
        "",
        "databaseHelper",
        "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
        "context",
        "Landroid/content/Context;",
        "Ldagger/hilt/android/qualifiers/ApplicationContext;",
        "<init>",
        "(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Landroid/content/Context;)V",
        "Ljavax/inject/Inject;",
        "logger",
        "Lfast/dic/dict/utils/Logger;",
        "stringUtils",
        "Lfast/dic/dict/utils/StringUtils;",
        "database",
        "Lnet/zetetic/database/sqlcipher/SQLiteDatabase;",
        "getDatabase",
        "()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;",
        "searchJob",
        "Lkotlinx/coroutines/Job;",
        "close",
        "",
        "safeRawQuery",
        "Landroid/database/Cursor;",
        "query",
        "",
        "args",
        "",
        "(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;",
        "search",
        "finalWord",
        "limitNo",
        "",
        "needHistoryCallback",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "historyForWord",
        "",
        "Lfast/dic/dict/models/database/ListModel;",
        "callback",
        "words",
        "Landroid/annotation/SuppressLint;",
        "value",
        "Range",
        "getTranslatePlaceHolder",
        "getMeaningByWord",
        "word",
        "type",
        "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
        "getDetailByWord",
        "Lfast/dic/dict/models/database/SearchResultModel;",
        "getDetailByWordId",
        "wordId",
        "getDetailByWordGetOtherFormOfWord",
        "getWordById",
        "getWordFamily",
        "Lfast/dic/dict/models/database/EnglishWordFamily;",
        "getWordMeanings",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getCategories",
        "detailId",
        "getAllCategories",
        "Lfast/dic/dict/models/database/WordCategoryNameDto;",
        "getAllCategoryIds",
        "getCategoryCount",
        "findCategoryById",
        "categoryId",
        "(Ljava/lang/Integer;)Lfast/dic/dict/models/database/WordCategoryNameDto;",
        "getCategoryNameById",
        "isCurrentLanguagePersian",
        "",
        "(Ljava/lang/Integer;Z)Ljava/lang/String;",
        "getCategoryAndPosList",
        "Lfast/dic/dict/models/WordCategoryModel;",
        "getCefrLevelCounts",
        "labels",
        "Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;",
        "getAudios",
        "Lfast/dic/dict/models/database/EnglishAudiosModel;",
        "getPos",
        "Lfast/dic/dict/models/database/PosModel;",
        "detail_id",
        "getEnglishSynonymsAntonyms",
        "Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;",
        "word_id",
        "getSynonymsAntonyms",
        "Lfast/dic/dict/models/database/PersianSynonymsAntonyms;",
        "getSentences",
        "Lfast/dic/dict/models/database/SentenseModel;",
        "getEnglishPOSs",
        "Lfast/dic/dict/models/database/EnglishIdiomsModel;",
        "getEnglishPhrasalVerbs",
        "Lfast/dic/dict/models/database/EnglishIdiomModel;",
        "getEnglishCollocations",
        "getEnglishIdioms",
        "groupIdiomMeanings",
        "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
        "idioms",
        "getWordIdParent",
        "(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;)Ljava/lang/Integer;",
        "getMeanings",
        "db",
        "Companion",
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


# static fields
.field public static final Companion:Lfast/dic/dict/database/FDDatabaseManager$Companion;

.field private static final MAX_LENGTH_DB_SEARCH:I = 0x64

.field private static final MAX_LENGTH_LAV:I = 0xa

.field private static final ignoreMultiNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
    .end annotation
.end field

.field private final databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

.field private final logger:Lfast/dic/dict/utils/Logger;

.field private searchJob:Lkotlinx/coroutines/Job;

.field private final stringUtils:Lfast/dic/dict/utils/StringUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/database/FDDatabaseManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/database/FDDatabaseManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/database/FDDatabaseManager;->Companion:Lfast/dic/dict/database/FDDatabaseManager$Companion;

    const/16 v0, 0x3a

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/database/FDDatabaseManager;->ignoreMultiNames:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Landroid/content/Context;)V
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "databaseHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    .line 56
    iput-object p2, p0, Lfast/dic/dict/database/FDDatabaseManager;->context:Landroid/content/Context;

    .line 65
    sget-object p1, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {p1}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    .line 67
    new-instance p1, Lfast/dic/dict/utils/StringUtils;

    invoke-direct {p1}, Lfast/dic/dict/utils/StringUtils;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/database/FDDatabaseManager;->stringUtils:Lfast/dic/dict/utils/StringUtils;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lfast/dic/dict/database/FDDatabaseManager;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lfast/dic/dict/database/FDDatabaseManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDatabaseHelper$p(Lfast/dic/dict/database/FDDatabaseManager;)Lfast/dic/dict/helpers/FDMainDatabaseHelper;
    .locals 0

    .line 53
    iget-object p0, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lfast/dic/dict/database/FDDatabaseManager;)Lfast/dic/dict/utils/Logger;
    .locals 0

    .line 53
    iget-object p0, p0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    return-object p0
.end method

.method public static final synthetic access$getStringUtils$p(Lfast/dic/dict/database/FDDatabaseManager;)Lfast/dic/dict/utils/StringUtils;
    .locals 0

    .line 53
    iget-object p0, p0, Lfast/dic/dict/database/FDDatabaseManager;->stringUtils:Lfast/dic/dict/utils/StringUtils;

    return-object p0
.end method

.method public static final synthetic access$getTranslatePlaceHolder(Lfast/dic/dict/database/FDDatabaseManager;)Ljava/util/List;
    .locals 0

    .line 53
    invoke-direct {p0}, Lfast/dic/dict/database/FDDatabaseManager;->getTranslatePlaceHolder()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$safeRawQuery(Lfast/dic/dict/database/FDDatabaseManager;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private final getTranslatePlaceHolder()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v1, v0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 231
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 232
    new-instance v3, Lfast/dic/dict/models/database/ListModel;

    const v25, 0x1fffff

    const/16 v26, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

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

    invoke-direct/range {v3 .. v26}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x1

    .line 233
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lfast/dic/dict/models/database/ListModel;->setTranslator(Ljava/lang/Boolean;)V

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 236
    invoke-virtual {v3, v4}, Lfast/dic/dict/models/database/ListModel;->setLoggedIn(Z)V

    .line 237
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getTranslatorMaxLength()I

    move-result v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setMaxTranslatorLength(I)V

    .line 238
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getTranslatorSearchedWords()I

    move-result v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setTranslatorCount(I)V

    .line 239
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v0}, Lfast/dic/dict/models/database/ListModel;->setHasSubscription(Ljava/lang/Boolean;)V

    .line 242
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private final groupIdiomMeanings(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomModel;",
            ">;)",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
            ">;"
        }
    .end annotation

    .line 1617
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1619
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/models/database/EnglishIdiomModel;

    .line 1620
    move-object v2, p0

    check-cast v2, Ljava/lang/Iterable;

    .line 1876
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1877
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;

    .line 1620
    invoke-virtual {v3}, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;->getEnglishIdiomId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Lfast/dic/dict/models/database/EnglishIdiomModel;->getEnglishIdiomId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1624
    :cond_2
    :goto_1
    new-instance v2, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;

    invoke-direct {v2}, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;-><init>()V

    .line 1625
    invoke-virtual {v1}, Lfast/dic/dict/models/database/EnglishIdiomModel;->getEnglishWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;->setEnglishWord(Ljava/lang/String;)V

    .line 1626
    invoke-virtual {v1}, Lfast/dic/dict/models/database/EnglishIdiomModel;->getEnglishIdiomId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;->setEnglishIdiomId(Ljava/lang/Integer;)V

    .line 1627
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1628
    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    .line 1879
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 1880
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lfast/dic/dict/models/database/EnglishIdiomModel;

    .line 1628
    invoke-virtual {v7}, Lfast/dic/dict/models/database/EnglishIdiomModel;->getEnglishIdiomId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1}, Lfast/dic/dict/models/database/EnglishIdiomModel;->getEnglishIdiomId()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1880
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1881
    :cond_4
    check-cast v5, Ljava/util/List;

    .line 1630
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfast/dic/dict/models/database/EnglishIdiomModel;

    .line 1631
    invoke-virtual {v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->getPersianMeaning()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1634
    :cond_5
    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;->setPersianMeanings(Ljava/util/List;)V

    .line 1636
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1639
    :cond_6
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lfast/dic/dict/database/FDDatabaseManager;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    return-object v0

    .line 83
    :catch_0
    :try_start_1
    iget-object p0, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->getReadableDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 85
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p1, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic safeRawQuery$default(Lfast/dic/dict/database/FDDatabaseManager;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Object;)Landroid/database/Cursor;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 77
    :cond_0
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lfast/dic/dict/database/FDDatabaseManager;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->close()V

    :cond_0
    return-void
.end method

.method public final findCategoryById(Ljava/lang/Integer;)Lfast/dic/dict/models/database/WordCategoryNameDto;
    .locals 8

    .line 1019
    const-string/jumbo v0, "|"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 1021
    :cond_0
    new-instance v2, Lfast/dic/dict/models/database/WordCategoryNameDto;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lfast/dic/dict/models/database/WordCategoryNameDto;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1023
    iget-object v3, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v3}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    const/4 v3, 0x1

    .line 1030
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "SELECT * FROM category_names WHERE id = ?"

    invoke-direct {p0, p1, v3}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 1032
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1033
    iget-object v1, p0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    const-string v3, "\n------------------ Categories -------------------\n"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    :cond_3
    :try_start_0
    const-string v1, "id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_4

    .line 1039
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lfast/dic/dict/models/database/WordCategoryNameDto;->setId(I)V

    .line 1042
    :cond_4
    const-string v1, "persian_category_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_5

    .line 1045
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1044
    invoke-virtual {v2, v1}, Lfast/dic/dict/models/database/WordCategoryNameDto;->setPersianCategoryName(Ljava/lang/String;)V

    .line 1048
    :cond_5
    const-string v1, "english_category_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_6

    .line 1051
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1050
    invoke-virtual {v2, v1}, Lfast/dic/dict/models/database/WordCategoryNameDto;->setEnglishCategoryName(Ljava/lang/String;)V

    .line 1054
    :cond_6
    iget-object v1, p0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    invoke-virtual {v2}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getId()I

    move-result v3

    invoke-virtual {v2}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getPersianCategoryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getEnglishCategoryName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :catch_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1058
    iget-object p0, p0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    const-string v0, "\n------------------------------------------------\n"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1061
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public final getAllCategories()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/WordCategoryNameDto;",
            ">;"
        }
    .end annotation

    .line 936
    const-string/jumbo v0, "|"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 938
    iget-object v2, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v2}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 940
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 943
    :cond_0
    const-string v2, "SELECT * FROM category_names WHERE is_my_words == 1"

    const/4 v3, 0x0

    .line 945
    invoke-direct {p0, v2, v3}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    .line 947
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 948
    iget-object v3, p0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    const-string v4, "\n------------------ Categories -------------------\n"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 951
    :cond_2
    :try_start_0
    new-instance v7, Lfast/dic/dict/models/database/WordCategoryNameDto;

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lfast/dic/dict/models/database/WordCategoryNameDto;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 952
    const-string v3, "id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v7, v3}, Lfast/dic/dict/models/database/WordCategoryNameDto;->setId(I)V

    .line 954
    const-string v3, "persian_category_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 953
    invoke-virtual {v7, v3}, Lfast/dic/dict/models/database/WordCategoryNameDto;->setPersianCategoryName(Ljava/lang/String;)V

    .line 956
    const-string v3, "english_category_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 955
    invoke-virtual {v7, v3}, Lfast/dic/dict/models/database/WordCategoryNameDto;->setEnglishCategoryName(Ljava/lang/String;)V

    .line 958
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v3, p0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    invoke-virtual {v7}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getId()I

    move-result v4

    invoke-virtual {v7}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getPersianCategoryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getEnglishCategoryName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :catch_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 964
    iget-object p0, p0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    const-string v0, "\n------------------------------------------------\n"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 968
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public final getAllCategoryIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 974
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 976
    iget-object v1, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v1}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v1

    if-nez v1, :cond_0

    .line 978
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 981
    :cond_0
    const-string v1, "SELECT id FROM category_names WHERE is_my_words == 1"

    const/4 v2, 0x0

    .line 983
    invoke-direct {p0, v1, v2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 985
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 988
    :cond_2
    :try_start_0
    const-string v1, "id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    .line 990
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :catch_0
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 997
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public final getAudios(I)Lfast/dic/dict/models/database/EnglishAudiosModel;
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string v2, "SELECT filename, phonetic FROM english_american_audios WHERE english_word_id = "

    .line 1192
    new-instance v3, Lfast/dic/dict/models/database/EnglishAudiosModel;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v4, v5, v4}, Lfast/dic/dict/models/database/EnglishAudiosModel;-><init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1193
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/List;

    .line 1194
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .line 1196
    iget-object v8, v1, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v8}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_b

    .line 1203
    :cond_0
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1204
    invoke-direct {v1, v2, v4}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_b

    .line 1207
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v10, 0x20

    const-string v11, ""

    const-string v12, "[^\\p{Print}\\s]"

    const-string v13, "phonetic"

    const-string v14, "filename"

    if-lez v9, :cond_c

    .line 1209
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v9, :cond_c

    .line 1213
    :goto_0
    :try_start_2
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1812
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object v9, v4

    goto :goto_1

    :cond_2
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/16 v16, 0x1

    .line 1215
    :try_start_3
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1813
    invoke-interface {v2, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object v15, v4

    goto :goto_2

    :cond_3
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :goto_2
    if-eqz v9, :cond_a

    .line 1216
    check-cast v9, Ljava/lang/CharSequence;

    new-instance v8, Lkotlin/text/Regex;

    invoke-direct {v8, v12}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v11}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 1814
    check-cast v8, Ljava/lang/CharSequence;

    .line 1816
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/4 v4, 0x0

    const/16 v18, 0x0

    :goto_3
    if-gt v4, v9, :cond_9

    if-nez v18, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, v9

    .line 1821
    :goto_4
    invoke-interface {v8, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-gt v5, v10, :cond_5

    move/from16 v5, v16

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-nez v18, :cond_7

    if-nez v5, :cond_6

    move/from16 v18, v16

    goto :goto_6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    if-nez v5, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v9, v9, -0x1

    :goto_6
    const/4 v5, 0x3

    goto :goto_3

    :cond_9
    :goto_7
    add-int/lit8 v9, v9, 0x1

    .line 1836
    invoke-interface {v8, v4, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1814
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    .line 1218
    :goto_8
    new-instance v5, Lfast/dic/dict/models/database/EnglishAudioModel;

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-direct {v5, v8, v8, v9, v8}, Lfast/dic/dict/models/database/EnglishAudioModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1219
    invoke-virtual {v5, v4}, Lfast/dic/dict/models/database/EnglishAudioModel;->setFilename(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v5, v15}, Lfast/dic/dict/models/database/EnglishAudioModel;->setPhonetic(Ljava/lang/String;)V

    .line 1218
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_0
    const/16 v16, 0x1

    .line 1224
    :catch_1
    :goto_9
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_a

    :cond_b
    const/4 v4, 0x0

    const/4 v5, 0x3

    goto/16 :goto_0

    :cond_c
    const/16 v16, 0x1

    .line 1227
    :goto_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 1235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SELECT filename, phonetic FROM english_british_audios WHERE english_word_id = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    .line 1236
    invoke-direct {v1, v0, v8}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_d

    :goto_b
    return-object v3

    .line 1239
    :cond_d
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_18

    .line 1241
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1245
    :cond_e
    :try_start_5
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1837
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v8, 0x0

    goto :goto_c

    :cond_f
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1247
    :goto_c
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1838
    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v0, 0x0

    goto :goto_d

    :cond_10
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    if-eqz v8, :cond_17

    .line 1248
    check-cast v8, Ljava/lang/CharSequence;

    .line 1249
    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v12}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v2, v8, v11}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 1839
    check-cast v2, Ljava/lang/CharSequence;

    .line 1841
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_e
    if-gt v5, v4, :cond_16

    if-nez v8, :cond_11

    move v9, v5

    goto :goto_f

    :cond_11
    move v9, v4

    .line 1846
    :goto_f
    invoke-interface {v2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-gt v9, v10, :cond_12

    move/from16 v9, v16

    goto :goto_10

    :cond_12
    const/4 v9, 0x0

    :goto_10
    if-nez v8, :cond_14

    if-nez v9, :cond_13

    move/from16 v8, v16

    goto :goto_e

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_14
    if-nez v9, :cond_15

    goto :goto_11

    :cond_15
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_16
    :goto_11
    add-int/lit8 v4, v4, 0x1

    .line 1861
    invoke-interface {v2, v5, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1839
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_12

    :cond_17
    const/4 v8, 0x0

    .line 1251
    :goto_12
    new-instance v2, Lfast/dic/dict/models/database/EnglishAudioModel;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v4, 0x0

    const/4 v9, 0x3

    :try_start_6
    invoke-direct {v2, v4, v4, v9, v4}, Lfast/dic/dict/models/database/EnglishAudioModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1252
    invoke-virtual {v2, v8}, Lfast/dic/dict/models/database/EnglishAudioModel;->setFilename(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {v2, v0}, Lfast/dic/dict/models/database/EnglishAudioModel;->setPhonetic(Ljava/lang/String;)V

    .line 1251
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_14

    :catch_2
    move-exception v0

    goto :goto_13

    :catch_3
    move-exception v0

    const/4 v4, 0x0

    const/4 v9, 0x3

    .line 1256
    :goto_13
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1258
    :goto_14
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1261
    :cond_18
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1262
    invoke-virtual {v3, v6}, Lfast/dic/dict/models/database/EnglishAudiosModel;->setAmerican(Ljava/util/List;)V

    .line 1263
    invoke-virtual {v3, v7}, Lfast/dic/dict/models/database/EnglishAudiosModel;->setBritish(Ljava/util/List;)V

    return-object v3

    :catch_4
    move-exception v0

    .line 1229
    iget-object v1, v1, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "~~~> SQLiteException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1231
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    return-object v3
.end method

.method public final getCategories(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 911
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v1, :cond_0

    .line 912
    const-string p1, "SELECT category FROM english_categories WHERE english_detail_id = ?"

    goto :goto_0

    .line 913
    :cond_0
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v1, :cond_1

    .line 914
    const-string p1, "SELECT category FROM persian_categories WHERE persian_detail_id = ?"

    goto :goto_0

    .line 913
    :cond_1
    const-string p1, ""

    .line 917
    :goto_0
    invoke-virtual {p0}, Lfast/dic/dict/database/FDDatabaseManager;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_6

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v1}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    .line 918
    :cond_2
    new-instance p1, Lfast/dic/dict/utils/FDCategory;

    invoke-direct {p1}, Lfast/dic/dict/utils/FDCategory;-><init>()V

    .line 920
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1802
    :cond_3
    invoke-interface {p0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_1

    :cond_4
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_5

    .line 924
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Lfast/dic/dict/utils/FDCategory;->find(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 926
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_3

    .line 928
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    return-object v0
.end method

.method public final getCategoryAndPosList(Z)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WordCategoryModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1083
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 1085
    invoke-virtual {v0}, Lfast/dic/dict/database/FDDatabaseManager;->getAllCategories()Ljava/util/List;

    move-result-object v2

    .line 1087
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, " - "

    const-string v5, "substring(...)"

    const-string/jumbo v6, "toUpperCase(...)"

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfast/dic/dict/models/database/WordCategoryNameDto;

    if-eqz p1, :cond_7

    .line 1089
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    invoke-virtual {v3}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getPersianCategoryName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    sget-object v12, Lfast/dic/dict/database/FDDatabaseManager;->ignoreMultiNames:Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    .line 1806
    instance-of v13, v12, Ljava/util/Collection;

    if-eqz v13, :cond_0

    move-object v13, v12

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_1

    .line 1807
    :cond_0
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 1091
    invoke-virtual {v3}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getId()I

    move-result v14

    if-ne v13, v14, :cond_1

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {v3}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getEnglishCategoryName()Ljava/lang/String;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    if-eqz v12, :cond_6

    invoke-static {v12}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_3

    .line 1092
    :cond_3
    invoke-virtual {v3}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getEnglishCategoryName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    move-object v8, v12

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    move-object v8, v12

    :cond_5
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    :cond_6
    :goto_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 1096
    :cond_7
    invoke-virtual {v3}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getEnglishCategoryName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_8
    move-object v13, v4

    goto :goto_5

    :cond_9
    :goto_4
    move-object v13, v8

    .line 1101
    :goto_5
    invoke-virtual {v3}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getId()I

    move-result v4

    .line 1103
    invoke-virtual {v3}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getId()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "c"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1100
    new-instance v11, Lfast/dic/dict/models/WordCategoryModel;

    .line 1106
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1101
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v21, 0x190

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 1100
    invoke-direct/range {v11 .. v22}, Lfast/dic/dict/models/WordCategoryModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1099
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x4

    .line 1112
    new-array v2, v2, [Ljava/lang/Integer;

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x2

    aput-object v3, v2, v11

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x3

    aput-object v3, v2, v11

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 1114
    sget-object v11, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    invoke-virtual {v0, v11, v3}, Lfast/dic/dict/database/FDDatabaseManager;->getPos(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lfast/dic/dict/models/database/PosModel;

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lfast/dic/dict/models/database/PosModel;->getPos()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_b
    move-object v11, v8

    .line 1115
    :goto_7
    sget-object v12, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    invoke-virtual {v0, v12, v3}, Lfast/dic/dict/database/FDDatabaseManager;->getPos(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lfast/dic/dict/models/database/PosModel;

    if-eqz v12, :cond_c

    invoke-virtual {v12}, Lfast/dic/dict/models/database/PosModel;->getPos()Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_c
    move-object v12, v8

    :goto_8
    if-eqz p1, :cond_11

    .line 1118
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1119
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    move-object v11, v12

    check-cast v11, Ljava/lang/CharSequence;

    if-eqz v11, :cond_f

    invoke-static {v11}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_9

    .line 1121
    :cond_d
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    :cond_f
    :goto_9
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_10
    :goto_a
    move-object v15, v12

    goto :goto_b

    :cond_11
    if-eqz v12, :cond_12

    .line 1125
    move-object v11, v12

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v12, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_a

    :cond_12
    move-object v15, v8

    .line 1132
    :goto_b
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "p"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1129
    new-instance v13, Lfast/dic/dict/models/WordCategoryModel;

    .line 1135
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1130
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v23, 0x190

    const/16 v24, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 1129
    invoke-direct/range {v13 .. v24}, Lfast/dic/dict/models/WordCategoryModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1128
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_13
    return-object v1
.end method

.method public final getCategoryCount()I
    .locals 3

    .line 1003
    iget-object v0, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1006
    :cond_0
    const-string v0, "SELECT COUNT(*) FROM category_names WHERE is_my_words == 1"

    const/4 v2, 0x0

    .line 1007
    invoke-direct {p0, v0, v2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 1010
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1011
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1013
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public final getCategoryNameById(Ljava/lang/Integer;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1069
    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/database/FDDatabaseManager;->findCategoryById(Ljava/lang/Integer;)Lfast/dic/dict/models/database/WordCategoryNameDto;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    if-eqz p2, :cond_7

    .line 1073
    sget-object p1, Lfast/dic/dict/database/FDDatabaseManager;->ignoreMultiNames:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 1803
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1804
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 1073
    invoke-virtual {p0}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getId()I

    move-result v0

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getEnglishCategoryName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getEnglishCategoryName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    :goto_1
    const-string p1, ""

    .line 1074
    :goto_2
    invoke-virtual {p0}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getPersianCategoryName()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1076
    :cond_7
    invoke-virtual {p0}, Lfast/dic/dict/models/database/WordCategoryNameDto;->getEnglishCategoryName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCefrLevelCounts(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;",
            ">;)",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WordCategoryModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "labels"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 1166
    const-string v2, "SELECT \n    d.cefr,\n    COUNT(DISTINCT w.english_word_id) AS word_count\nFROM english_words w\nLEFT JOIN english_details d ON w.english_word_id = d.english_word_id\nWHERE d.cefr IS NOT NULL AND d.cefr != \'\'\nGROUP BY d.cefr\nORDER BY \n    CASE d.cefr\n        WHEN \'A1\' THEN 1\n        WHEN \'A2\' THEN 2\n        WHEN \'B1\' THEN 3\n        WHEN \'B2\' THEN 4\n        WHEN \'C1\' THEN 5\n        WHEN \'C2\' THEN 6\n        ELSE 7\n    END;"

    const/4 v3, 0x0

    move-object/from16 v4, p0

    invoke-direct {v4, v2, v3}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    .line 1168
    :cond_0
    check-cast v2, Ljava/io/Closeable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Landroid/database/Cursor;

    .line 1169
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    .line 1170
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    move-object v10, v5

    const/4 v5, 0x1

    .line 1171
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1173
    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    .line 1810
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;

    invoke-virtual {v8}, Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;->component2()Ljava/lang/String;

    move-result-object v8

    .line 1173
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_3
    move-object v7, v3

    :goto_1
    check-cast v7, Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;

    if-eqz v7, :cond_4

    .line 1178
    invoke-virtual {v7}, Lfast/dic/dict/helpers/FDWordCategory$CefrLabel;->getLabel()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    move v6, v5

    .line 1176
    new-instance v5, Lfast/dic/dict/models/WordCategoryModel;

    .line 1179
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1181
    const-string v8, "c60"

    const/16 v15, 0x168

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 1176
    invoke-direct/range {v5 .. v16}, Lfast/dic/dict/models/WordCategoryModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1175
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1185
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;
    .locals 0

    .line 69
    iget-object p0, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->getReadableDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public final getDetailByWord(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;)Lfast/dic/dict/models/database/SearchResultModel;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "word"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    iget-object v3, v0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "===== Start GetDetailByWord = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 310
    new-instance v6, Lfast/dic/dict/models/database/SearchResultModel;

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lfast/dic/dict/models/database/SearchResultModel;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lfast/dic/dict/models/database/EnglishSearchResultModel;Lfast/dic/dict/models/database/PersianSearchResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    .line 312
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    if-lt v3, v4, :cond_1

    .line 313
    new-instance v6, Lfast/dic/dict/models/database/SearchResultModel;

    const/16 v11, 0xf

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lfast/dic/dict/models/database/SearchResultModel;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lfast/dic/dict/models/database/EnglishSearchResultModel;Lfast/dic/dict/models/database/PersianSearchResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    .line 316
    :cond_1
    new-instance v7, Lfast/dic/dict/models/database/SearchResultModel;

    const/16 v12, 0xf

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lfast/dic/dict/models/database/SearchResultModel;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lfast/dic/dict/models/database/EnglishSearchResultModel;Lfast/dic/dict/models/database/PersianSearchResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 317
    iget-object v3, v0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v3}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_24

    .line 322
    :cond_2
    iget-object v3, v0, Lfast/dic/dict/database/FDDatabaseManager;->stringUtils:Lfast/dic/dict/utils/StringUtils;

    invoke-virtual {v3, v2}, Lfast/dic/dict/utils/StringUtils;->trimmingAndLowerCaseWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_3

    move-object v2, v3

    .line 324
    :cond_3
    sget-object v4, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/4 v6, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x1

    if-ne v1, v4, :cond_23

    .line 327
    new-instance v15, Lfast/dic/dict/models/database/EnglishSearchResultModel;

    const v35, 0x7ffff

    const/16 v36, 0x0

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

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v15 .. v36}, Lfast/dic/dict/models/database/EnglishSearchResultModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/EnglishAudiosModel;ZLjava/util/List;Ljava/util/List;Lfast/dic/dict/models/database/EnglishIdiomsModel;ZLfast/dic/dict/models/database/SentenseModel;Lfast/dic/dict/models/database/EnglishWordFamily;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 331
    invoke-virtual {v0}, Lfast/dic/dict/database/FDDatabaseManager;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_35

    new-array v14, v13, [Ljava/lang/String;

    aput-object v2, v14, v5

    const-string v11, "SELECT w.english_word as english_word, w.english_word_id as english_word_id, w.simple_past as simple_past, w.past_participle as past_participle, w.infinitive as infinitive, w.`word_description_html` as word_description_html, d.english_detail_id as english_detail_id, COALESCE(d.persian_meaning, \'\') as pe_meaning, d.countable_uncountable as countable_uncountable, d.formal_informal as formal_informal, d.british_american as british_american, d.cefr as cefr, w.third_person_singular as third_person_singular, w.present_participle as present_participle, w.plural as plural, w.comparative as comparative, w.superlative as superlative, d.has_image as has_image, d.description_html as description_html  FROM english_words w LEFT JOIN english_details d ON w.english_word_id = d.english_word_id WHERE w.english_word = ? ORDER BY d.position, d.english_detail_id"

    invoke-virtual {v4, v11, v14}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_4

    goto/16 :goto_24

    .line 333
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_22

    move v11, v5

    :goto_0
    if-nez v11, :cond_15

    .line 1747
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    goto :goto_1

    :cond_5
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 336
    :goto_1
    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setWord(Ljava/lang/String;)V

    .line 1748
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x0

    goto :goto_2

    :cond_6
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 337
    :goto_2
    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setWordId(Ljava/lang/Integer;)V

    .line 338
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v0, v1, v11}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setPastParticiple(Ljava/lang/String;)V

    .line 339
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v0, v1, v11}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setSimplePast(Ljava/lang/String;)V

    .line 340
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v0, v1, v11}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setInfinitive(Ljava/lang/String;)V

    .line 342
    sget-object v11, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v14, 0xc

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v11, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v11

    .line 341
    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setThirdPersonSingular(Ljava/lang/String;)V

    .line 344
    sget-object v11, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v14, 0xd

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v11, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v11

    .line 343
    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setPresentParticiple(Ljava/lang/String;)V

    .line 346
    sget-object v11, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v14, 0xe

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v11, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v11

    .line 345
    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setPlural(Ljava/lang/String;)V

    .line 348
    sget-object v11, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v14, 0xf

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v11, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v11

    .line 347
    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setComparative(Ljava/lang/String;)V

    .line 350
    sget-object v11, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v14, 0x10

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v11, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v11

    .line 349
    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setSuperlative(Ljava/lang/String;)V

    .line 1749
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 351
    :goto_3
    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setWordDescriptionHtml(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11}, Lfast/dic/dict/database/FDDatabaseManager;->getAudios(I)Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v11

    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudios(Lfast/dic/dict/models/database/EnglishAudiosModel;)V

    .line 354
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11}, Lfast/dic/dict/database/FDDatabaseManager;->getEnglishSynonymsAntonyms(I)Ljava/util/List;

    move-result-object v11

    .line 353
    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setEnglishSynonymsAntonyms(Ljava/util/List;)V

    .line 355
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0, v11}, Lfast/dic/dict/database/FDDatabaseManager;->getEnglishPOSs(I)Lfast/dic/dict/models/database/EnglishIdiomsModel;

    move-result-object v11

    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setIdioms(Lfast/dic/dict/models/database/EnglishIdiomsModel;)V

    .line 356
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWord()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v11}, Lfast/dic/dict/database/FDDatabaseManager;->getWordFamily(Ljava/lang/String;)Lfast/dic/dict/models/database/EnglishWordFamily;

    move-result-object v11

    invoke-virtual {v15, v11}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setWordFamily(Lfast/dic/dict/models/database/EnglishWordFamily;)V

    .line 358
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getBritish()Ljava/util/List;

    move-result-object v11

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_4
    if-nez v11, :cond_a

    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getAmerican()Ljava/util/List;

    move-result-object v11

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_b

    .line 359
    :cond_a
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getBritish()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-ne v11, v13, :cond_c

    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getAmerican()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-ne v11, v13, :cond_c

    .line 361
    :cond_b
    invoke-virtual {v15, v13}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudioOffline(Z)V

    goto :goto_c

    .line 363
    :cond_c
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getAmerican()Ljava/util/List;

    move-result-object v11

    goto :goto_6

    :cond_d
    const/4 v11, 0x0

    :goto_6
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lfast/dic/dict/models/database/EnglishAudioModel;

    if-eqz v14, :cond_f

    .line 364
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishAudioModel;->getFilename()Ljava/lang/String;

    move-result-object v14

    goto :goto_8

    :cond_f
    const/4 v14, 0x0

    :goto_8
    if-nez v14, :cond_e

    .line 365
    invoke-virtual {v15, v13}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudioOffline(Z)V

    goto :goto_7

    .line 369
    :cond_10
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v11

    if-eqz v11, :cond_11

    invoke-virtual {v11}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getBritish()Ljava/util/List;

    move-result-object v11

    goto :goto_9

    :cond_11
    const/4 v11, 0x0

    :goto_9
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_12
    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lfast/dic/dict/models/database/EnglishAudioModel;

    if-eqz v14, :cond_13

    .line 370
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishAudioModel;->getFilename()Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    :cond_13
    const/4 v14, 0x0

    :goto_b
    if-nez v14, :cond_12

    .line 371
    invoke-virtual {v15, v13}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudioOffline(Z)V

    goto :goto_a

    :cond_14
    :goto_c
    move v11, v13

    .line 378
    :cond_15
    new-instance v17, Lfast/dic/dict/models/database/EnglishMeaningModel;

    const/16 v29, 0x7ff

    const/16 v30, 0x0

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

    invoke-direct/range {v17 .. v30}, Lfast/dic/dict/models/database/EnglishMeaningModel;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v14, v17

    const/16 v10, 0x11

    .line 1750
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_16

    const/4 v10, 0x0

    goto :goto_d

    :cond_16
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_d
    if-nez v10, :cond_17

    goto :goto_e

    .line 379
    :cond_17
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v13, :cond_18

    move v10, v13

    goto :goto_f

    :cond_18
    :goto_e
    move v10, v5

    :goto_f
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v14, v10}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setHasImage(Ljava/lang/Boolean;)V

    .line 1751
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_19

    const/4 v10, 0x0

    goto :goto_10

    :cond_19
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 380
    :goto_10
    invoke-virtual {v14, v10}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setDetailId(Ljava/lang/Integer;)V

    const/4 v10, 0x7

    .line 1752
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_1a

    const/4 v10, 0x0

    goto :goto_11

    :cond_1a
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v10, v18

    .line 381
    :goto_11
    invoke-virtual {v14, v10}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setMeaning(Ljava/lang/String;)V

    const/16 v10, 0x8

    .line 1753
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1b

    const/4 v10, 0x0

    goto :goto_12

    :cond_1b
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 382
    :goto_12
    invoke-virtual {v14, v10}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setCountableUncountable(Ljava/lang/Integer;)V

    const/16 v10, 0x9

    .line 1754
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1c

    const/4 v10, 0x0

    goto :goto_13

    :cond_1c
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 383
    :goto_13
    invoke-virtual {v14, v10}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setFormalInformal(Ljava/lang/Integer;)V

    const/16 v10, 0xa

    .line 1755
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1d

    const/4 v10, 0x0

    goto :goto_14

    :cond_1d
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 384
    :goto_14
    invoke-virtual {v14, v10}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setBritishAmerican(Ljava/lang/Integer;)V

    const/16 v10, 0xb

    .line 1756
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1e

    const/4 v10, 0x0

    goto :goto_15

    :cond_1e
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 385
    :goto_15
    invoke-virtual {v14, v10}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setCefr(Ljava/lang/String;)V

    const/16 v10, 0x12

    .line 1757
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_1f

    const/4 v10, 0x0

    goto :goto_16

    :cond_1f
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 386
    :goto_16
    invoke-virtual {v14, v10}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setDescriptionHtml(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishMeaningModel;->getDetailId()Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_20

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 388
    invoke-virtual {v0, v1, v10}, Lfast/dic/dict/database/FDDatabaseManager;->getPos(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v14, v8}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setPos(Ljava/util/List;)V

    .line 389
    invoke-virtual {v0, v1, v10}, Lfast/dic/dict/database/FDDatabaseManager;->getSentences(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v14, v8}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setSentenses(Ljava/util/List;)V

    .line 390
    invoke-virtual {v0, v1, v10}, Lfast/dic/dict/database/FDDatabaseManager;->getCategories(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v14, v8}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setCategories(Ljava/util/List;)V

    .line 393
    :cond_20
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_21

    goto :goto_17

    :cond_21
    const/4 v8, 0x5

    const/4 v10, 0x3

    goto/16 :goto_0

    .line 397
    :cond_22
    :goto_17
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 398
    invoke-virtual {v15, v3}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setMeanings(Ljava/util/List;)V

    .line 399
    invoke-virtual {v7, v15}, Lfast/dic/dict/models/database/SearchResultModel;->setEnglishSearchResultModel(Lfast/dic/dict/models/database/EnglishSearchResultModel;)V

    goto/16 :goto_25

    .line 400
    :cond_23
    sget-object v4, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne v1, v4, :cond_36

    .line 405
    invoke-virtual {v0}, Lfast/dic/dict/database/FDDatabaseManager;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_35

    new-array v8, v13, [Ljava/lang/String;

    aput-object v2, v8, v5

    const-string v10, "SELECT w.persian_word as persian_word, w.persian_word_id as persian_word_id, w.`word_description_html` as word_description_html, d.english_meaning as english_meaning, COALESCE(d.persian_phonetic, \'\') as persian_phonetic, COALESCE(d.persian_meaning, \'\') as persian_meaning, d.persian_detail_id as persian_detail_id, d.has_image as has_image FROM persian_words w LEFT JOIN persian_details d ON w.persian_word_id = d.persian_word_id WHERE w.persian_word_id = ? ORDER BY d.position, d.persian_detail_id"

    invoke-virtual {v4, v10, v8}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_24

    goto/16 :goto_24

    .line 406
    :cond_24
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/List;

    .line 407
    new-instance v10, Lfast/dic/dict/models/database/PersianSearchResultModel;

    invoke-direct {v10}, Lfast/dic/dict/models/database/PersianSearchResultModel;-><init>()V

    .line 408
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/List;

    .line 412
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_34

    move v14, v5

    .line 414
    :goto_18
    new-instance v15, Lfast/dic/dict/models/database/PersianWordDetail;

    invoke-direct {v15}, Lfast/dic/dict/models/database/PersianWordDetail;-><init>()V

    .line 1758
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_25

    const/4 v12, 0x0

    goto :goto_19

    :cond_25
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v12, v19

    .line 417
    :goto_19
    invoke-interface {v8, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2a

    if-nez v14, :cond_29

    .line 1759
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_26

    const/4 v14, 0x0

    goto :goto_1a

    :cond_26
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 419
    :goto_1a
    invoke-virtual {v10, v14}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setWord(Ljava/lang/String;)V

    .line 1760
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_27

    const/4 v14, 0x0

    goto :goto_1b

    :cond_27
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 420
    :goto_1b
    invoke-virtual {v10, v14}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setWordId(Ljava/lang/Integer;)V

    .line 1761
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_28

    const/4 v14, 0x0

    goto :goto_1c

    :cond_28
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 421
    :goto_1c
    invoke-virtual {v10, v14}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setWordDescriptionHtml(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v10}, Lfast/dic/dict/models/database/PersianSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v0, v1, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getSynonymsAntonyms(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v14

    .line 422
    invoke-virtual {v10, v14}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setPersianSynonymsAntonyms(Ljava/util/List;)V

    :cond_29
    move v14, v13

    :cond_2a
    const/4 v9, 0x7

    .line 1762
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_2b

    const/16 v19, 0x0

    goto :goto_1d

    :cond_2b
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    :goto_1d
    if-nez v19, :cond_2c

    goto :goto_1e

    .line 428
    :cond_2c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v13, :cond_2d

    move v9, v13

    goto :goto_1f

    :cond_2d
    :goto_1e
    move v9, v5

    :goto_1f
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v15, v9}, Lfast/dic/dict/models/database/PersianWordDetail;->setHasImage(Ljava/lang/Boolean;)V

    .line 1763
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2e

    const/4 v9, 0x0

    goto :goto_20

    :cond_2e
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 429
    :goto_20
    invoke-virtual {v15, v9}, Lfast/dic/dict/models/database/PersianWordDetail;->setDetailId(Ljava/lang/Integer;)V

    .line 430
    sget-object v9, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v9, v12}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->replaceNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Lfast/dic/dict/models/database/PersianWordDetail;->setPhonetics(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v15}, Lfast/dic/dict/models/database/PersianWordDetail;->getDetailId()Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v0, v1, v9}, Lfast/dic/dict/database/FDDatabaseManager;->getPos(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v15, v9}, Lfast/dic/dict/models/database/PersianWordDetail;->setPos(Ljava/util/List;)V

    const/4 v9, 0x5

    .line 1764
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_2f

    const/4 v6, 0x0

    goto :goto_21

    :cond_2f
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v6, v18

    .line 432
    :goto_21
    invoke-virtual {v15, v6}, Lfast/dic/dict/models/database/PersianWordDetail;->setPersianMeanings(Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 1765
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_30

    const/4 v6, 0x0

    goto :goto_22

    :cond_30
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v6, v17

    .line 433
    :goto_22
    invoke-virtual {v15, v6}, Lfast/dic/dict/models/database/PersianWordDetail;->setMeaning(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v15}, Lfast/dic/dict/models/database/PersianWordDetail;->getDetailId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lfast/dic/dict/database/FDDatabaseManager;->getSentences(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v15, v6}, Lfast/dic/dict/models/database/PersianWordDetail;->setSentenses(Ljava/util/List;)V

    .line 435
    invoke-virtual {v15}, Lfast/dic/dict/models/database/PersianWordDetail;->getDetailId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lfast/dic/dict/database/FDDatabaseManager;->getCategories(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v15, v6}, Lfast/dic/dict/models/database/PersianWordDetail;->setCategories(Ljava/util/List;)V

    .line 436
    move-object v6, v11

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 438
    move-object v6, v12

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_31

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_32

    :cond_31
    move-object v12, v3

    .line 439
    :cond_32
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_33

    goto :goto_23

    :cond_33
    const/4 v6, 0x6

    const/4 v9, 0x2

    const/4 v12, 0x4

    goto/16 :goto_18

    .line 443
    :cond_34
    :goto_23
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 444
    invoke-virtual {v7, v10}, Lfast/dic/dict/models/database/SearchResultModel;->setPersianSearchResultModel(Lfast/dic/dict/models/database/PersianSearchResultModel;)V

    .line 445
    invoke-virtual {v7}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v1, v11}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setWordDetails(Ljava/util/List;)V

    goto :goto_25

    :cond_35
    :goto_24
    return-object v7

    .line 447
    :cond_36
    :goto_25
    iget-object v0, v0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "===== Finished GetDetailByWord = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7
.end method

.method public final getDetailByWordGetOtherFormOfWord(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;)Lfast/dic/dict/models/database/SearchResultModel;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "word"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    iget-object v3, v0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "===== Start getDetailByWordGetOtherFormOfWord = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x64

    const/4 v6, 0x1

    if-ge v3, v4, :cond_33

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_24

    .line 631
    :cond_0
    new-instance v7, Lfast/dic/dict/models/database/SearchResultModel;

    const/16 v12, 0xf

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lfast/dic/dict/models/database/SearchResultModel;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lfast/dic/dict/models/database/EnglishSearchResultModel;Lfast/dic/dict/models/database/PersianSearchResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 632
    iget-object v4, v0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v4}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v4

    if-nez v4, :cond_1

    return-object v7

    .line 637
    :cond_1
    sget-object v4, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v13, 0x4

    if-ne v1, v4, :cond_20

    .line 640
    new-instance v15, Lfast/dic/dict/models/database/EnglishSearchResultModel;

    const v35, 0x7ffff

    const/16 v36, 0x0

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

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v15 .. v36}, Lfast/dic/dict/models/database/EnglishSearchResultModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/EnglishAudiosModel;ZLjava/util/List;Ljava/util/List;Lfast/dic/dict/models/database/EnglishIdiomsModel;ZLfast/dic/dict/models/database/SentenseModel;Lfast/dic/dict/models/database/EnglishWordFamily;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 641
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 643
    new-array v14, v6, [Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "toLowerCase(...)"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v3, v14, v5

    const-string v3, "SELECT w.english_word as english_word, w.english_word_id as english_word_id, w.simple_past as simple_past, w.past_participle as past_participle, w.infinitive as infinitive, w.`word_description_html` as word_description_html, d.english_detail_id as english_detail_id, COALESCE(d.persian_meaning, \'\') as pe_meaning, d.countable_uncountable as countable_uncountable, d.formal_informal as formal_informal, d.british_american as british_american, d.cefr as cefr, w.third_person_singular as third_person_singular, w.present_participle as present_participle, w.plural as plural, w.comparative as comparative, w.superlative as superlative, d.has_image as has_image, d.description_html as description_html  FROM english_words w LEFT JOIN english_details d ON w.english_word_id = d.english_word_id WHERE w.english_word = ? ORDER BY d.position, d.english_detail_id"

    invoke-direct {v0, v3, v14}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 649
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_1e

    move v12, v5

    :goto_0
    if-nez v12, :cond_11

    .line 1784
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 653
    :goto_1
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setWord(Ljava/lang/String;)V

    .line 1785
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 654
    :goto_2
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setWordId(Ljava/lang/Integer;)V

    .line 656
    sget-object v12, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v12, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v12

    .line 655
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setPastParticiple(Ljava/lang/String;)V

    .line 658
    sget-object v12, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v12, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v12

    .line 657
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setSimplePast(Ljava/lang/String;)V

    .line 660
    sget-object v12, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v12, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v12

    .line 659
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setInfinitive(Ljava/lang/String;)V

    .line 662
    sget-object v12, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v14, 0xc

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v12, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v12

    .line 661
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setThirdPersonSingular(Ljava/lang/String;)V

    .line 664
    sget-object v12, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v14, 0xd

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v12, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v12

    .line 663
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setPresentParticiple(Ljava/lang/String;)V

    .line 666
    sget-object v12, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v14, 0xe

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v12, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v12

    .line 665
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setPlural(Ljava/lang/String;)V

    .line 668
    sget-object v12, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v14, 0xf

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v12, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v12

    .line 667
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setComparative(Ljava/lang/String;)V

    .line 670
    sget-object v12, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v14, 0x10

    invoke-interface {v3, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    invoke-virtual {v0, v12, v14}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v12

    .line 669
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setSuperlative(Ljava/lang/String;)V

    .line 671
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setWordDescriptionHtml(Ljava/lang/String;)V

    .line 672
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Lfast/dic/dict/database/FDDatabaseManager;->getAudios(I)Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v12

    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudios(Lfast/dic/dict/models/database/EnglishAudiosModel;)V

    .line 674
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Lfast/dic/dict/database/FDDatabaseManager;->getEnglishSynonymsAntonyms(I)Ljava/util/List;

    move-result-object v12

    .line 673
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setEnglishSynonymsAntonyms(Ljava/util/List;)V

    .line 676
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v12}, Lfast/dic/dict/database/FDDatabaseManager;->getEnglishPOSs(I)Lfast/dic/dict/models/database/EnglishIdiomsModel;

    move-result-object v12

    .line 675
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setIdioms(Lfast/dic/dict/models/database/EnglishIdiomsModel;)V

    .line 678
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWord()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v12}, Lfast/dic/dict/database/FDDatabaseManager;->getWordFamily(Ljava/lang/String;)Lfast/dic/dict/models/database/EnglishWordFamily;

    move-result-object v12

    .line 677
    invoke-virtual {v15, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setWordFamily(Lfast/dic/dict/models/database/EnglishWordFamily;)V

    .line 680
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getBritish()Ljava/util/List;

    move-result-object v12

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_3
    if-nez v12, :cond_6

    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getAmerican()Ljava/util/List;

    move-result-object v12

    goto :goto_4

    :cond_5
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_7

    .line 681
    :cond_6
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getBritish()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-ne v12, v6, :cond_8

    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getAmerican()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-ne v12, v6, :cond_8

    .line 683
    :cond_7
    invoke-virtual {v15, v6}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudioOffline(Z)V

    goto :goto_b

    .line 685
    :cond_8
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getAmerican()Ljava/util/List;

    move-result-object v12

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    :goto_5
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lfast/dic/dict/models/database/EnglishAudioModel;

    if-eqz v14, :cond_b

    .line 686
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishAudioModel;->getFilename()Ljava/lang/String;

    move-result-object v14

    goto :goto_7

    :cond_b
    const/4 v14, 0x0

    :goto_7
    if-nez v14, :cond_a

    .line 687
    invoke-virtual {v15, v6}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudioOffline(Z)V

    goto :goto_6

    .line 691
    :cond_c
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v12

    if-eqz v12, :cond_d

    invoke-virtual {v12}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getBritish()Ljava/util/List;

    move-result-object v12

    goto :goto_8

    :cond_d
    const/4 v12, 0x0

    :goto_8
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_e
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lfast/dic/dict/models/database/EnglishAudioModel;

    if-eqz v14, :cond_f

    .line 692
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishAudioModel;->getFilename()Ljava/lang/String;

    move-result-object v14

    goto :goto_a

    :cond_f
    const/4 v14, 0x0

    :goto_a
    if-nez v14, :cond_e

    .line 693
    invoke-virtual {v15, v6}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudioOffline(Z)V

    goto :goto_9

    :cond_10
    :goto_b
    move v12, v6

    .line 701
    :cond_11
    new-instance v18, Lfast/dic/dict/models/database/EnglishMeaningModel;

    const/16 v30, 0x7ff

    const/16 v31, 0x0

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

    invoke-direct/range {v18 .. v31}, Lfast/dic/dict/models/database/EnglishMeaningModel;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v14, v18

    const/16 v11, 0x11

    .line 1786
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_12

    const/4 v11, 0x0

    goto :goto_c

    :cond_12
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    :goto_c
    if-nez v11, :cond_13

    goto :goto_d

    .line 702
    :cond_13
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v6, :cond_14

    move v11, v6

    goto :goto_e

    :cond_14
    :goto_d
    move v11, v5

    :goto_e
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v14, v11}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setHasImage(Ljava/lang/Boolean;)V

    .line 1787
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_15

    const/4 v11, 0x0

    goto :goto_f

    :cond_15
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 703
    :goto_f
    invoke-virtual {v14, v11}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setDetailId(Ljava/lang/Integer;)V

    const/4 v11, 0x7

    .line 1788
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_16

    const/4 v11, 0x0

    goto :goto_10

    :cond_16
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v11, v19

    .line 704
    :goto_10
    invoke-virtual {v14, v11}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setMeaning(Ljava/lang/String;)V

    const/16 v11, 0x8

    .line 1789
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_17

    const/4 v11, 0x0

    goto :goto_11

    :cond_17
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 705
    :goto_11
    invoke-virtual {v14, v11}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setCountableUncountable(Ljava/lang/Integer;)V

    const/16 v11, 0x9

    .line 1790
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_18

    const/4 v11, 0x0

    goto :goto_12

    :cond_18
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 706
    :goto_12
    invoke-virtual {v14, v11}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setFormalInformal(Ljava/lang/Integer;)V

    const/16 v11, 0xa

    .line 1791
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_19

    const/4 v11, 0x0

    goto :goto_13

    :cond_19
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 707
    :goto_13
    invoke-virtual {v14, v11}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setBritishAmerican(Ljava/lang/Integer;)V

    const/16 v11, 0xb

    .line 1792
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/4 v11, 0x0

    goto :goto_14

    :cond_1a
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 708
    :goto_14
    invoke-virtual {v14, v11}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setCefr(Ljava/lang/String;)V

    const/16 v11, 0x12

    .line 1793
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_1b

    const/4 v11, 0x0

    goto :goto_15

    :cond_1b
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 709
    :goto_15
    invoke-virtual {v14, v11}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setDescriptionHtml(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishMeaningModel;->getDetailId()Ljava/lang/Integer;

    move-result-object v11

    if-eqz v11, :cond_1c

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 711
    invoke-virtual {v0, v1, v11}, Lfast/dic/dict/database/FDDatabaseManager;->getPos(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v14, v9}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setPos(Ljava/util/List;)V

    .line 712
    invoke-virtual {v0, v1, v11}, Lfast/dic/dict/database/FDDatabaseManager;->getSentences(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v14, v9}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setSentenses(Ljava/util/List;)V

    .line 713
    invoke-virtual {v0, v1, v11}, Lfast/dic/dict/database/FDDatabaseManager;->getCategories(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v14, v9}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setCategories(Ljava/util/List;)V

    .line 716
    :cond_1c
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1d

    goto :goto_16

    :cond_1d
    const/4 v9, 0x5

    const/4 v11, 0x3

    goto/16 :goto_0

    .line 719
    :cond_1e
    :goto_16
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 721
    :cond_1f
    invoke-virtual {v15, v4}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setMeanings(Ljava/util/List;)V

    .line 722
    invoke-virtual {v7, v15}, Lfast/dic/dict/models/database/SearchResultModel;->setEnglishSearchResultModel(Lfast/dic/dict/models/database/EnglishSearchResultModel;)V

    goto/16 :goto_23

    .line 724
    :cond_20
    sget-object v3, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne v1, v3, :cond_32

    .line 727
    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v5

    const-string v4, "SELECT w.persian_word as persian_word, w.persian_word_id as persian_word_id, w.`word_description_html` as word_description_html, d.english_meaning as english_meaning, COALESCE(d.persian_phonetic, \'\') as persian_phonetic, COALESCE(d.persian_meaning, \'\') as persian_meaning, d.persian_detail_id as persian_detail_id, d.has_image as has_image FROM persian_words w LEFT JOIN persian_details d ON w.persian_word_id = d.persian_word_id WHERE w.persian_word = ? ORDER BY d.position, d.persian_detail_id"

    invoke-direct {v0, v4, v3}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 728
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 729
    new-instance v9, Lfast/dic/dict/models/database/PersianSearchResultModel;

    invoke-direct {v9}, Lfast/dic/dict/models/database/PersianSearchResultModel;-><init>()V

    .line 730
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    check-cast v11, Ljava/util/List;

    if-eqz v3, :cond_31

    .line 738
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_30

    move v12, v5

    .line 740
    :goto_17
    new-instance v14, Lfast/dic/dict/models/database/PersianWordDetail;

    invoke-direct {v14}, Lfast/dic/dict/models/database/PersianWordDetail;-><init>()V

    .line 1794
    invoke-interface {v3, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_21

    const/4 v15, 0x0

    goto :goto_18

    :cond_21
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 743
    :goto_18
    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_26

    if-nez v12, :cond_25

    .line 1795
    invoke-interface {v3, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_22

    const/4 v12, 0x0

    goto :goto_19

    :cond_22
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 746
    :goto_19
    invoke-virtual {v9, v12}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setWord(Ljava/lang/String;)V

    .line 1796
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_23

    const/4 v12, 0x0

    goto :goto_1a

    :cond_23
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 747
    :goto_1a
    invoke-virtual {v9, v12}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setWordId(Ljava/lang/Integer;)V

    .line 1797
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_24

    const/4 v12, 0x0

    goto :goto_1b

    :cond_24
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 748
    :goto_1b
    invoke-virtual {v9, v12}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setWordDescriptionHtml(Ljava/lang/String;)V

    .line 750
    sget-object v12, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    .line 751
    invoke-virtual {v9}, Lfast/dic/dict/models/database/PersianSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 749
    invoke-virtual {v0, v12, v10}, Lfast/dic/dict/database/FDDatabaseManager;->getSynonymsAntonyms(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setPersianSynonymsAntonyms(Ljava/util/List;)V

    :cond_25
    move v12, v6

    :cond_26
    const/4 v10, 0x7

    .line 1798
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_27

    const/16 v17, 0x0

    goto :goto_1c

    :cond_27
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    :goto_1c
    if-nez v17, :cond_28

    goto :goto_1d

    .line 758
    :cond_28
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v6, :cond_29

    move v10, v6

    goto :goto_1e

    :cond_29
    :goto_1d
    move v10, v5

    :goto_1e
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v14, v10}, Lfast/dic/dict/models/database/PersianWordDetail;->setHasImage(Ljava/lang/Boolean;)V

    .line 1799
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2a

    const/4 v10, 0x0

    goto :goto_1f

    :cond_2a
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 759
    :goto_1f
    invoke-virtual {v14, v10}, Lfast/dic/dict/models/database/PersianWordDetail;->setDetailId(Ljava/lang/Integer;)V

    .line 760
    sget-object v10, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v10, v15}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->replaceNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lfast/dic/dict/models/database/PersianWordDetail;->setPhonetics(Ljava/lang/String;)V

    .line 762
    sget-object v10, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    .line 763
    invoke-virtual {v14}, Lfast/dic/dict/models/database/PersianWordDetail;->getDetailId()Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 761
    invoke-virtual {v0, v10, v8}, Lfast/dic/dict/database/FDDatabaseManager;->getPos(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v14, v8}, Lfast/dic/dict/models/database/PersianWordDetail;->setPos(Ljava/util/List;)V

    const/4 v8, 0x5

    .line 1800
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/4 v10, 0x0

    goto :goto_20

    :cond_2b
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 765
    :goto_20
    invoke-virtual {v14, v10}, Lfast/dic/dict/models/database/PersianWordDetail;->setPersianMeanings(Ljava/lang/String;)V

    const/4 v10, 0x3

    .line 1801
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_2c

    const/4 v8, 0x0

    goto :goto_21

    :cond_2c
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v8, v17

    .line 766
    :goto_21
    invoke-virtual {v14, v8}, Lfast/dic/dict/models/database/PersianWordDetail;->setMeaning(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v14}, Lfast/dic/dict/models/database/PersianWordDetail;->getDetailId()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v1, v8}, Lfast/dic/dict/database/FDDatabaseManager;->getSentences(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v8

    .line 767
    invoke-virtual {v14, v8}, Lfast/dic/dict/models/database/PersianWordDetail;->setSentenses(Ljava/util/List;)V

    .line 770
    invoke-virtual {v14}, Lfast/dic/dict/models/database/PersianWordDetail;->getDetailId()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0, v1, v8}, Lfast/dic/dict/database/FDDatabaseManager;->getCategories(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v8

    .line 769
    invoke-virtual {v14, v8}, Lfast/dic/dict/models/database/PersianWordDetail;->setCategories(Ljava/util/List;)V

    .line 771
    move-object v8, v11

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 775
    :try_start_0
    move-object v8, v15

    check-cast v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_2d

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_2e

    :cond_2d
    const-string v15, ""

    .line 776
    :cond_2e
    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    :catch_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_2f

    goto :goto_22

    :cond_2f
    const/4 v8, 0x6

    const/4 v10, 0x2

    goto/16 :goto_17

    .line 781
    :cond_30
    :goto_22
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 783
    :cond_31
    invoke-virtual {v7, v9}, Lfast/dic/dict/models/database/SearchResultModel;->setPersianSearchResultModel(Lfast/dic/dict/models/database/PersianSearchResultModel;)V

    .line 784
    invoke-virtual {v7}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1, v11}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setWordDetails(Ljava/util/List;)V

    .line 786
    :cond_32
    :goto_23
    iget-object v0, v0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "===== Finished getDetailByWordGetOtherFormOfWord = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    .line 623
    :cond_33
    :goto_24
    new-instance v8, Lfast/dic/dict/models/database/SearchResultModel;

    const/16 v13, 0xf

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v14}, Lfast/dic/dict/models/database/SearchResultModel;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lfast/dic/dict/models/database/EnglishSearchResultModel;Lfast/dic/dict/models/database/PersianSearchResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 624
    new-instance v9, Lfast/dic/dict/models/database/EnglishSearchResultModel;

    const v29, 0x7ffff

    const/16 v30, 0x0

    const/4 v13, 0x0

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

    invoke-direct/range {v9 .. v30}, Lfast/dic/dict/models/database/EnglishSearchResultModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/EnglishAudiosModel;ZLjava/util/List;Ljava/util/List;Lfast/dic/dict/models/database/EnglishIdiomsModel;ZLfast/dic/dict/models/database/SentenseModel;Lfast/dic/dict/models/database/EnglishWordFamily;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 625
    invoke-virtual {v9, v6}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudioOffline(Z)V

    .line 624
    invoke-virtual {v8, v9}, Lfast/dic/dict/models/database/SearchResultModel;->setEnglishSearchResultModel(Lfast/dic/dict/models/database/EnglishSearchResultModel;)V

    return-object v8
.end method

.method public final getDetailByWordId(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Lfast/dic/dict/models/database/SearchResultModel;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string/jumbo v3, "type"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iget-object v3, v0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "===== Start GetDetailByWord = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_0

    .line 455
    new-instance v7, Lfast/dic/dict/models/database/SearchResultModel;

    const/16 v12, 0xf

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Lfast/dic/dict/models/database/SearchResultModel;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lfast/dic/dict/models/database/EnglishSearchResultModel;Lfast/dic/dict/models/database/PersianSearchResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    .line 458
    :cond_0
    new-instance v8, Lfast/dic/dict/models/database/SearchResultModel;

    const/16 v13, 0xf

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v14}, Lfast/dic/dict/models/database/SearchResultModel;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lfast/dic/dict/models/database/EnglishSearchResultModel;Lfast/dic/dict/models/database/PersianSearchResultModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 459
    iget-object v3, v0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v3}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v8

    .line 464
    :cond_1
    sget-object v3, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/4 v4, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x7

    const/4 v11, 0x4

    const/4 v12, 0x1

    if-ne v1, v3, :cond_20

    .line 467
    new-instance v14, Lfast/dic/dict/models/database/EnglishSearchResultModel;

    const v34, 0x7ffff

    const/16 v35, 0x0

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

    const/16 v33, 0x0

    invoke-direct/range {v14 .. v35}, Lfast/dic/dict/models/database/EnglishSearchResultModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/models/database/EnglishAudiosModel;ZLjava/util/List;Ljava/util/List;Lfast/dic/dict/models/database/EnglishIdiomsModel;ZLfast/dic/dict/models/database/SentenseModel;Lfast/dic/dict/models/database/EnglishWordFamily;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 468
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 470
    new-array v15, v12, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v5

    const-string v13, "SELECT w.english_word as english_word, w.english_word_id as english_word_id, w.simple_past as simple_past, w.past_participle as past_participle, w.infinitive as infinitive, w.`word_description_html` as word_description_html, d.english_detail_id as english_detail_id, COALESCE(d.persian_meaning, \'\') as pe_meaning, d.countable_uncountable as countable_uncountable, d.formal_informal as formal_informal, d.british_american as british_american, d.cefr as cefr, w.third_person_singular as third_person_singular, w.present_participle as present_participle, w.plural as plural, w.comparative as comparative, w.superlative as superlative, d.has_image as has_image, d.description_html as description_html  FROM english_words w LEFT JOIN english_details d ON w.english_word_id = d.english_word_id WHERE  w.english_word_id = ? ORDER BY d.position, d.english_detail_id"

    invoke-direct {v0, v13, v15}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_1f

    .line 476
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_1e

    move v15, v5

    :goto_0
    if-nez v15, :cond_11

    .line 1766
    invoke-interface {v13, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 480
    :goto_1
    invoke-virtual {v14, v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setWord(Ljava/lang/String;)V

    .line 1767
    invoke-interface {v13, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v15, 0x0

    goto :goto_2

    :cond_3
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 481
    :goto_2
    invoke-virtual {v14, v15}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setWordId(Ljava/lang/Integer;)V

    .line 483
    sget-object v15, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    move/from16 v17, v5

    invoke-interface {v13, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v15, v5}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v5

    .line 482
    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setPastParticiple(Ljava/lang/String;)V

    .line 485
    sget-object v5, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v5, v15}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v5

    .line 484
    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setSimplePast(Ljava/lang/String;)V

    .line 487
    sget-object v5, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    invoke-interface {v13, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v5, v15}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v5

    .line 486
    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setInfinitive(Ljava/lang/String;)V

    .line 489
    sget-object v5, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v15, 0xc

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v5, v15}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v5

    .line 488
    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setThirdPersonSingular(Ljava/lang/String;)V

    .line 491
    sget-object v5, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v15, 0xd

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v5, v15}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v5

    .line 490
    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setPresentParticiple(Ljava/lang/String;)V

    .line 493
    sget-object v5, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v15, 0xe

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v5, v15}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v5

    .line 492
    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setPlural(Ljava/lang/String;)V

    .line 495
    sget-object v5, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v15, 0xf

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v5, v15}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v5

    .line 494
    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setComparative(Ljava/lang/String;)V

    .line 497
    sget-object v5, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/16 v15, 0x10

    invoke-interface {v13, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-virtual {v0, v5, v15}, Lfast/dic/dict/database/FDDatabaseManager;->getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;

    move-result-object v5

    .line 496
    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setSuperlative(Ljava/lang/String;)V

    .line 498
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setWordDescriptionHtml(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lfast/dic/dict/database/FDDatabaseManager;->getAudios(I)Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v5

    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudios(Lfast/dic/dict/models/database/EnglishAudiosModel;)V

    .line 501
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lfast/dic/dict/database/FDDatabaseManager;->getEnglishSynonymsAntonyms(I)Ljava/util/List;

    move-result-object v5

    .line 500
    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setEnglishSynonymsAntonyms(Ljava/util/List;)V

    .line 503
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Lfast/dic/dict/database/FDDatabaseManager;->getEnglishPOSs(I)Lfast/dic/dict/models/database/EnglishIdiomsModel;

    move-result-object v5

    .line 502
    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setIdioms(Lfast/dic/dict/models/database/EnglishIdiomsModel;)V

    .line 505
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Lfast/dic/dict/database/FDDatabaseManager;->getWordFamily(Ljava/lang/String;)Lfast/dic/dict/models/database/EnglishWordFamily;

    move-result-object v5

    .line 504
    invoke-virtual {v14, v5}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setWordFamily(Lfast/dic/dict/models/database/EnglishWordFamily;)V

    .line 507
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getBritish()Ljava/util/List;

    move-result-object v5

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_6

    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getAmerican()Ljava/util/List;

    move-result-object v5

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_7

    .line 508
    :cond_6
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getBritish()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-ne v5, v12, :cond_8

    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getAmerican()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-ne v5, v12, :cond_8

    .line 510
    :cond_7
    invoke-virtual {v14, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudioOffline(Z)V

    goto :goto_b

    .line 512
    :cond_8
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getAmerican()Ljava/util/List;

    move-result-object v5

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lfast/dic/dict/models/database/EnglishAudioModel;

    if-eqz v15, :cond_b

    .line 513
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishAudioModel;->getFilename()Ljava/lang/String;

    move-result-object v15

    goto :goto_7

    :cond_b
    const/4 v15, 0x0

    :goto_7
    if-nez v15, :cond_a

    .line 514
    invoke-virtual {v14, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudioOffline(Z)V

    goto :goto_6

    .line 518
    :cond_c
    invoke-virtual {v14}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getAudios()Lfast/dic/dict/models/database/EnglishAudiosModel;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lfast/dic/dict/models/database/EnglishAudiosModel;->getBritish()Ljava/util/List;

    move-result-object v5

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    :goto_8
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lfast/dic/dict/models/database/EnglishAudioModel;

    if-eqz v15, :cond_f

    .line 519
    invoke-virtual {v15}, Lfast/dic/dict/models/database/EnglishAudioModel;->getFilename()Ljava/lang/String;

    move-result-object v15

    goto :goto_a

    :cond_f
    const/4 v15, 0x0

    :goto_a
    if-nez v15, :cond_e

    .line 520
    invoke-virtual {v14, v12}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setAudioOffline(Z)V

    goto :goto_9

    :cond_10
    :goto_b
    move v15, v12

    goto :goto_c

    :cond_11
    move/from16 v17, v5

    .line 528
    :goto_c
    new-instance v18, Lfast/dic/dict/models/database/EnglishMeaningModel;

    const/16 v30, 0x7ff

    const/16 v31, 0x0

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

    invoke-direct/range {v18 .. v31}, Lfast/dic/dict/models/database/EnglishMeaningModel;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v18

    const/16 v9, 0x11

    .line 1768
    invoke-interface {v13, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_12

    const/4 v9, 0x0

    goto :goto_d

    :cond_12
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_d
    if-nez v9, :cond_13

    goto :goto_e

    .line 529
    :cond_13
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v12, :cond_14

    move v9, v12

    goto :goto_f

    :cond_14
    :goto_e
    move/from16 v9, v17

    :goto_f
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v9}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setHasImage(Ljava/lang/Boolean;)V

    .line 1769
    invoke-interface {v13, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v9, 0x0

    goto :goto_10

    :cond_15
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 530
    :goto_10
    invoke-virtual {v5, v9}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setDetailId(Ljava/lang/Integer;)V

    .line 1770
    invoke-interface {v13, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v9, 0x0

    goto :goto_11

    :cond_16
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 531
    :goto_11
    invoke-virtual {v5, v9}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setMeaning(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v5}, Lfast/dic/dict/models/database/EnglishMeaningModel;->getDetailId()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_17

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 533
    invoke-virtual {v0, v1, v9}, Lfast/dic/dict/database/FDDatabaseManager;->getPos(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setPos(Ljava/util/List;)V

    .line 534
    invoke-virtual {v0, v1, v9}, Lfast/dic/dict/database/FDDatabaseManager;->getSentences(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setSentenses(Ljava/util/List;)V

    .line 535
    invoke-virtual {v0, v1, v9}, Lfast/dic/dict/database/FDDatabaseManager;->getCategories(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setCategories(Ljava/util/List;)V

    :cond_17
    const/16 v6, 0x8

    .line 1771
    invoke-interface {v13, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v6, 0x0

    goto :goto_12

    :cond_18
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 537
    :goto_12
    invoke-virtual {v5, v6}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setCountableUncountable(Ljava/lang/Integer;)V

    const/16 v6, 0x9

    .line 1772
    invoke-interface {v13, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_19

    const/4 v6, 0x0

    goto :goto_13

    :cond_19
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 538
    :goto_13
    invoke-virtual {v5, v6}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setFormalInformal(Ljava/lang/Integer;)V

    const/16 v6, 0xa

    .line 1773
    invoke-interface {v13, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    const/4 v6, 0x0

    goto :goto_14

    :cond_1a
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 539
    :goto_14
    invoke-virtual {v5, v6}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setBritishAmerican(Ljava/lang/Integer;)V

    const/16 v6, 0xb

    .line 1774
    invoke-interface {v13, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1b

    const/4 v6, 0x0

    goto :goto_15

    :cond_1b
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 540
    :goto_15
    invoke-virtual {v5, v6}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setCefr(Ljava/lang/String;)V

    const/16 v6, 0x12

    .line 1775
    invoke-interface {v13, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1c

    const/4 v6, 0x0

    goto :goto_16

    :cond_1c
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 541
    :goto_16
    invoke-virtual {v5, v6}, Lfast/dic/dict/models/database/EnglishMeaningModel;->setDescriptionHtml(Ljava/lang/String;)V

    .line 542
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_17

    :cond_1d
    move/from16 v5, v17

    const/4 v6, 0x5

    const/4 v9, 0x3

    goto/16 :goto_0

    :cond_1e
    move/from16 v17, v5

    .line 545
    :goto_17
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_18

    :cond_1f
    move/from16 v17, v5

    .line 547
    :goto_18
    invoke-virtual {v14, v3}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->setMeanings(Ljava/util/List;)V

    .line 548
    invoke-virtual {v8, v14}, Lfast/dic/dict/models/database/SearchResultModel;->setEnglishSearchResultModel(Lfast/dic/dict/models/database/EnglishSearchResultModel;)V

    goto/16 :goto_25

    :cond_20
    move/from16 v17, v5

    .line 550
    sget-object v3, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne v1, v3, :cond_32

    .line 553
    new-array v3, v12, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v17

    const-string v5, "SELECT w.persian_word as persian_word, w.persian_word_id as persian_word_id, w.`word_description_html` as word_description_html, d.english_meaning as english_meaning, COALESCE(d.persian_phonetic, \'\') as persian_phonetic, COALESCE(d.persian_meaning, \'\') as persian_meaning, d.persian_detail_id as persian_detail_id, d.has_image as has_image FROM persian_words w LEFT JOIN persian_details d ON w.persian_word_id = d.persian_word_id WHERE w.persian_word_id = ? ORDER BY d.position, d.persian_detail_id"

    invoke-direct {v0, v5, v3}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 554
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 555
    new-instance v6, Lfast/dic/dict/models/database/PersianSearchResultModel;

    invoke-direct {v6}, Lfast/dic/dict/models/database/PersianSearchResultModel;-><init>()V

    .line 556
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/List;

    if-eqz v3, :cond_31

    .line 564
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_30

    move/from16 v13, v17

    .line 566
    :goto_19
    new-instance v14, Lfast/dic/dict/models/database/PersianWordDetail;

    invoke-direct {v14}, Lfast/dic/dict/models/database/PersianWordDetail;-><init>()V

    .line 1776
    invoke-interface {v3, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_21

    const/4 v15, 0x0

    goto :goto_1a

    :cond_21
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 569
    :goto_1a
    invoke-interface {v5, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_26

    if-nez v13, :cond_25

    move/from16 v13, v17

    .line 1777
    invoke-interface {v3, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_22

    const/4 v13, 0x0

    goto :goto_1b

    :cond_22
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v13, v20

    .line 572
    :goto_1b
    invoke-virtual {v6, v13}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setWord(Ljava/lang/String;)V

    .line 1778
    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_23

    const/4 v13, 0x0

    goto :goto_1c

    :cond_23
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 573
    :goto_1c
    invoke-virtual {v6, v13}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setWordId(Ljava/lang/Integer;)V

    .line 1779
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_24

    const/4 v13, 0x0

    goto :goto_1d

    :cond_24
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 574
    :goto_1d
    invoke-virtual {v6, v13}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setWordDescriptionHtml(Ljava/lang/String;)V

    .line 576
    sget-object v13, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    .line 577
    invoke-virtual {v6}, Lfast/dic/dict/models/database/PersianSearchResultModel;->getWordId()Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 575
    invoke-virtual {v0, v13, v7}, Lfast/dic/dict/database/FDDatabaseManager;->getSynonymsAntonyms(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setPersianSynonymsAntonyms(Ljava/util/List;)V

    :cond_25
    move v13, v12

    .line 1780
    :cond_26
    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_27

    const/4 v7, 0x0

    goto :goto_1e

    :cond_27
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_1e
    if-nez v7, :cond_28

    goto :goto_1f

    .line 584
    :cond_28
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v12, :cond_29

    move v7, v12

    goto :goto_20

    :cond_29
    :goto_1f
    const/4 v7, 0x0

    :goto_20
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v14, v7}, Lfast/dic/dict/models/database/PersianWordDetail;->setHasImage(Ljava/lang/Boolean;)V

    .line 1781
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2a

    const/4 v7, 0x0

    goto :goto_21

    :cond_2a
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 585
    :goto_21
    invoke-virtual {v14, v7}, Lfast/dic/dict/models/database/PersianWordDetail;->setDetailId(Ljava/lang/Integer;)V

    .line 586
    sget-object v7, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v7, v15}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->replaceNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Lfast/dic/dict/models/database/PersianWordDetail;->setPhonetics(Ljava/lang/String;)V

    .line 588
    sget-object v7, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    .line 589
    invoke-virtual {v14}, Lfast/dic/dict/models/database/PersianWordDetail;->getDetailId()Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 587
    invoke-virtual {v0, v7, v4}, Lfast/dic/dict/database/FDDatabaseManager;->getPos(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v14, v4}, Lfast/dic/dict/models/database/PersianWordDetail;->setPos(Ljava/util/List;)V

    const/4 v4, 0x5

    .line 1782
    invoke-interface {v3, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2b

    const/4 v7, 0x0

    goto :goto_22

    :cond_2b
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 591
    :goto_22
    invoke-virtual {v14, v7}, Lfast/dic/dict/models/database/PersianWordDetail;->setPersianMeanings(Ljava/lang/String;)V

    const/4 v7, 0x3

    .line 1783
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_2c

    const/4 v4, 0x0

    goto :goto_23

    :cond_2c
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v4, v18

    .line 592
    :goto_23
    invoke-virtual {v14, v4}, Lfast/dic/dict/models/database/PersianWordDetail;->setMeaning(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v14}, Lfast/dic/dict/models/database/PersianWordDetail;->getDetailId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lfast/dic/dict/database/FDDatabaseManager;->getSentences(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v4

    .line 593
    invoke-virtual {v14, v4}, Lfast/dic/dict/models/database/PersianWordDetail;->setSentenses(Ljava/util/List;)V

    .line 596
    invoke-virtual {v14}, Lfast/dic/dict/models/database/PersianWordDetail;->getDetailId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lfast/dic/dict/database/FDDatabaseManager;->getCategories(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object v4

    .line 595
    invoke-virtual {v14, v4}, Lfast/dic/dict/models/database/PersianWordDetail;->setCategories(Ljava/util/List;)V

    .line 597
    move-object v4, v9

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 601
    :try_start_0
    move-object v4, v15

    check-cast v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_2d

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2e

    :cond_2d
    const-string v15, ""

    .line 602
    :cond_2e
    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :catch_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_24

    :cond_2f
    const/4 v4, 0x6

    const/4 v7, 0x2

    const/16 v17, 0x0

    goto/16 :goto_19

    .line 607
    :cond_30
    :goto_24
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 609
    :cond_31
    invoke-virtual {v8, v6}, Lfast/dic/dict/models/database/SearchResultModel;->setPersianSearchResultModel(Lfast/dic/dict/models/database/PersianSearchResultModel;)V

    .line 610
    invoke-virtual {v8}, Lfast/dic/dict/models/database/SearchResultModel;->getPersianSearchResultModel()Lfast/dic/dict/models/database/PersianSearchResultModel;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1, v9}, Lfast/dic/dict/models/database/PersianSearchResultModel;->setWordDetails(Ljava/util/List;)V

    .line 612
    :cond_32
    :goto_25
    iget-object v0, v0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "===== Finished GetDetailByWord = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v8
.end method

.method public final getEnglishCollocations(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomModel;",
            ">;"
        }
    .end annotation

    .line 1520
    const-string v0, "19"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    iget-object v2, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v2}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1524
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    return-object p0

    .line 1530
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT w.english_word as word, d.english_detail_id as english_detail_id, d.persian_meaning as persian_meaning, i.english_idiom_id as english_idiom_id, i.english_idiom_word_id as english_idiom_word_id, p.english_pos_id, p.pos FROM english_idioms i LEFT JOIN english_details d ON i.english_idiom_word_id = d.english_word_id LEFT JOIN english_words w ON i.english_idiom_word_id = w.english_word_id LEFT JOIN english_pos p ON p.english_detail_id = d.english_detail_id WHERE i.english_word_id = \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\" AND pos = 19 GROUP BY p.pos, w.english_word, d.english_detail_id, d.persian_meaning, i.english_idiom_id, i.english_idiom_word_id, p.english_pos_id ORDER BY i.position, i.english_idiom_id, d.position, d.english_detail_id LIMIT 20"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 1532
    invoke-direct {p0, p1, v2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 1535
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_8

    .line 1537
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1539
    :cond_2
    new-instance p1, Lfast/dic/dict/models/database/EnglishIdiomModel;

    invoke-direct {p1}, Lfast/dic/dict/models/database/EnglishIdiomModel;-><init>()V

    .line 1541
    :try_start_0
    const-string v3, "pos"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1868
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_3
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x3

    .line 1542
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "18"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string v5, "20"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1869
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 1870
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1542
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1544
    const-string/jumbo v4, "word"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->setEnglishWord(Ljava/lang/String;)V

    .line 1546
    const-string v4, "english_idiom_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1545
    invoke-virtual {p1, v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->setEnglishIdiomId(Ljava/lang/Integer;)V

    .line 1548
    const-string v4, "persian_meaning"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1547
    invoke-virtual {p1, v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->setPersianMeaning(Ljava/lang/String;)V

    .line 1550
    const-string v4, "english_detail_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1549
    invoke-virtual {p1, v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->setEnglishDetailId(Ljava/lang/Integer;)V

    .line 1553
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1554
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    :catch_0
    :cond_7
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1561
    :cond_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1563
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getEnglishIdioms(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomModel;",
            ">;"
        }
    .end annotation

    .line 1568
    const-string v0, "18"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 1570
    iget-object v2, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v2}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1572
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1578
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT w.english_word as word, d.english_detail_id as english_detail_id, d.persian_meaning as persian_meaning, i.english_idiom_id as english_idiom_id, i.english_idiom_word_id as english_idiom_word_id, p.english_pos_id, p.pos FROM english_idioms i LEFT JOIN english_details d ON i.english_idiom_word_id = d.english_word_id LEFT JOIN english_words w ON i.english_idiom_word_id = w.english_word_id LEFT JOIN english_pos p ON p.english_detail_id = d.english_detail_id WHERE i.english_word_id = \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\" AND pos = 18 GROUP BY p.pos, w.english_word, d.english_detail_id, d.persian_meaning, i.english_idiom_id, i.english_idiom_word_id, p.english_pos_id ORDER BY i.position, i.english_idiom_id, d.position, d.english_detail_id LIMIT 20"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 1580
    invoke-direct {p0, p1, v2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 1583
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_8

    .line 1585
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1587
    :cond_2
    new-instance p1, Lfast/dic/dict/models/database/EnglishIdiomModel;

    invoke-direct {p1}, Lfast/dic/dict/models/database/EnglishIdiomModel;-><init>()V

    .line 1589
    :try_start_0
    const-string v3, "pos"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1872
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_3
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x3

    .line 1590
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-string v5, "19"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "20"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1873
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 1874
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1590
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1592
    const-string/jumbo v4, "word"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->setEnglishWord(Ljava/lang/String;)V

    .line 1594
    const-string v4, "english_idiom_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1593
    invoke-virtual {p1, v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->setEnglishIdiomId(Ljava/lang/Integer;)V

    .line 1596
    const-string v4, "persian_meaning"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1595
    invoke-virtual {p1, v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->setPersianMeaning(Ljava/lang/String;)V

    .line 1598
    const-string v4, "english_detail_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1597
    invoke-virtual {p1, v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->setEnglishDetailId(Ljava/lang/Integer;)V

    .line 1601
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1602
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1607
    :catch_0
    :cond_7
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1610
    :cond_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1612
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getEnglishPOSs(I)Lfast/dic/dict/models/database/EnglishIdiomsModel;
    .locals 3

    .line 1458
    new-instance v0, Lfast/dic/dict/models/database/EnglishIdiomsModel;

    invoke-direct {v0}, Lfast/dic/dict/models/database/EnglishIdiomsModel;-><init>()V

    .line 1459
    invoke-virtual {p0, p1}, Lfast/dic/dict/database/FDDatabaseManager;->getEnglishCollocations(I)Ljava/util/List;

    move-result-object v1

    .line 1460
    invoke-virtual {p0, p1}, Lfast/dic/dict/database/FDDatabaseManager;->getEnglishPhrasalVerbs(I)Ljava/util/List;

    move-result-object v2

    .line 1461
    invoke-virtual {p0, p1}, Lfast/dic/dict/database/FDDatabaseManager;->getEnglishIdioms(I)Ljava/util/List;

    move-result-object p1

    .line 1463
    invoke-direct {p0, p1}, Lfast/dic/dict/database/FDDatabaseManager;->groupIdiomMeanings(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfast/dic/dict/models/database/EnglishIdiomsModel;->setIdioms(Ljava/util/List;)V

    .line 1464
    invoke-direct {p0, v1}, Lfast/dic/dict/database/FDDatabaseManager;->groupIdiomMeanings(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfast/dic/dict/models/database/EnglishIdiomsModel;->setCollocations(Ljava/util/List;)V

    .line 1465
    invoke-direct {p0, v2}, Lfast/dic/dict/database/FDDatabaseManager;->groupIdiomMeanings(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/models/database/EnglishIdiomsModel;->setPhrasalVerbs(Ljava/util/List;)V

    return-object v0
.end method

.method public final getEnglishPhrasalVerbs(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomModel;",
            ">;"
        }
    .end annotation

    .line 1472
    const-string v0, "20"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1474
    iget-object v2, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v2}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1476
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1482
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT w.english_word as word, d.english_detail_id as english_detail_id, d.persian_meaning as persian_meaning, i.english_idiom_id as english_idiom_id, i.english_idiom_word_id as english_idiom_word_id, p.english_pos_id, p.pos FROM english_idioms i LEFT JOIN english_details d ON i.english_idiom_word_id = d.english_word_id LEFT JOIN english_words w ON i.english_idiom_word_id = w.english_word_id LEFT JOIN english_pos p ON p.english_detail_id = d.english_detail_id WHERE i.english_word_id = \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\" AND pos = 20 GROUP BY p.pos, w.english_word, d.english_detail_id, d.persian_meaning, i.english_idiom_id, i.english_idiom_word_id, p.english_pos_id ORDER BY i.position, i.english_idiom_id, d.position, d.english_detail_id LIMIT 20"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 1484
    invoke-direct {p0, p1, v2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 1487
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_8

    .line 1489
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1491
    :cond_2
    new-instance p1, Lfast/dic/dict/models/database/EnglishIdiomModel;

    invoke-direct {p1}, Lfast/dic/dict/models/database/EnglishIdiomModel;-><init>()V

    .line 1493
    :try_start_0
    const-string v3, "pos"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1864
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v3, v2

    goto :goto_0

    :cond_3
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_4

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x3

    .line 1494
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "18"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "19"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    aput-object v0, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 1865
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 1866
    :cond_5
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1494
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1496
    const-string/jumbo v4, "word"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->setEnglishWord(Ljava/lang/String;)V

    .line 1498
    const-string v4, "english_idiom_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1497
    invoke-virtual {p1, v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->setEnglishIdiomId(Ljava/lang/Integer;)V

    .line 1500
    const-string v4, "persian_meaning"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1499
    invoke-virtual {p1, v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->setPersianMeaning(Ljava/lang/String;)V

    .line 1502
    const-string v4, "english_detail_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1501
    invoke-virtual {p1, v4}, Lfast/dic/dict/models/database/EnglishIdiomModel;->setEnglishDetailId(Ljava/lang/Integer;)V

    .line 1505
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1506
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1510
    :catch_0
    :cond_7
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1513
    :cond_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1515
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final getEnglishSynonymsAntonyms(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;",
            ">;"
        }
    .end annotation

    .line 1326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT english_synonyms_antonyms_id, definitions, synonyms, antonyms, pos FROM english_synonyms_antonyms WHERE english_word_id = \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" ORDER BY position, english_synonyms_antonyms_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 1330
    invoke-direct {p0, p1, v1}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1333
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 1335
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1337
    :cond_1
    new-instance p1, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;

    invoke-direct {p1}, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;-><init>()V

    .line 1339
    :try_start_0
    const-string v1, "pos"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->setPos(Ljava/lang/String;)V

    .line 1341
    const-string v1, "synonyms"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1340
    invoke-virtual {p1, v1}, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->setSynonyms(Ljava/lang/String;)V

    .line 1343
    const-string v1, "antonyms"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1342
    invoke-virtual {p1, v1}, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->setAntonyms(Ljava/lang/String;)V

    .line 1345
    const-string v1, "english_synonyms_antonyms_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1344
    invoke-virtual {p1, v1}, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->setWordId(Ljava/lang/Integer;)V

    .line 1347
    const-string v1, "definitions"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1346
    invoke-virtual {p1, v1}, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->setDefinitions(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    :catch_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1351
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1354
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1355
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getMeaningByWord(Ljava/lang/String;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "word"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 258
    :cond_0
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v0, :cond_3

    .line 266
    new-array p2, v3, [Ljava/lang/String;

    aput-object p1, p2, v2

    const-string p1, "SELECT w.english_word as english_word, w.english_word_id as english_word_id, COALESCE(d.persian_meaning, \'\') as persian_meaning, countable_uncountable FROM english_words w LEFT JOIN english_details d ON w.english_word_id = d.english_word_id WHERE w.english_word = ? ORDER BY d.position, d.english_detail_id LIMIT 1"

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 272
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 275
    :cond_1
    const-string p1, "persian_meaning"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_1

    .line 278
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 280
    :cond_3
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p2, v0, :cond_6

    .line 288
    new-array p2, v3, [Ljava/lang/String;

    aput-object p1, p2, v2

    const-string p1, "SELECT w.persian_word as persian_word, w.persian_word_id as persian_word_id, d.english_meaning as english_meaning FROM persian_words w LEFT JOIN persian_details d ON w.persian_word_id = d.persian_word_id WHERE w.persian_word = ? ORDER BY d.position, d.persian_detail_id LIMIT 1"

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 293
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 295
    :cond_4
    const-string p1, "english_meaning"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_4

    .line 299
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v1
.end method

.method public final getMeanings(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;ILnet/zetetic/database/sqlcipher/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
            "I",
            "Lnet/zetetic/database/sqlcipher/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1712
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    .line 1714
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v0, :cond_0

    .line 1716
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SELECT persian_meaning as meaning FROM english_details WHERE english_word_id = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1717
    :cond_0
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v0, :cond_1

    .line 1719
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "SELECT english_meaning as meaning FROM persian_details WHERE persian_word_id = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1717
    :cond_1
    const-string p1, ""

    :goto_0
    if-eqz p3, :cond_4

    const/4 p2, 0x0

    .line 1723
    invoke-virtual {p3, p1, p2}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "rawQuery(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1726
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_3

    .line 1728
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1732
    :cond_2
    :try_start_0
    const-string p2, "meaning"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1733
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    :catch_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1739
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p0
.end method

.method public final getPos(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
            "I)",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PosModel;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1271
    iget-object v1, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v1}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 1277
    :cond_0
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    .line 1278
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "SELECT pos FROM english_pos WHERE english_detail_id = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1279
    invoke-direct {p0, p1, v3}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    .line 1280
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_3

    .line 1282
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1284
    :cond_2
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 1287
    new-instance p2, Lfast/dic/dict/models/database/PosModel;

    .line 1288
    sget-object v1, Lfast/dic/dict/utils/FDWordPartOfSpeech;->INSTANCE:Lfast/dic/dict/utils/FDWordPartOfSpeech;

    invoke-virtual {v1, p1}, Lfast/dic/dict/utils/FDWordPartOfSpeech;->getEnglish(I)Ljava/lang/String;

    move-result-object v1

    .line 1289
    sget-object v3, Lfast/dic/dict/utils/FDWordPartOfSpeech;->INSTANCE:Lfast/dic/dict/utils/FDWordPartOfSpeech;

    invoke-virtual {v3, p1}, Lfast/dic/dict/utils/FDWordPartOfSpeech;->findEnglishEquivalentInPersian(I)Ljava/lang/String;

    move-result-object p1

    .line 1287
    invoke-direct {p2, v1, p1}, Lfast/dic/dict/models/database/PosModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1297
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 1298
    :cond_4
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v1, :cond_8

    .line 1299
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "SELECT pos FROM persian_pos WHERE persian_detail_id = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1300
    invoke-direct {p0, p1, v3}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 1301
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_7

    .line 1303
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1305
    :cond_6
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 1308
    new-instance p2, Lfast/dic/dict/models/database/PosModel;

    .line 1309
    sget-object v1, Lfast/dic/dict/utils/FDWordPartOfSpeech;->INSTANCE:Lfast/dic/dict/utils/FDWordPartOfSpeech;

    invoke-virtual {v1, p1}, Lfast/dic/dict/utils/FDWordPartOfSpeech;->getPersian(I)Ljava/lang/String;

    move-result-object v1

    .line 1310
    sget-object v3, Lfast/dic/dict/utils/FDWordPartOfSpeech;->INSTANCE:Lfast/dic/dict/utils/FDWordPartOfSpeech;

    invoke-virtual {v3, p1}, Lfast/dic/dict/utils/FDWordPartOfSpeech;->findPersianEquivalentInEnglish(I)Ljava/lang/String;

    move-result-object p1

    .line 1308
    invoke-direct {p2, v1, p1}, Lfast/dic/dict/models/database/PosModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1315
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1318
    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_0
    return-object v0
.end method

.method public final getSentences(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
            "I)",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/SentenseModel;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1403
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1405
    iget-object v1, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v1}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1411
    :cond_0
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v1, :cond_1

    .line 1412
    const-string v1, "SELECT english_sentence_id, english_sentence, persian_sentence FROM english_sentences WHERE english_detail_id = ? ORDER BY position, english_sentence_id"

    goto :goto_0

    .line 1414
    :cond_1
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v1, :cond_2

    .line 1415
    const-string v1, "SELECT persian_sentence_id, english_sentence, persian_sentence FROM persian_sentences WHERE persian_detail_id = ? ORDER BY position, persian_sentence_id"

    goto :goto_0

    .line 1414
    :cond_2
    const-string v1, ""

    :goto_0
    const/4 v2, 0x1

    .line 1418
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-direct {p0, v1, v2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_3

    :goto_1
    return-object v0

    .line 1421
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_8

    .line 1423
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1425
    :cond_4
    new-instance p2, Lfast/dic/dict/models/database/SentenseModel;

    invoke-direct {p2}, Lfast/dic/dict/models/database/SentenseModel;-><init>()V

    .line 1429
    :try_start_0
    const-string v1, "english_sentence"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1431
    const-string v2, "persian_sentence"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1434
    sget-object v3, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_6

    .line 1436
    const-string v3, "english_sentence_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1862
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    .line 1440
    :cond_6
    const-string v3, "persian_sentence_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1863
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1433
    :goto_2
    invoke-virtual {p2, v4}, Lfast/dic/dict/models/database/SentenseModel;->setEnglish_sentence_id(Ljava/lang/Integer;)V

    .line 1444
    invoke-virtual {p2, v1}, Lfast/dic/dict/models/database/SentenseModel;->setEnglish(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {p2, v2}, Lfast/dic/dict/models/database/SentenseModel;->setPersian(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    :catch_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1450
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1453
    :cond_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public final getSynonymsAntonyms(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
            "I)",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PersianSynonymsAntonyms;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 1366
    iget-object v1, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v1}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1371
    :cond_0
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1375
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "SELECT persian_synonyms_antonyms_id, synonym_antonym FROM persian_synonyms_antonyms WHERE persian_word_id = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ORDER BY position, persian_synonyms_antonyms_id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 1376
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_2

    :goto_0
    return-object v0

    .line 1379
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 1381
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1383
    :cond_3
    new-instance p1, Lfast/dic/dict/models/database/PersianSynonymsAntonyms;

    invoke-direct {p1}, Lfast/dic/dict/models/database/PersianSynonymsAntonyms;-><init>()V

    .line 1386
    :try_start_0
    const-string p2, "synonym_antonym"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1387
    invoke-virtual {p1, p2}, Lfast/dic/dict/models/database/PersianSynonymsAntonyms;->setSynonymAntonym(Ljava/lang/String;)V

    .line 1388
    const-string p2, "persian_word_id"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfast/dic/dict/models/database/PersianSynonymsAntonyms;->setWordId(Ljava/lang/Integer;)V

    .line 1390
    const-string p2, "persian_synonyms_antonyms_id"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1389
    invoke-virtual {p1, p2}, Lfast/dic/dict/models/database/PersianSynonymsAntonyms;->setPersianSynonymsAntonymsId(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    :catch_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1394
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1397
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public final getWordById(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    const-string v0, ""

    if-nez p2, :cond_0

    return-object v0

    .line 797
    :cond_0
    iget-object v1, p0, Lfast/dic/dict/database/FDDatabaseManager;->databaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    invoke-virtual {v1}, Lfast/dic/dict/helpers/FDMainDatabaseHelper;->checkDataBase()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 802
    :cond_1
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v1, :cond_2

    .line 803
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "SELECT english_word AS word FROM english_words WHERE english_word_id = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 805
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "SELECT persian_word AS word FROM persian_words WHERE persian_word_id = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x0

    .line 807
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 813
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 816
    const-string/jumbo p1, "word"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 819
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method public final getWordFamily(Ljava/lang/String;)Lfast/dic/dict/models/database/EnglishWordFamily;
    .locals 10

    const-string/jumbo v0, "word"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    new-instance v0, Lfast/dic/dict/models/database/EnglishWordFamily;

    invoke-direct {v0}, Lfast/dic/dict/models/database/EnglishWordFamily;-><init>()V

    .line 829
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 830
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 831
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    .line 832
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 833
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/List;

    .line 837
    invoke-virtual {p0}, Lfast/dic/dict/database/FDDatabaseManager;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const-string p1, "SELECT `word`, `pos` FROM english_word_families_words WHERE english_word_family_id = (SELECT english_word_family_id FROM english_word_families_words WHERE word = ? LIMIT 1)"

    invoke-virtual {p0, p1, v7}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 839
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 841
    :cond_1
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 842
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eq p1, v6, :cond_6

    const/4 v9, 0x5

    if-eq p1, v9, :cond_5

    const/4 v9, 0x6

    if-eq p1, v9, :cond_4

    const/4 v9, 0x7

    if-eq p1, v9, :cond_3

    const/16 v9, 0x8

    if-eq p1, v9, :cond_2

    goto :goto_0

    .line 849
    :cond_2
    move-object p1, v2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 846
    :cond_3
    move-object p1, v3

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 848
    :cond_4
    move-object p1, v5

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 847
    :cond_5
    move-object p1, v4

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 845
    :cond_6
    move-object p1, v1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 852
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_1

    .line 855
    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 857
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_8

    .line 858
    invoke-virtual {v0, v1}, Lfast/dic/dict/models/database/EnglishWordFamily;->setNoun(Ljava/util/List;)V

    .line 861
    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_9

    .line 862
    invoke-virtual {v0, v3}, Lfast/dic/dict/models/database/EnglishWordFamily;->setAdjective(Ljava/util/List;)V

    .line 865
    :cond_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_a

    .line 866
    invoke-virtual {v0, v4}, Lfast/dic/dict/models/database/EnglishWordFamily;->setVerbTransitive(Ljava/util/List;)V

    .line 869
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_b

    .line 870
    invoke-virtual {v0, v5}, Lfast/dic/dict/models/database/EnglishWordFamily;->setVerbIntransitive(Ljava/util/List;)V

    .line 873
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_c

    .line 874
    invoke-virtual {v0, v2}, Lfast/dic/dict/models/database/EnglishWordFamily;->setAdverb(Ljava/util/List;)V

    :cond_c
    :goto_1
    return-object v0
.end method

.method public final getWordIdParent(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "word"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1646
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 1653
    :try_start_0
    sget-object v2, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_5

    .line 1655
    const-string p1, "SELECT english_word_id_parent FROM english_words WHERE english_word = ?"
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1660
    :try_start_1
    new-array v2, v3, [Ljava/lang/String;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v3, "toLowerCase(...)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p2, v2, v0

    invoke-direct {p0, p1, v2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    move-object p2, v1

    .line 1663
    :cond_2
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1665
    const-string v2, "english_word_id_parent"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1882
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object p2, v1

    goto :goto_0

    :cond_3
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1667
    :cond_4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1669
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_4

    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object p2, v1

    .line 1671
    :goto_1
    :try_start_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-object p2

    .line 1676
    :cond_5
    sget-object v2, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v2, :cond_a

    .line 1678
    const-string p1, "SELECT persian_word_id_parent FROM persian_words WHERE persian_word = ?"
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1682
    :try_start_4
    new-array v2, v3, [Ljava/lang/String;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-direct {p0, p1, v2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4

    if-nez p1, :cond_6

    return-object v1

    :cond_6
    move-object p2, v1

    .line 1685
    :cond_7
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1687
    const-string v2, "persian_word_id_parent"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1883
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object p2, v1

    goto :goto_2

    :cond_8
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1689
    :cond_9
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1691
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4

    return-object p2

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    move-object p2, v1

    .line 1693
    :goto_3
    :try_start_6
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4

    return-object p2

    :catch_4
    move-exception p1

    .line 1699
    iget-object p0, p0, Lfast/dic/dict/database/FDDatabaseManager;->logger:Lfast/dic/dict/utils/Logger;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "~~~> SQLiteException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1700
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 1701
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    :cond_a
    return-object v1
.end method

.method public final getWordMeanings(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
            "I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 884
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->English:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v1, :cond_0

    .line 887
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "SELECT persian_meaning as meaning FROM english_details WHERE english_word_id = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " ORDER BY position, english_detail_id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 888
    :cond_0
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;->Persian:Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    if-ne p1, v1, :cond_1

    .line 890
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "SELECT english_meaning as meaning FROM persian_details WHERE persian_word_id = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 888
    :cond_1
    const-string p1, ""

    :goto_0
    const/4 p2, 0x0

    .line 892
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/database/FDDatabaseManager;->safeRawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 896
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 898
    :cond_2
    const-string p1, "meaning"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_2

    .line 901
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method public final search(Ljava/lang/String;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "finalWord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "needHistoryCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lfast/dic/dict/database/FDDatabaseManager;->searchJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 100
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lfast/dic/dict/database/FDDatabaseManager$search$1;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v8}, Lfast/dic/dict/database/FDDatabaseManager$search$1;-><init>(Lfast/dic/dict/database/FDDatabaseManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/coroutines/Continuation;)V

    move-object v4, v2

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/database/FDDatabaseManager;->searchJob:Lkotlinx/coroutines/Job;

    return-void
.end method
