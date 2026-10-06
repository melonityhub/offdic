.class public Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;
.super Lfast/dic/dict/bases/BaseBottomSheetDialogFragment;
.source "FullscreenBottomSheetFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\r\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0006\u0010\u001f\u001a\u00020\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0005R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\u0005R5\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0003\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0006\u0012\u0004\u0012\u00020\u00110\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006 "
    }
    d2 = {
        "Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;",
        "Lfast/dic/dict/bases/BaseBottomSheetDialogFragment;",
        "isDismissible",
        "",
        "<init>",
        "(Z)V",
        "done",
        "getDone",
        "()Z",
        "setDone",
        "fullscreen",
        "getFullscreen",
        "setFullscreen",
        "onDismiss",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "",
        "getOnDismiss",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnDismiss",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "dialog",
        "Landroid/content/DialogInterface;",
        "setupFullHeight",
        "bottomSheet",
        "Landroid/view/View;",
        "doneDismiss",
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
.field private done:Z

.field private fullscreen:Z

.field private final isDismissible:Z

.field private onDismiss:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lfast/dic/dict/bases/BaseBottomSheetDialogFragment;-><init>()V

    iput-boolean p1, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->isDismissible:Z

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->fullscreen:Z

    .line 17
    new-instance p1, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment$$ExternalSyntheticLambda1;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->onDismiss:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method static final onCreateDialog$lambda$0(Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;Landroid/content/DialogInterface;)V
    .locals 2

    .line 27
    instance-of v0, p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 28
    sget v0, Lfast/dic/dict/R$id;->design_bottom_sheet:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout;

    :cond_2
    if-nez v1, :cond_3

    goto :goto_2

    .line 31
    :cond_3
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const-string v0, "from(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, v1}, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->setupFullHeight(Landroid/view/View;)V

    const/4 v0, 0x3

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 35
    iget-boolean p0, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->isDismissible:Z

    if-nez p0, :cond_4

    const/4 p0, 0x0

    .line 36
    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    .line 37
    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method static final onDismiss$lambda$0(Z)Lkotlin/Unit;
    .locals 0

    .line 17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final setupFullHeight(Landroid/view/View;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 52
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final doneDismiss()V
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->done:Z

    .line 58
    invoke-virtual {p0}, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->dismiss()V

    return-void
.end method

.method public final getDone()Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->done:Z

    return p0
.end method

.method public final getFullscreen()Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->fullscreen:Z

    return p0
.end method

.method public final getOnDismiss()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->onDismiss:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 20
    invoke-super {p0, p1}, Lfast/dic/dict/bases/BaseBottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iget-boolean v1, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->fullscreen:Z

    const-string v2, "onCreateDialog(...)"

    if-nez v1, :cond_1

    .line 23
    invoke-super {p0, p1}, Lfast/dic/dict/bases/BaseBottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    .line 26
    new-instance v1, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 41
    check-cast v0, Landroid/app/Dialog;

    return-object v0

    :cond_3
    invoke-super {p0, p1}, Lfast/dic/dict/bases/BaseBottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1}, Lfast/dic/dict/bases/BaseBottomSheetDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 46
    iget-object p1, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->onDismiss:Lkotlin/jvm/functions/Function1;

    iget-boolean p0, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->done:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setDone(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->done:Z

    return-void
.end method

.method public final setFullscreen(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->fullscreen:Z

    return-void
.end method

.method public final setOnDismiss(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->onDismiss:Lkotlin/jvm/functions/Function1;

    return-void
.end method
