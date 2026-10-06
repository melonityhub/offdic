.class public final synthetic Lfast/dic/dict/helpers/FDListPath$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic f$0:Lcom/couchbase/lite/Where;

.field public final synthetic f$1:Lcom/couchbase/lite/Collection;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/Where;Lcom/couchbase/lite/Collection;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/FDListPath$$ExternalSyntheticLambda0;->f$0:Lcom/couchbase/lite/Where;

    iput-object p2, p0, Lfast/dic/dict/helpers/FDListPath$$ExternalSyntheticLambda0;->f$1:Lcom/couchbase/lite/Collection;

    iput-object p3, p0, Lfast/dic/dict/helpers/FDListPath$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lfast/dic/dict/helpers/FDListPath$$ExternalSyntheticLambda0;->f$0:Lcom/couchbase/lite/Where;

    iget-object v1, p0, Lfast/dic/dict/helpers/FDListPath$$ExternalSyntheticLambda0;->f$1:Lcom/couchbase/lite/Collection;

    iget-object p0, p0, Lfast/dic/dict/helpers/FDListPath$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lfast/dic/dict/helpers/FDListPath;->updateDocuments$lambda$0(Lcom/couchbase/lite/Where;Lcom/couchbase/lite/Collection;Ljava/lang/String;)V

    return-void
.end method
