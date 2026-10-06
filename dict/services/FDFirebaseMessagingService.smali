.class public final Lfast/dic/dict/services/FDFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "FDFirebaseMessagingService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0007H\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lfast/dic/dict/services/FDFirebaseMessagingService;",
        "Lcom/google/firebase/messaging/FirebaseMessagingService;",
        "<init>",
        "()V",
        "onNewToken",
        "",
        "s",
        "",
        "onMessageReceived",
        "remoteMessage",
        "Lcom/google/firebase/messaging/RemoteMessage;",
        "scheduleJob",
        "handleNow",
        "sendRegistrationToParse",
        "token",
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
.field public static final Companion:Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;

.field private static final logger:Lfast/dic/dict/utils/Logger;

.field private static remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/services/FDFirebaseMessagingService;->Companion:Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;

    .line 100
    sget-object v0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/services/FDFirebaseMessagingService;->logger:Lfast/dic/dict/utils/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lfast/dic/dict/utils/Logger;
    .locals 1

    .line 38
    sget-object v0, Lfast/dic/dict/services/FDFirebaseMessagingService;->logger:Lfast/dic/dict/utils/Logger;

    return-object v0
.end method

.method public static final synthetic access$getRemoteMessage$cp()Lcom/google/firebase/messaging/RemoteMessage;
    .locals 1

    .line 38
    sget-object v0, Lfast/dic/dict/services/FDFirebaseMessagingService;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    return-object v0
.end method

.method public static final synthetic access$setRemoteMessage$cp(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    .line 38
    sput-object p0, Lfast/dic/dict/services/FDFirebaseMessagingService;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    return-void
.end method

.method public static final getFloatingWindowsNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/services/FDFirebaseMessagingService;->Companion:Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;->getFloatingWindowsNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private final handleNow(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 2

    .line 90
    sget-object v0, Lfast/dic/dict/services/FDFirebaseMessagingService;->Companion:Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/services/FDFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getApplicationContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;->showNotification(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Context;)Z

    return-void
.end method

.method private final scheduleJob()V
    .locals 3

    .line 76
    new-instance v0, Landroidx/work/Constraints$Builder;

    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 77
    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    .line 79
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Lfast/dic/dict/workers/DownloadMediaWorker;

    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 80
    invoke-virtual {v1, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 81
    invoke-virtual {v0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    .line 82
    sget-object v1, Landroidx/work/WorkManager;->Companion:Landroidx/work/WorkManager$Companion;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroidx/work/WorkManager$Companion;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/work/WorkManager;->beginWith(Landroidx/work/OneTimeWorkRequest;)Landroidx/work/WorkContinuation;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/WorkContinuation;->enqueue()Landroidx/work/Operation;

    return-void
.end method

.method private final sendRegistrationToParse(Ljava/lang/String;)V
    .locals 2

    .line 95
    sget-object p0, Lfast/dic/dict/services/FDFirebaseMessagingService;->logger:Lfast/dic/dict/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ready to send push token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") to server"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 4

    const-string v0, "remoteMessage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 48
    sput-object p1, Lfast/dic/dict/services/FDFirebaseMessagingService;->remoteMessage:Lcom/google/firebase/messaging/RemoteMessage;

    .line 49
    sget-object v0, Lfast/dic/dict/services/FDFirebaseMessagingService;->logger:Lfast/dic/dict/utils/Logger;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Got FCM message from: %s"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "getData(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Message data payload: %s"

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Message Notification Body: %s"

    invoke-virtual {v0, v3, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v1}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 60
    const-string p1, "This is a rich notification and should be schedule to download media."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lfast/dic/dict/utils/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-direct {p0}, Lfast/dic/dict/services/FDFirebaseMessagingService;->scheduleJob()V

    return-void

    .line 64
    :cond_1
    const-string v1, "This is a simple notification and it should be handled now."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0, p1}, Lfast/dic/dict/services/FDFirebaseMessagingService;->handleNow(Lcom/google/firebase/messaging/RemoteMessage;)V

    :cond_2
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 3

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    .line 41
    sget-object v0, Lfast/dic/dict/services/FDFirebaseMessagingService;->logger:Lfast/dic/dict/utils/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Got new refresh token."

    invoke-virtual {v0, v2, v1}, Lfast/dic/dict/utils/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const-string v1, "Got new push token : %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0, p1}, Lfast/dic/dict/services/FDFirebaseMessagingService;->sendRegistrationToParse(Ljava/lang/String;)V

    return-void
.end method
