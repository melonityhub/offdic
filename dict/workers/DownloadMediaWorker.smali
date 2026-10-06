.class public final Lfast/dic/dict/workers/DownloadMediaWorker;
.super Landroidx/work/Worker;
.source "DownloadMediaWorker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lfast/dic/dict/workers/DownloadMediaWorker;",
        "Landroidx/work/Worker;",
        "context",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "logger",
        "Lfast/dic/dict/utils/Logger;",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
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
.field private final logger:Lfast/dic/dict/utils/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 11
    sget-object p1, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {p1}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/workers/DownloadMediaWorker;->logger:Lfast/dic/dict/utils/Logger;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 5

    .line 13
    iget-object v0, p0, Lfast/dic/dict/workers/DownloadMediaWorker;->logger:Lfast/dic/dict/utils/Logger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DownloadMediaWorker Started to showing rich notification."

    invoke-virtual {v0, v3, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sget-object v0, Lfast/dic/dict/services/FDFirebaseMessagingService;->Companion:Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;

    .line 15
    invoke-virtual {v0}, Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;->getRemoteMessage()Lcom/google/firebase/messaging/RemoteMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v2, Lfast/dic/dict/services/FDFirebaseMessagingService;->Companion:Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;

    .line 18
    invoke-virtual {p0}, Lfast/dic/dict/workers/DownloadMediaWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getApplicationContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2, v0, v3}, Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;->showNotification(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Context;)Z

    .line 21
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/workers/DownloadMediaWorker;->logger:Lfast/dic/dict/utils/Logger;

    const-string v0, "Finished DownloadMediaWorker to showing rich notification."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    const-string v0, "success(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
