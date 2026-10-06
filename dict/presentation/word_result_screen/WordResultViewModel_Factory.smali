.class public final Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;
.super Ljava/lang/Object;
.source "WordResultViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectivityHelperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final databaseHelperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/FDDatabaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private final favoriteProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
            ">;"
        }
    .end annotation
.end field

.field private final fdAdsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
            ">;"
        }
    .end annotation
.end field

.field private final fdParseWrapperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/parse/FDParseWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final historyCategoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/utils/FDCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final historyProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final htmlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/utils/FDHtml;",
            ">;"
        }
    .end annotation
.end field

.field private final localStorageProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mContextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final soundEffectProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDSoundEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/utils/FDHtml;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDSoundEffect;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/utils/FDCategory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/parse/FDParseWrapper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/FDDatabaseManager;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->htmlProvider:Ldagger/internal/Provider;

    .line 67
    iput-object p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->fdAdsProvider:Ldagger/internal/Provider;

    .line 68
    iput-object p3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->historyProvider:Ldagger/internal/Provider;

    .line 69
    iput-object p4, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->favoriteProvider:Ldagger/internal/Provider;

    .line 70
    iput-object p5, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->soundEffectProvider:Ldagger/internal/Provider;

    .line 71
    iput-object p6, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->localStorageProvider:Ldagger/internal/Provider;

    .line 72
    iput-object p7, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->historyCategoryProvider:Ldagger/internal/Provider;

    .line 73
    iput-object p8, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->fdParseWrapperProvider:Ldagger/internal/Provider;

    .line 74
    iput-object p9, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->databaseHelperProvider:Ldagger/internal/Provider;

    .line 75
    iput-object p10, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->mContextProvider:Ldagger/internal/Provider;

    .line 76
    iput-object p11, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->connectivityHelperProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/utils/FDHtml;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDFavourite;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDSoundEffect;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/utils/FDCategory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/parse/FDParseWrapper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/FDDatabaseManager;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDConnectivityHelper;",
            ">;)",
            "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;"
        }
    .end annotation

    .line 91
    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/utils/FDHtml;Lfast/dic/dict/services/FDAds;Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/FDSoundEffect;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/utils/FDCategory;Lfast/dic/dict/services/parse/FDParseWrapper;Lfast/dic/dict/database/FDDatabaseManager;Landroid/content/Context;Lfast/dic/dict/helpers/FDConnectivityHelper;)Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;
    .locals 12

    .line 98
    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;-><init>(Lfast/dic/dict/utils/FDHtml;Lfast/dic/dict/services/FDAds;Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/FDSoundEffect;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/utils/FDCategory;Lfast/dic/dict/services/parse/FDParseWrapper;Lfast/dic/dict/database/FDDatabaseManager;Landroid/content/Context;Lfast/dic/dict/helpers/FDConnectivityHelper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;
    .locals 12

    .line 81
    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->htmlProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lfast/dic/dict/utils/FDHtml;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->fdAdsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lfast/dic/dict/services/FDAds;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->historyProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->favoriteProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->soundEffectProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lfast/dic/dict/helpers/FDSoundEffect;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->localStorageProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lfast/dic/dict/database/LocalStorage;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->historyCategoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lfast/dic/dict/utils/FDCategory;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->fdParseWrapperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lfast/dic/dict/services/parse/FDParseWrapper;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->databaseHelperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lfast/dic/dict/database/FDDatabaseManager;

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->mContextProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/Context;

    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->connectivityHelperProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lfast/dic/dict/helpers/FDConnectivityHelper;

    invoke-static/range {v1 .. v11}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->newInstance(Lfast/dic/dict/utils/FDHtml;Lfast/dic/dict/services/FDAds;Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/FDSoundEffect;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/utils/FDCategory;Lfast/dic/dict/services/parse/FDParseWrapper;Lfast/dic/dict/database/FDDatabaseManager;Landroid/content/Context;Lfast/dic/dict/helpers/FDConnectivityHelper;)Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel_Factory;->get()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object p0

    return-object p0
.end method
