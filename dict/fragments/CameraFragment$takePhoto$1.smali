.class public final Lfast/dic/dict/fragments/CameraFragment$takePhoto$1;
.super Ljava/lang/Object;
.source "CameraFragment.kt"

# interfaces
.implements Landroidx/camera/core/ImageCapture$OnImageSavedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/fragments/CameraFragment;->takePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\"\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0017b\u0010\u0008\t\u0012\u000c\u0008\n\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "fast/dic/dict/fragments/CameraFragment$takePhoto$1",
        "Landroidx/camera/core/ImageCapture$OnImageSavedCallback;",
        "onError",
        "",
        "exc",
        "Landroidx/camera/core/ImageCaptureException;",
        "onImageSaved",
        "output",
        "Landroidx/camera/core/ImageCapture$OutputFileResults;",
        "Landroid/annotation/SuppressLint;",
        "value",
        "RestrictedApi",
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
.field final synthetic this$0:Lfast/dic/dict/fragments/CameraFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/fragments/CameraFragment;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/fragments/CameraFragment$takePhoto$1;->this$0:Lfast/dic/dict/fragments/CameraFragment;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/camera/core/ImageCaptureException;)V
    .locals 2

    const-string p0, "exc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/camera/core/ImageCaptureException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Photo capture failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onImageSaved(Landroidx/camera/core/ImageCapture$OutputFileResults;)V
    .locals 3

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Landroidx/camera/core/ImageCapture$OutputFileResults;->getSavedUri()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Photo capture succeeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    invoke-virtual {p1}, Landroidx/camera/core/ImageCapture$OutputFileResults;->getSavedUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/fragments/CameraFragment$takePhoto$1;->this$0:Lfast/dic/dict/fragments/CameraFragment;

    invoke-virtual {v0}, Lfast/dic/dict/fragments/CameraFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfast/dic/dict/fragments/CameraFragment$takePhoto$1;->this$0:Lfast/dic/dict/fragments/CameraFragment;

    invoke-virtual {v0}, Lfast/dic/dict/fragments/CameraFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lfast/dic/dict/fragments/CameraFragment$takePhoto$1;->this$0:Lfast/dic/dict/fragments/CameraFragment;

    invoke-static {v0}, Lfast/dic/dict/fragments/CameraFragment;->access$getCropImage$p(Lfast/dic/dict/fragments/CameraFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    .line 358
    new-instance v1, Lcom/canhub/cropper/CropImageContractOptions;

    iget-object p0, p0, Lfast/dic/dict/fragments/CameraFragment$takePhoto$1;->this$0:Lfast/dic/dict/fragments/CameraFragment;

    invoke-static {p0}, Lfast/dic/dict/fragments/CameraFragment;->access$getCropOptions(Lfast/dic/dict/fragments/CameraFragment;)Lcom/canhub/cropper/CropImageOptions;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lcom/canhub/cropper/CropImageContractOptions;-><init>(Landroid/net/Uri;Lcom/canhub/cropper/CropImageOptions;)V

    .line 357
    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
