.class public final synthetic Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/fragments/CameraFragment;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/fragments/CameraFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda3;->f$0:Lfast/dic/dict/fragments/CameraFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda3;->f$0:Lfast/dic/dict/fragments/CameraFragment;

    check-cast p1, Lcom/canhub/cropper/CropImageView$CropResult;

    invoke-static {p0, p1}, Lfast/dic/dict/fragments/CameraFragment;->cropImage$lambda$0(Lfast/dic/dict/fragments/CameraFragment;Lcom/canhub/cropper/CropImageView$CropResult;)V

    return-void
.end method
