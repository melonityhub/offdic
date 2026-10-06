.class public final synthetic Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/fragments/CameraFragment;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/fragments/CameraFragment;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/fragments/CameraFragment;

    iput-object p2, p0, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/fragments/CameraFragment;

    iget-object p0, p0, Lfast/dic/dict/fragments/CameraFragment$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0, p0}, Lfast/dic/dict/fragments/CameraFragment;->startCamera$lambda$0(Lfast/dic/dict/fragments/CameraFragment;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
