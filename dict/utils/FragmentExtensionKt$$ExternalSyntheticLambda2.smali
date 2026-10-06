.class public final synthetic Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/activities/MainActivity;

.field public final synthetic f$1:Ljava/lang/Integer;

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/activities/MainActivity;Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda2;->f$0:Lfast/dic/dict/activities/MainActivity;

    iput-object p2, p0, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Integer;

    iput-object p3, p0, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda2;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda2;->f$0:Lfast/dic/dict/activities/MainActivity;

    iget-object v1, p0, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Integer;

    iget-object p0, p0, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda2;->f$2:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lfast/dic/dict/utils/FragmentExtensionKt;->openTab$lambda$0(Lfast/dic/dict/activities/MainActivity;Ljava/lang/Integer;Landroid/os/Bundle;)V

    return-void
.end method
