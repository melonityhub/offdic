.class public final synthetic Lfast/dic/dict/presentation/common/SyncViewModel$sync$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/couchbase/lite/ReplicatorChangeListener;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/common/SyncViewModel;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/common/SyncViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1$$ExternalSyntheticLambda1;->f$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    return-void
.end method


# virtual methods
.method public final changed(Lcom/couchbase/lite/ReplicatorChange;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1$$ExternalSyntheticLambda1;->f$0:Lfast/dic/dict/presentation/common/SyncViewModel;

    invoke-static {p0, p1}, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1;->$r8$lambda$flzUxeTA3Yg_1GBNJZ9gM5OYDeU(Lfast/dic/dict/presentation/common/SyncViewModel;Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method

.method public final bridge synthetic changed(Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/couchbase/lite/ReplicatorChange;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/common/SyncViewModel$sync$1$$ExternalSyntheticLambda1;->changed(Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method
