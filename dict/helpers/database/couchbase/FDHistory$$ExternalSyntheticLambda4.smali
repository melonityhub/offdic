.class public final synthetic Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

.field public final synthetic f$1:Lfast/dic/dict/models/database/ListModel;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/models/database/ListModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda4;->f$0:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iput-object p2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda4;->f$1:Lfast/dic/dict/models/database/ListModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda4;->f$0:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda4;->f$1:Lfast/dic/dict/models/database/ListModel;

    invoke-static {v0, p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->deleteAndInsert$lambda$0(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lfast/dic/dict/models/database/ListModel;)V

    return-void
.end method
