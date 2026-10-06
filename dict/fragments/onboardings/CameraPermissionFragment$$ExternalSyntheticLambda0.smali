.class public final synthetic Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;

    check-cast p1, Ljava/util/Map;

    invoke-static {p0, p1}, Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;->requestMultiplePermissions$lambda$0(Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;Ljava/util/Map;)V

    return-void
.end method
