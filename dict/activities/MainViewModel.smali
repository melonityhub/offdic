.class public final Lfast/dic/dict/activities/MainViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "MainViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/activities/MainViewModel$AdCommand;,
        Lfast/dic/dict/activities/MainViewModel$CopyUiState;,
        Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;,
        Lfast/dic/dict/activities/MainViewModel$IntentAction;,
        Lfast/dic/dict/activities/MainViewModel$MigrationUiState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0005;<=>?B5\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u001a\u0002\u0008\u000e\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010.J\u0006\u0010/\u001a\u00020,J\u0006\u00100\u001a\u00020,J\u0006\u00101\u001a\u00020,J\u0006\u00102\u001a\u00020,J\u0010\u00103\u001a\u00020,2\u0008\u0008\u0002\u00104\u001a\u000205J\u0006\u00106\u001a\u00020,J\u000e\u00107\u001a\u00020,2\u0006\u00108\u001a\u000209J\u0006\u0010:\u001a\u00020,R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0017R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020$0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010%\u001a\u0008\u0012\u0004\u0012\u00020$0 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\"R\u0014\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020(0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010)\u001a\u0008\u0012\u0004\u0012\u00020(0 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\"\u00ca\u0001\u0002\u0008A\u00a8\u0006@"
    }
    d2 = {
        "Lfast/dic/dict/activities/MainViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "fdMainDatabaseHelper",
        "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
        "fdListPath",
        "Lfast/dic/dict/helpers/FDListPath;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "fdAds",
        "Lfast/dic/dict/services/FDAds;",
        "soundEffect",
        "Lfast/dic/dict/helpers/FDSoundEffect;",
        "<init>",
        "(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/FDAds;Lfast/dic/dict/helpers/FDSoundEffect;)V",
        "Ljavax/inject/Inject;",
        "couchbaseLiteManager",
        "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;",
        "_migrationUiState",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lfast/dic/dict/activities/MainViewModel$MigrationUiState;",
        "migrationUiState",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getMigrationUiState",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_copyUiState",
        "Lfast/dic/dict/activities/MainViewModel$CopyUiState;",
        "copyUiState",
        "getCopyUiState",
        "_intentActions",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "Lfast/dic/dict/activities/MainViewModel$IntentAction;",
        "intentActions",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getIntentActions",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "_floatingWindowCommands",
        "Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;",
        "floatingWindowCommands",
        "getFloatingWindowCommands",
        "_adCommands",
        "Lfast/dic/dict/activities/MainViewModel$AdCommand;",
        "adCommands",
        "getAdCommands",
        "handleIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "checkFloatingWindow",
        "requestAdInit",
        "segmentUserByApplicationBuild",
        "migrateDatabase",
        "copyMainDatabase",
        "forceClose",
        "",
        "performTapVibration",
        "initializeAdsForFreeUsers",
        "activity",
        "Landroid/app/Activity;",
        "showBannerAds",
        "MigrationUiState",
        "CopyUiState",
        "IntentAction",
        "FloatingWindowCommand",
        "AdCommand",
        "app",
        "Ldagger/hilt/android/lifecycle/HiltViewModel;"
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
.field private final _adCommands:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lfast/dic/dict/activities/MainViewModel$AdCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final _copyUiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lfast/dic/dict/activities/MainViewModel$CopyUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final _floatingWindowCommands:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final _intentActions:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lfast/dic/dict/activities/MainViewModel$IntentAction;",
            ">;"
        }
    .end annotation
.end field

.field private final _migrationUiState:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lfast/dic/dict/activities/MainViewModel$MigrationUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final adCommands:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lfast/dic/dict/activities/MainViewModel$AdCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final copyUiState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lfast/dic/dict/activities/MainViewModel$CopyUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final couchbaseLiteManager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

.field private final fdAds:Lfast/dic/dict/services/FDAds;

.field private final fdListPath:Lfast/dic/dict/helpers/FDListPath;

.field private final fdMainDatabaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

.field private final floatingWindowCommands:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final intentActions:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lfast/dic/dict/activities/MainViewModel$IntentAction;",
            ">;"
        }
    .end annotation
.end field

.field private final localStorage:Lfast/dic/dict/database/LocalStorage;

.field private final migrationUiState:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lfast/dic/dict/activities/MainViewModel$MigrationUiState;",
            ">;"
        }
    .end annotation
.end field

.field private final soundEffect:Lfast/dic/dict/helpers/FDSoundEffect;


# direct methods
.method public constructor <init>(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/helpers/FDListPath;Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/services/FDAds;Lfast/dic/dict/helpers/FDSoundEffect;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "fdMainDatabaseHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fdListPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localStorage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fdAds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "soundEffect"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 35
    iput-object p1, p0, Lfast/dic/dict/activities/MainViewModel;->fdMainDatabaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    .line 36
    iput-object p2, p0, Lfast/dic/dict/activities/MainViewModel;->fdListPath:Lfast/dic/dict/helpers/FDListPath;

    .line 37
    iput-object p3, p0, Lfast/dic/dict/activities/MainViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    .line 38
    iput-object p4, p0, Lfast/dic/dict/activities/MainViewModel;->fdAds:Lfast/dic/dict/services/FDAds;

    .line 39
    iput-object p5, p0, Lfast/dic/dict/activities/MainViewModel;->soundEffect:Lfast/dic/dict/helpers/FDSoundEffect;

    .line 41
    sget-object p1, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->Companion:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;

    invoke-virtual {p1}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;->getInstance()Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/activities/MainViewModel;->couchbaseLiteManager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    .line 43
    sget-object p1, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Idle;->INSTANCE:Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Idle;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/activities/MainViewModel;->_migrationUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 44
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Lfast/dic/dict/activities/MainViewModel;->migrationUiState:Lkotlinx/coroutines/flow/StateFlow;

    .line 46
    sget-object p1, Lfast/dic/dict/activities/MainViewModel$CopyUiState$Idle;->INSTANCE:Lfast/dic/dict/activities/MainViewModel$CopyUiState$Idle;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/activities/MainViewModel;->_copyUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 47
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Lfast/dic/dict/activities/MainViewModel;->copyUiState:Lkotlinx/coroutines/flow/StateFlow;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x5

    .line 50
    invoke-static {p1, p2, p3, p4, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p5

    iput-object p5, p0, Lfast/dic/dict/activities/MainViewModel;->_intentActions:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 51
    check-cast p5, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object p5, p0, Lfast/dic/dict/activities/MainViewModel;->intentActions:Lkotlinx/coroutines/flow/SharedFlow;

    .line 54
    invoke-static {p1, p2, p3, p4, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p5

    iput-object p5, p0, Lfast/dic/dict/activities/MainViewModel;->_floatingWindowCommands:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 55
    check-cast p5, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object p5, p0, Lfast/dic/dict/activities/MainViewModel;->floatingWindowCommands:Lkotlinx/coroutines/flow/SharedFlow;

    .line 57
    invoke-static {p1, p2, p3, p4, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/activities/MainViewModel;->_adCommands:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 58
    check-cast p1, Lkotlinx/coroutines/flow/SharedFlow;

    iput-object p1, p0, Lfast/dic/dict/activities/MainViewModel;->adCommands:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method

.method public static final synthetic access$getFdListPath$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDListPath;
    .locals 0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->fdListPath:Lfast/dic/dict/helpers/FDListPath;

    return-object p0
.end method

.method public static final synthetic access$getFdMainDatabaseHelper$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/helpers/FDMainDatabaseHelper;
    .locals 0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->fdMainDatabaseHelper:Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    return-object p0
.end method

.method public static final synthetic access$getLocalStorage$p(Lfast/dic/dict/activities/MainViewModel;)Lfast/dic/dict/database/LocalStorage;
    .locals 0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    return-object p0
.end method

.method public static final synthetic access$get_adCommands$p(Lfast/dic/dict/activities/MainViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->_adCommands:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$get_copyUiState$p(Lfast/dic/dict/activities/MainViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->_copyUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_floatingWindowCommands$p(Lfast/dic/dict/activities/MainViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->_floatingWindowCommands:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$get_intentActions$p(Lfast/dic/dict/activities/MainViewModel;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->_intentActions:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$get_migrationUiState$p(Lfast/dic/dict/activities/MainViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->_migrationUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static synthetic copyMainDatabase$default(Lfast/dic/dict/activities/MainViewModel;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 231
    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/activities/MainViewModel;->copyMainDatabase(Z)V

    return-void
.end method


# virtual methods
.method public final checkFloatingWindow()V
    .locals 7

    .line 120
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/activities/MainViewModel$checkFloatingWindow$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lfast/dic/dict/activities/MainViewModel$checkFloatingWindow$1;-><init>(Lfast/dic/dict/activities/MainViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final copyMainDatabase(Z)V
    .locals 8

    .line 232
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainViewModel: copyMainDatabase started"

    invoke-virtual {v0, v3, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p0, v4}, Lfast/dic/dict/activities/MainViewModel$copyMainDatabase$1;-><init>(ZLfast/dic/dict/activities/MainViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 300
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const-string p1, "MainViewModel: copyMainDatabase ended"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getAdCommands()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lfast/dic/dict/activities/MainViewModel$AdCommand;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->adCommands:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final getCopyUiState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lfast/dic/dict/activities/MainViewModel$CopyUiState;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->copyUiState:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final getFloatingWindowCommands()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lfast/dic/dict/activities/MainViewModel$FloatingWindowCommand;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->floatingWindowCommands:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final getIntentActions()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Lfast/dic/dict/activities/MainViewModel$IntentAction;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->intentActions:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final getMigrationUiState()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lfast/dic/dict/activities/MainViewModel$MigrationUiState;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->migrationUiState:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final handleIntent(Landroid/content/Intent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/activities/MainViewModel$handleIntent$1;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v2}, Lfast/dic/dict/activities/MainViewModel$handleIntent$1;-><init>(Landroid/content/Intent;Lfast/dic/dict/activities/MainViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final initializeAdsForFreeUsers(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    :try_start_0
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->fdAds:Lfast/dic/dict/services/FDAds;

    invoke-virtual {p0, p1}, Lfast/dic/dict/services/FDAds;->initializeAds(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 323
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MainViewModel: initializeAdsForFreeUsers failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final migrateDatabase()V
    .locals 9

    .line 181
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MainViewModel: migrateDatabase started"

    invoke-virtual {v0, v3, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lfast/dic/dict/activities/MainViewModel;->couchbaseLiteManager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->isDatabaseMigrated(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    invoke-direct {v0}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;-><init>()V

    invoke-virtual {v0}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;->getCurrentFolder()Lfast/dic/dict/models/database/FolderModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const-string v0, "MainViewModel: Ignore migrating in pre-check"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/activities/MainViewModel;->couchbaseLiteManager:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->copyDataBase()V

    .line 193
    iget-object v0, p0, Lfast/dic/dict/activities/MainViewModel;->fdListPath:Lfast/dic/dict/helpers/FDListPath;

    invoke-virtual {v0}, Lfast/dic/dict/helpers/FDListPath;->isDBExistsInDocumentCB()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const-string v0, "MainViewModel: DB already exists in document CB, skipping showing loader"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lfast/dic/dict/activities/MainViewModel;->_migrationUiState:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v3, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;

    sget v4, Lfast/dic/dict/R$string;->ready_for_move_my_words:I

    invoke-direct {v3, v4}, Lfast/dic/dict/activities/MainViewModel$MigrationUiState$Show;-><init>(I)V

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 201
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;

    invoke-direct {v0, p0, v2}, Lfast/dic/dict/activities/MainViewModel$migrateDatabase$1;-><init>(Lfast/dic/dict/activities/MainViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 224
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const-string v0, "MainViewModel: migrateDatabase ended"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final performTapVibration()V
    .locals 3

    .line 309
    :try_start_0
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->soundEffect:Lfast/dic/dict/helpers/FDSoundEffect;

    invoke-virtual {p0}, Lfast/dic/dict/helpers/FDSoundEffect;->tapVibration()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 311
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MainViewModel: performTapVibration failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final requestAdInit()V
    .locals 7

    .line 139
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lfast/dic/dict/activities/MainViewModel$requestAdInit$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lfast/dic/dict/activities/MainViewModel$requestAdInit$1;-><init>(Lfast/dic/dict/activities/MainViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final segmentUserByApplicationBuild()V
    .locals 2

    .line 153
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isNoPurchase()Z

    move-result p0

    const-string v0, "store"

    if-eqz p0, :cond_0

    .line 154
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    const-string v1, "no_purchase_flavor"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    invoke-virtual {p0, v1}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->addAttribute(Ljava/lang/String;)V

    return-void

    .line 158
    :cond_0
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isPlayStore()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 159
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    const-string v1, "google_flavor"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    invoke-virtual {p0, v1}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->addAttribute(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_1
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isBazaar()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 164
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    const-string v1, "bazaar_flavor"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    invoke-virtual {p0, v1}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->addAttribute(Ljava/lang/String;)V

    return-void

    .line 168
    :cond_2
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isIranApps()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 169
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    const-string v1, "iranapps_flavor"

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    invoke-virtual {p0, v1}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->addAttribute(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final showBannerAds()V
    .locals 3

    .line 337
    :try_start_0
    iget-object v0, p0, Lfast/dic/dict/activities/MainViewModel;->fdAds:Lfast/dic/dict/services/FDAds;

    invoke-virtual {v0}, Lfast/dic/dict/services/FDAds;->hasActivityContext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/activities/MainViewModel;->fdAds:Lfast/dic/dict/services/FDAds;

    invoke-virtual {p0}, Lfast/dic/dict/services/FDAds;->showBanner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 340
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MainViewModel: showBannerAds failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
