.class public final Lfast/dic/dict/services/InterstitialCountdownDialog;
.super Landroid/app/Dialog;
.source "InterstitialCountdownDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/services/InterstitialCountdownDialog$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0002\u0017\u001a\u0008\u0000\u0018\u0000 $2\u00020\u0001:\u0001$B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00080\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0012\u0010\u001c\u001a\u00020\u00082\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\u0008\u0010\u001f\u001a\u00020\u0008H\u0014J\u0010\u0010 \u001a\u00020\u00082\u0006\u0010!\u001a\u00020\u0011H\u0016J\u0006\u0010\"\u001a\u00020\u0008J\u0008\u0010#\u001a\u00020\u0008H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00080\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0010\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001b\u00a8\u0006%"
    }
    d2 = {
        "Lfast/dic/dict/services/InterstitialCountdownDialog;",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "seconds",
        "",
        "onFinish",
        "Lkotlin/Function0;",
        "",
        "onClosed",
        "Lkotlin/Function1;",
        "<init>",
        "(Landroid/app/Activity;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "handler",
        "Landroid/os/Handler;",
        "remainingSeconds",
        "isRunning",
        "",
        "isClosed",
        "hadFocus",
        "messageView",
        "Landroid/widget/TextView;",
        "tick",
        "fast/dic/dict/services/InterstitialCountdownDialog$tick$1",
        "Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;",
        "hostObserver",
        "fast/dic/dict/services/InterstitialCountdownDialog$hostObserver$1",
        "Lfast/dic/dict/services/InterstitialCountdownDialog$hostObserver$1;",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStart",
        "onWindowFocusChanged",
        "hasFocus",
        "close",
        "render",
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
.field private static final Companion:Lfast/dic/dict/services/InterstitialCountdownDialog$Companion;

.field public static final SAFETY_TIMEOUT_MS:J = 0xbb8L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHIELD_COLOR:I = -0x27000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final activity:Landroid/app/Activity;

.field private hadFocus:Z

.field private final handler:Landroid/os/Handler;

.field private final hostObserver:Lfast/dic/dict/services/InterstitialCountdownDialog$hostObserver$1;

.field private isClosed:Z

.field private isRunning:Z

.field private messageView:Landroid/widget/TextView;

.field private final onClosed:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lfast/dic/dict/services/InterstitialCountdownDialog;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onFinish:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private remainingSeconds:I

.field private final tick:Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/services/InterstitialCountdownDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/services/InterstitialCountdownDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/services/InterstitialCountdownDialog;->Companion:Lfast/dic/dict/services/InterstitialCountdownDialog$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/services/InterstitialCountdownDialog;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFinish"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClosed"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const v1, 0x1030010

    .line 29
    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object p1, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->activity:Landroid/app/Activity;

    .line 32
    iput-object p3, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->onFinish:Lkotlin/jvm/functions/Function0;

    .line 33
    iput-object p4, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->onClosed:Lkotlin/jvm/functions/Function1;

    .line 36
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->handler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 37
    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    iput p2, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->remainingSeconds:I

    .line 38
    iput-boolean p1, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->isRunning:Z

    .line 43
    new-instance p2, Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;

    invoke-direct {p2, p0}, Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;-><init>(Lfast/dic/dict/services/InterstitialCountdownDialog;)V

    iput-object p2, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->tick:Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;

    .line 60
    new-instance p2, Lfast/dic/dict/services/InterstitialCountdownDialog$hostObserver$1;

    invoke-direct {p2, p0}, Lfast/dic/dict/services/InterstitialCountdownDialog$hostObserver$1;-><init>(Lfast/dic/dict/services/InterstitialCountdownDialog;)V

    iput-object p2, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->hostObserver:Lfast/dic/dict/services/InterstitialCountdownDialog$hostObserver$1;

    .line 66
    invoke-virtual {p0, p1}, Lfast/dic/dict/services/InterstitialCountdownDialog;->setCancelable(Z)V

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lfast/dic/dict/services/InterstitialCountdownDialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    new-instance p1, Lfast/dic/dict/services/InterstitialCountdownDialog$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lfast/dic/dict/services/InterstitialCountdownDialog$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/services/InterstitialCountdownDialog;)V

    invoke-virtual {p0, p1}, Lfast/dic/dict/services/InterstitialCountdownDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 69
    new-instance p1, Lfast/dic/dict/services/InterstitialCountdownDialog$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lfast/dic/dict/services/InterstitialCountdownDialog$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/services/InterstitialCountdownDialog;)V

    invoke-virtual {p0, p1}, Lfast/dic/dict/services/InterstitialCountdownDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/services/InterstitialCountdownDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 68
    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->close()V

    return-void
.end method

.method static final _init_$lambda$1(Lfast/dic/dict/services/InterstitialCountdownDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->close()V

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lfast/dic/dict/services/InterstitialCountdownDialog;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getOnFinish$p(Lfast/dic/dict/services/InterstitialCountdownDialog;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 29
    iget-object p0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->onFinish:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getRemainingSeconds$p(Lfast/dic/dict/services/InterstitialCountdownDialog;)I
    .locals 0

    .line 29
    iget p0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->remainingSeconds:I

    return p0
.end method

.method public static final synthetic access$isRunning$p(Lfast/dic/dict/services/InterstitialCountdownDialog;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->isRunning:Z

    return p0
.end method

.method public static final synthetic access$render(Lfast/dic/dict/services/InterstitialCountdownDialog;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->render()V

    return-void
.end method

.method public static final synthetic access$setRemainingSeconds$p(Lfast/dic/dict/services/InterstitialCountdownDialog;I)V
    .locals 0

    .line 29
    iput p1, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->remainingSeconds:I

    return-void
.end method

.method public static final synthetic access$setRunning$p(Lfast/dic/dict/services/InterstitialCountdownDialog;Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->isRunning:Z

    return-void
.end method

.method static final onStart$lambda$0(Lfast/dic/dict/services/InterstitialCountdownDialog;)V
    .locals 0

    .line 114
    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->close()V

    return-void
.end method

.method private final render()V
    .locals 3

    .line 151
    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->messageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "messageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lfast/dic/dict/R$string;->interstitial_countdown_message:I

    iget p0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->remainingSeconds:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 131
    iget-boolean v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->isClosed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->isClosed:Z

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->isRunning:Z

    .line 136
    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->activity:Landroid/app/Activity;

    instance-of v2, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->hostObserver:Lfast/dic/dict/services/InterstitialCountdownDialog$hostObserver$1;

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 139
    :cond_2
    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :catch_0
    :cond_3
    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->onClosed:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 73
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 76
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x41b00000    # 22.0f

    const/4 v3, 0x2

    .line 78
    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 79
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lfast/dic/dict/R$font;->iransansxbold:I

    invoke-static {v2, v4}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x11

    .line 80
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 81
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    iput-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->messageView:Landroid/widget/TextView;

    .line 84
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x27000000

    .line 85
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v0, 0x1

    .line 87
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 90
    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->messageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "messageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/view/View;

    .line 91
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    check-cast v4, Landroid/view/ViewGroup$LayoutParams;

    .line 89
    invoke-virtual {p1, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lfast/dic/dict/services/InterstitialCountdownDialog;->setContentView(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 102
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    const v0, 0x1030004

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 107
    :cond_1
    invoke-direct {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->render()V

    return-void
.end method

.method protected onStart()V
    .locals 8

    .line 111
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 113
    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->activity:Landroid/app/Activity;

    instance-of v1, v0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->hostObserver:Lfast/dic/dict/services/InterstitialCountdownDialog$hostObserver$1;

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->handler:Landroid/os/Handler;

    new-instance v1, Lfast/dic/dict/services/InterstitialCountdownDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/services/InterstitialCountdownDialog$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/services/InterstitialCountdownDialog;)V

    iget v2, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->remainingSeconds:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide/16 v6, 0xbb8

    add-long/2addr v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    iget-object v0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->tick:Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->hadFocus:Z

    return-void

    .line 123
    :cond_0
    iget-boolean p1, p0, Lfast/dic/dict/services/InterstitialCountdownDialog;->hadFocus:Z

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p0}, Lfast/dic/dict/services/InterstitialCountdownDialog;->close()V

    :cond_1
    return-void
.end method
