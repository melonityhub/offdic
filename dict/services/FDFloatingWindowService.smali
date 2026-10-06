.class public final Lfast/dic/dict/services/FDFloatingWindowService;
.super Landroid/app/Service;
.source "FDFloatingWindowService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDFloatingWindowService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDFloatingWindowService.kt\nfast/dic/dict/services/FDFloatingWindowService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,191:1\n1#2:192\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u001c\u001a\u00020\u001dH\u0017b\u0010\u0008\u001e\u0012\u000c\u0008\u001f\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008( J\"\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020$2\u0006\u0010(\u001a\u00020$H\u0016J\u0006\u0010+\u001a\u00020\u001dJ\u0008\u0010,\u001a\u00020\u001dH\u0016J\u0012\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010%\u001a\u00020&H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lfast/dic/dict/services/FDFloatingWindowService;",
        "Landroid/app/Service;",
        "<init>",
        "()V",
        "notificationShow",
        "",
        "windowManager",
        "Landroid/view/WindowManager;",
        "getWindowManager",
        "()Landroid/view/WindowManager;",
        "setWindowManager",
        "(Landroid/view/WindowManager;)V",
        "clipboardManager",
        "Landroid/content/ClipboardManager;",
        "getClipboardManager",
        "()Landroid/content/ClipboardManager;",
        "setClipboardManager",
        "(Landroid/content/ClipboardManager;)V",
        "floatingHead",
        "Landroid/widget/ImageView;",
        "logger",
        "Lfast/dic/dict/utils/Logger;",
        "params",
        "Landroid/view/WindowManager$LayoutParams;",
        "getParams",
        "()Landroid/view/WindowManager$LayoutParams;",
        "setParams",
        "(Landroid/view/WindowManager$LayoutParams;)V",
        "onCreate",
        "",
        "Landroid/annotation/SuppressLint;",
        "value",
        "ClickableViewAccessibility",
        "onFloatingTouchListener",
        "Landroid/view/View$OnTouchListener;",
        "onStartCommand",
        "",
        "intent",
        "Landroid/content/Intent;",
        "flags",
        "startId",
        "mPrimaryChangeListener",
        "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
        "chatHeadIcon",
        "onDestroy",
        "onBind",
        "Landroid/os/IBinder;",
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
.field private clipboardManager:Landroid/content/ClipboardManager;

.field private floatingHead:Landroid/widget/ImageView;

.field private final logger:Lfast/dic/dict/utils/Logger;

.field private mPrimaryChangeListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

.field private notificationShow:Z

.field private final onFloatingTouchListener:Landroid/view/View$OnTouchListener;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    sget-object v0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->logger:Lfast/dic/dict/utils/Logger;

    .line 81
    new-instance v0, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;

    invoke-direct {v0, p0}, Lfast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1;-><init>(Lfast/dic/dict/services/FDFloatingWindowService;)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    iput-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->onFloatingTouchListener:Landroid/view/View$OnTouchListener;

    .line 139
    new-instance v0, Lfast/dic/dict/services/FDFloatingWindowService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/services/FDFloatingWindowService$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/services/FDFloatingWindowService;)V

    iput-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->mPrimaryChangeListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    return-void
.end method

.method public static final synthetic access$getFloatingHead$p(Lfast/dic/dict/services/FDFloatingWindowService;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    iget-object p0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    return-object p0
.end method

.method static final mPrimaryChangeListener$lambda$0(Lfast/dic/dict/services/FDFloatingWindowService;)V
    .locals 5

    .line 140
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->logger:Lfast/dic/dict/utils/Logger;

    iget-object v1, p0, Lfast/dic/dict/services/FDFloatingWindowService;->clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnPrimaryClipChangedListener ------> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :try_start_0
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v1, Lfast/dic/dict/R$mipmap;->ic_launcher_round:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 144
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 145
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 146
    new-instance v1, Lfast/dic/dict/services/FDFloatingWindowService$mPrimaryChangeListener$1$1;

    invoke-direct {v1, p0}, Lfast/dic/dict/services/FDFloatingWindowService$mPrimaryChangeListener$1$1;-><init>(Lfast/dic/dict/services/FDFloatingWindowService;)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 156
    iget-object p0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->logger:Lfast/dic/dict/utils/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    const-string p0, "Fail in Service"

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final chatHeadIcon()V
    .locals 3

    .line 163
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 164
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->windowManager:Landroid/view/WindowManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lfast/dic/dict/services/FDFloatingWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v1, Lfast/dic/dict/R$mipmap;->ic_launcher_round:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->windowManager:Landroid/view/WindowManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final getClipboardManager()Landroid/content/ClipboardManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->clipboardManager:Landroid/content/ClipboardManager;

    return-object p0
.end method

.method public final getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 35
    iget-object p0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public final getWindowManager()Landroid/view/WindowManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object p0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->logger:Lfast/dic/dict/utils/Logger;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "onBind of FDFloatingWindowService class called"

    invoke-virtual {p0, v0, p1}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 10

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->logger:Lfast/dic/dict/utils/Logger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onCreate of FDFloatingWindowService class called"

    invoke-virtual {v0, v3, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/FDFloatingWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lfast/dic/dict/services/FDFloatingWindowService;->windowManager:Landroid/view/WindowManager;

    .line 43
    new-instance v2, Landroid/widget/ImageView;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    .line 44
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v4, Lfast/dic/dict/R$mipmap;->ic_launcher_round:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    iget-object v2, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Lfast/dic/dict/services/FDFloatingWindowService;->onFloatingTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 48
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    const/16 v2, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d2

    :goto_0
    move v7, v2

    .line 55
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x8

    const/4 v9, -0x3

    const/16 v5, 0x64

    const/16 v6, 0x64

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v4, p0, Lfast/dic/dict/services/FDFloatingWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    .line 61
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, 0x800033

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 62
    invoke-virtual {p0, v0}, Lfast/dic/dict/services/FDFloatingWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    .line 63
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 64
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 66
    :cond_1
    sget-object v0, Lfast/dic/dict/providers/FDContentProvider;->Companion:Lfast/dic/dict/providers/FDContentProvider$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/providers/FDContentProvider$Companion;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lfast/dic/dict/database/LocalStorage;

    invoke-direct {v2, v0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {v2}, Lfast/dic/dict/database/LocalStorage;->getFloatingHeadXPrefs()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v2, :cond_4

    .line 68
    invoke-virtual {v2}, Lfast/dic/dict/database/LocalStorage;->getFloatingHeadYPrefs()I

    move-result v1

    .line 69
    :cond_4
    iget-object v2, p0, Lfast/dic/dict/services/FDFloatingWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 70
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 71
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/FDFloatingWindowService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->clipboardManager:Landroid/content/ClipboardManager;

    if-eqz v0, :cond_5

    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lfast/dic/dict/services/FDFloatingWindowService;->mPrimaryChangeListener:Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V

    .line 76
    :cond_5
    :try_start_0
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->windowManager:Landroid/view/WindowManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 173
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 174
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->logger:Lfast/dic/dict/utils/Logger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onDestroy of FDFloatingWindowService class called"

    invoke-virtual {v0, v3, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lfast/dic/dict/services/FDFloatingWindowService;->windowManager:Landroid/view/WindowManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lfast/dic/dict/services/FDFloatingWindowService;->floatingHead:Landroid/widget/ImageView;

    check-cast v2, Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0, v0}, Lfast/dic/dict/services/FDFloatingWindowService;->stopForeground(I)V

    .line 183
    iput-boolean v1, p0, Lfast/dic/dict/services/FDFloatingWindowService;->notificationShow:Z

    .line 184
    invoke-virtual {p0}, Lfast/dic/dict/services/FDFloatingWindowService;->stopSelf()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 129
    iget-object p1, p0, Lfast/dic/dict/services/FDFloatingWindowService;->logger:Lfast/dic/dict/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartCommand of FDFloatingWindowService class called flags="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", startId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    const/4 p3, 0x1

    if-lt p1, p2, :cond_0

    iget-boolean p1, p0, Lfast/dic/dict/services/FDFloatingWindowService;->notificationShow:Z

    if-nez p1, :cond_0

    .line 131
    sget-object p1, Lfast/dic/dict/services/FDFirebaseMessagingService;->Companion:Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, Lfast/dic/dict/services/FDFirebaseMessagingService$Companion;->getFloatingWindowsNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    .line 132
    invoke-virtual {p0, p3, p1}, Lfast/dic/dict/services/FDFloatingWindowService;->startForeground(ILandroid/app/Notification;)V

    .line 133
    iput-boolean p3, p0, Lfast/dic/dict/services/FDFloatingWindowService;->notificationShow:Z

    :cond_0
    return p3
.end method

.method public final setClipboardManager(Landroid/content/ClipboardManager;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lfast/dic/dict/services/FDFloatingWindowService;->clipboardManager:Landroid/content/ClipboardManager;

    return-void
.end method

.method public final setParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lfast/dic/dict/services/FDFloatingWindowService;->params:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method public final setWindowManager(Landroid/view/WindowManager;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lfast/dic/dict/services/FDFloatingWindowService;->windowManager:Landroid/view/WindowManager;

    return-void
.end method
