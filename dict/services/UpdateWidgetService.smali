.class public final Lfast/dic/dict/services/UpdateWidgetService;
.super Landroid/content/BroadcastReceiver;
.source "UpdateWidgetService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateWidgetService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateWidgetService.kt\nfast/dic/dict/services/UpdateWidgetService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,16:1\n1#2:17\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/services/UpdateWidgetService;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "onReceive",
        "",
        "context",
        "Landroid/content/Context;",
        "p1",
        "Landroid/content/Intent;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 12
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "UpdateWidgetService called."

    invoke-virtual {p0, v0, p2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 14
    sget-object p0, Lfast/dic/dict/utils/AppWidgetHelper;->INSTANCE:Lfast/dic/dict/utils/AppWidgetHelper;

    invoke-virtual {p0, p1}, Lfast/dic/dict/utils/AppWidgetHelper;->updateWodWidget(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
