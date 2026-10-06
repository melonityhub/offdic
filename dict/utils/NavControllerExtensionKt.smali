.class public final Lfast/dic/dict/utils/NavControllerExtensionKt;
.super Ljava/lang/Object;
.source "NavControllerExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a$\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u000c\u0008\u0001\u0010\u0003\u001a\u00020\u0004:\u0002\u0008\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a$\u0010\u0008\u001a\u00020\u0001*\u00020\u00022\u000c\u0008\u0001\u0010\u0003\u001a\u00020\u0004:\u0002\u0008\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "navigateWithSlideAnimation",
        "",
        "Landroidx/navigation/NavController;",
        "resId",
        "",
        "Landroidx/annotation/IdRes;",
        "args",
        "Landroid/os/Bundle;",
        "openModal",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v0}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 12
    sget v1, Lfast/dic/dict/R$anim;->slide_in_right:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    .line 13
    sget v1, Lfast/dic/dict/R$anim;->slide_out_left:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    .line 14
    sget v1, Lfast/dic/dict/R$anim;->slide_in_left:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->setPopEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    .line 15
    sget v1, Lfast/dic/dict/R$anim;->slide_out_right:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->setPopExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->setRestoreState(Z)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object v0

    .line 19
    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public static synthetic navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 10
    :cond_0
    invoke-static {p0, p1, p2}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static final openModal(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v0}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 24
    sget v1, Lfast/dic/dict/R$anim;->slide_in_up:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    .line 25
    sget v1, Lfast/dic/dict/R$anim;->fade_out:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    .line 26
    sget v1, Lfast/dic/dict/R$anim;->fade_in:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->setPopEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    .line 27
    sget v1, Lfast/dic/dict/R$anim;->slide_out_down:I

    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->setPopExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, v1}, Landroidx/navigation/NavOptions$Builder;->setRestoreState(Z)Landroidx/navigation/NavOptions$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object v0

    .line 31
    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public static synthetic openModal$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 22
    :cond_0
    invoke-static {p0, p1, p2}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    return-void
.end method
