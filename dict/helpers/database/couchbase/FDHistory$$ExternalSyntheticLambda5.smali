.class public final synthetic Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lfast/dic/dict/helpers/database/couchbase/FDHistory;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iput-object p2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda5;->f$1:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda5;->f$1:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {v0, p0}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->deleteOldHistory$lambda$0(Ljava/util/List;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-void
.end method
