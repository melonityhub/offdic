.class public final Lfast/dic/dict/FDApplication;
.super Lfast/dic/dict/Hilt_FDApplication;
.source "FDApplication.kt"


# annotations
.annotation runtime Ldagger/hilt/android/HiltAndroidApp;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\n\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR#\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\n\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00ca\u0001\u0002\u0008\u0015\u00a8\u0006\u0014"
    }
    d2 = {
        "Lfast/dic/dict/FDApplication;",
        "Landroid/app/Application;",
        "<init>",
        "()V",
        "fdParseWrapper",
        "Lfast/dic/dict/services/parse/FDParseWrapper;",
        "getFdParseWrapper",
        "()Lfast/dic/dict/services/parse/FDParseWrapper;",
        "setFdParseWrapper",
        "(Lfast/dic/dict/services/parse/FDParseWrapper;)V",
        "Ljavax/inject/Inject;",
        "firebaseUserPropertiesManager",
        "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "getFirebaseUserPropertiesManager",
        "()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "setFirebaseUserPropertiesManager",
        "(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V",
        "onCreate",
        "",
        "fetchParseUser",
        "app",
        "Ldagger/hilt/android/HiltAndroidApp;"
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
.field public fdParseWrapper:Lfast/dic/dict/services/parse/FDParseWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$58GupDoTXifrNYMjM_HQHv-3ClI(Lfast/dic/dict/services/parse/FDPurchased;Lcom/parse/ParseException;)V
    .locals 0

    invoke-static {p0, p1}, Lfast/dic/dict/FDApplication;->fetchParseUser$lambda$0$0(Lfast/dic/dict/services/parse/FDPurchased;Lcom/parse/ParseException;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lfast/dic/dict/Hilt_FDApplication;-><init>()V

    return-void
.end method

.method public static final synthetic access$fetchParseUser(Lfast/dic/dict/FDApplication;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lfast/dic/dict/FDApplication;->fetchParseUser()V

    return-void
.end method

.method private final fetchParseUser()V
    .locals 7

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lfast/dic/dict/FDApplication;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setStandardUserProperties()V

    .line 107
    invoke-virtual {p0}, Lfast/dic/dict/FDApplication;->getFdParseWrapper()Lfast/dic/dict/services/parse/FDParseWrapper;

    move-result-object v1

    new-instance v2, Lfast/dic/dict/FDApplication$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lfast/dic/dict/FDApplication$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/FDApplication;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lfast/dic/dict/services/parse/FDParseWrapper;->fetchParseUser$default(Lfast/dic/dict/services/parse/FDParseWrapper;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 133
    sget-object v0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final fetchParseUser$lambda$0(Lfast/dic/dict/FDApplication;Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;
    .locals 4

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fdPurchased"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    check-cast p1, Lfast/dic/dict/services/parse/FDParseUser;

    .line 111
    invoke-virtual {p2, p1}, Lfast/dic/dict/services/parse/FDPurchased;->ValidateUserPurchase(Lfast/dic/dict/services/parse/FDParseUser;)V

    .line 112
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lfast/dic/dict/FDApplication;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object v0

    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getUsername()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserLogout$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 116
    new-instance v0, Lfast/dic/dict/FDApplication$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lfast/dic/dict/FDApplication$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/services/parse/FDPurchased;)V

    invoke-static {v0}, Lcom/parse/ParseUser;->logOutInBackground(Lcom/parse/LogOutCallback;)V

    .line 122
    invoke-virtual {p0}, Lfast/dic/dict/FDApplication;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->isDisabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserDisabled(Z)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/FDApplication;->getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    move-result-object p0

    .line 126
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getUsername()Ljava/lang/String;

    move-result-object p2

    const-string v0, "getUsername(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getEmailVerified()Z

    move-result p1

    .line 125
    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setAuthenticatedUserProperties(Ljava/lang/String;Z)V

    .line 130
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final fetchParseUser$lambda$0$0(Lfast/dic/dict/services/parse/FDPurchased;Lcom/parse/ParseException;)V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->RemovePurchasedPlan1()V

    .line 118
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->RemovePurchasedPlan2()V

    .line 119
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->RemovePurchasedPlan2()V

    return-void
.end method


# virtual methods
.method public final getFdParseWrapper()Lfast/dic/dict/services/parse/FDParseWrapper;
    .locals 0

    .line 36
    iget-object p0, p0, Lfast/dic/dict/FDApplication;->fdParseWrapper:Lfast/dic/dict/services/parse/FDParseWrapper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fdParseWrapper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFirebaseUserPropertiesManager()Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lfast/dic/dict/FDApplication;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "firebaseUserPropertiesManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 10

    .line 43
    invoke-super {p0}, Lfast/dic/dict/Hilt_FDApplication;->onCreate()V

    .line 44
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "-------------> FDApplication created at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->didCrashOnPreviousExecution()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    const-string v1, "FastDic: Firebase crashlytics did detected a crash on previous execution."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lfast/dic/dict/utils/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->sendUnsentReports()V

    .line 51
    :cond_0
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/FDApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "getApplicationContext(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->isFirstLaunch()Ljava/lang/Boolean;

    move-result-object v1

    .line 54
    sget-object v4, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {v4}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "----> START APPLICATION AT "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". isFirstLaunch = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lfast/dic/dict/utils/LocaleExtKt;->downloadApplicationLanguageResource(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getCurrentLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lfast/dic/dict/FDApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lfast/dic/dict/utils/LocaleExtKt;->updateCurrentLanguage(Ljava/util/Locale;Landroid/content/Context;)V

    .line 60
    sget-object v0, Lfast/dic/dict/providers/FDContentProvider;->Companion:Lfast/dic/dict/providers/FDContentProvider$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/providers/FDContentProvider$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    sget-object v0, Lfast/dic/dict/providers/FDContentProvider;->Companion:Lfast/dic/dict/providers/FDContentProvider$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/FDApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lfast/dic/dict/providers/FDContentProvider$Companion;->setAppContext(Landroid/content/Context;)V

    .line 64
    :cond_1
    invoke-static {v1}, Lcom/google/mlkit/common/sdkinternal/MlKitContext;->initializeIfNeeded(Landroid/content/Context;)Lcom/google/mlkit/common/sdkinternal/MlKitContext;

    .line 65
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v0, Lfast/dic/dict/FDApplication$onCreate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfast/dic/dict/FDApplication$onCreate$1;-><init>(Lfast/dic/dict/FDApplication;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v0, v4, :cond_2

    .line 73
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lfast/dic/dict/FDApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    .line 77
    :cond_2
    const-class v0, Lfast/dic/dict/services/parse/FDParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 78
    const-class v0, Lfast/dic/dict/services/parse/FDParseSession;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 80
    new-instance v0, Lcom/parse/Parse$Configuration$Builder;

    invoke-virtual {p0}, Lfast/dic/dict/FDApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/parse/Parse$Configuration$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    const-string v4, "ga7la7qzewqx68pcckpdmptswcsw6wrbcqhhs107"

    invoke-virtual {v0, v4}, Lcom/parse/Parse$Configuration$Builder;->applicationId(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    .line 82
    const-string v4, "j1kacghc0j2h6v5gp6ba5snamhjwj1i2vln6jggm"

    invoke-virtual {v0, v4}, Lcom/parse/Parse$Configuration$Builder;->clientKey(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    .line 83
    const-string v4, "https://parse.fastdic.com/parse/"

    invoke-virtual {v0, v4}, Lcom/parse/Parse$Configuration$Builder;->server(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v2}, Lcom/parse/Parse$Configuration$Builder;->maxRetries(I)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/parse/Parse$Configuration$Builder;->enableLocalDataStore()Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/parse/Parse$Configuration$Builder;->build()Lcom/parse/Parse$Configuration;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/parse/Parse;->initialize(Lcom/parse/Parse$Configuration;)V

    .line 89
    invoke-static {}, Lcom/parse/ParseUser;->enableRevocableSessionInBackground()Lcom/parse/boltsinternal/Task;

    .line 95
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v0, Lfast/dic/dict/FDApplication$onCreate$2;

    invoke-direct {v0, p0, v1}, Lfast/dic/dict/FDApplication$onCreate$2;-><init>(Lfast/dic/dict/FDApplication;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 99
    sget-object v0, Lfast/dic/dict/utils/AppWidgetHelper;->INSTANCE:Lfast/dic/dict/utils/AppWidgetHelper;

    invoke-virtual {p0}, Lfast/dic/dict/FDApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lfast/dic/dict/utils/AppWidgetHelper;->setAlarmManagerForUpdateWidget(Landroid/content/Context;)V

    return-void
.end method

.method public final setFdParseWrapper(Lfast/dic/dict/services/parse/FDParseWrapper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lfast/dic/dict/FDApplication;->fdParseWrapper:Lfast/dic/dict/services/parse/FDParseWrapper;

    return-void
.end method

.method public final setFirebaseUserPropertiesManager(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lfast/dic/dict/FDApplication;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-void
.end method
