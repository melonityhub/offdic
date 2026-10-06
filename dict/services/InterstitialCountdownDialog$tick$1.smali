.class public final Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;
.super Ljava/lang/Object;
.source "InterstitialCountdownDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/services/InterstitialCountdownDialog;-><init>(Landroid/app/Activity;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "fast/dic/dict/services/InterstitialCountdownDialog$tick$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
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
.field final synthetic this$0:Lfast/dic/dict/services/InterstitialCountdownDialog;


# direct methods
.method constructor <init>(Lfast/dic/dict/services/InterstitialCountdownDialog;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;->this$0:Lfast/dic/dict/services/InterstitialCountdownDialog;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 45
    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;->this$0:Lfast/dic/dict/services/InterstitialCountdownDialog;

    invoke-static {v0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->access$isRunning$p(Lfast/dic/dict/services/InterstitialCountdownDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;->this$0:Lfast/dic/dict/services/InterstitialCountdownDialog;

    invoke-static {v0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->access$getRemainingSeconds$p(Lfast/dic/dict/services/InterstitialCountdownDialog;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lfast/dic/dict/services/InterstitialCountdownDialog;->access$setRemainingSeconds$p(Lfast/dic/dict/services/InterstitialCountdownDialog;I)V

    .line 50
    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;->this$0:Lfast/dic/dict/services/InterstitialCountdownDialog;

    invoke-static {v0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->access$getRemainingSeconds$p(Lfast/dic/dict/services/InterstitialCountdownDialog;)I

    move-result v0

    .line 54
    iget-object v1, p0, Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;->this$0:Lfast/dic/dict/services/InterstitialCountdownDialog;

    if-lez v0, :cond_1

    .line 51
    invoke-static {v1}, Lfast/dic/dict/services/InterstitialCountdownDialog;->access$render(Lfast/dic/dict/services/InterstitialCountdownDialog;)V

    .line 52
    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;->this$0:Lfast/dic/dict/services/InterstitialCountdownDialog;

    invoke-static {v0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->access$getHandler$p(Lfast/dic/dict/services/InterstitialCountdownDialog;)Landroid/os/Handler;

    move-result-object v0

    check-cast p0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 54
    invoke-static {v1, v0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->access$setRunning$p(Lfast/dic/dict/services/InterstitialCountdownDialog;Z)V

    .line 55
    iget-object p0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;->this$0:Lfast/dic/dict/services/InterstitialCountdownDialog;

    invoke-static {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->access$getOnFinish$p(Lfast/dic/dict/services/InterstitialCountdownDialog;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
