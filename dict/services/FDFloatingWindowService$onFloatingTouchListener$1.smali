.class public final Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;
.super Ljava/lang/Object;
.source "FDFloatingWindowService.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/services/FDFloatingWindowService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDFloatingWindowService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDFloatingWindowService.kt\nfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n1#2:192\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "fast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1",
        "Landroid/view/View$OnTouchListener;",
        "initialX",
        "",
        "initialY",
        "initialTouchX",
        "",
        "initialTouchY",
        "onTouch",
        "",
        "v",
        "Landroid/view/View;",
        "event",
        "Landroid/view/MotionEvent;",
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
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lfast/dic/dict/services/FDFloatingWindowService;


# direct methods
.method constructor <init>(Lfast/dic/dict/services/FDFloatingWindowService;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return v2

    .line 114
    :cond_0
    iget-object p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-virtual {p1}, Lfast/dic/dict/services/FDFloatingWindowService;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->initialTouchX:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 115
    iget-object p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-virtual {p1}, Lfast/dic/dict/services/FDFloatingWindowService;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->initialTouchY:F

    sub-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 116
    iget-object p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-virtual {p1}, Lfast/dic/dict/services/FDFloatingWindowService;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-static {p2}, Lfast/dic/dict/services/FDFloatingWindowService;->access$getFloatingHead$p(Lfast/dic/dict/services/FDFloatingWindowService;)Landroid/widget/ImageView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-virtual {v0}, Lfast/dic/dict/services/FDFloatingWindowService;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    sget-object p1, Lfast/dic/dict/providers/FDContentProvider;->Companion:Lfast/dic/dict/providers/FDContentProvider$Companion;

    invoke-virtual {p1}, Lfast/dic/dict/providers/FDContentProvider$Companion;->getAppContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lfast/dic/dict/database/LocalStorage;

    invoke-direct {p2, p1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 119
    iget-object p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-virtual {p1}, Lfast/dic/dict/services/FDFloatingWindowService;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p2, p1}, Lfast/dic/dict/database/LocalStorage;->storeFloatingHeadXPrefs(I)V

    :cond_2
    if-eqz p2, :cond_3

    .line 120
    iget-object p0, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-virtual {p0}, Lfast/dic/dict/services/FDFloatingWindowService;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p2, p0}, Lfast/dic/dict/database/LocalStorage;->storeFloatingHeadYPrefs(I)V

    :cond_3
    return v1

    .line 96
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 99
    iget p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->initialTouchX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    iget p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->initialTouchY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    .line 101
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-virtual {p2}, Lfast/dic/dict/services/FDFloatingWindowService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lfast/dic/dict/activities/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    const-string p2, "fromFloating"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 103
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    iget-object p2, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-virtual {p2, p1}, Lfast/dic/dict/services/FDFloatingWindowService;->startActivity(Landroid/content/Intent;)V

    .line 106
    iget-object p0, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-virtual {p0}, Lfast/dic/dict/services/FDFloatingWindowService;->chatHeadIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    return v1

    .line 89
    :cond_6
    iget-object p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-virtual {p1}, Lfast/dic/dict/services/FDFloatingWindowService;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->initialX:I

    .line 90
    iget-object p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->this$0:Lfast/dic/dict/services/FDFloatingWindowService;

    invoke-virtual {p1}, Lfast/dic/dict/services/FDFloatingWindowService;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->initialY:I

    .line 91
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->initialTouchX:F

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;->initialTouchY:F

    return v1
.end method
