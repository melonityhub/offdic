.class public final synthetic Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic f$0:Lcom/couchbase/lite/Where;

.field public final synthetic f$1:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;


# direct methods
.method public synthetic constructor <init>(Lcom/couchbase/lite/Where;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda1;->f$0:Lcom/couchbase/lite/Where;

    iput-object p2, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda1;->f$1:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda1;->f$0:Lcom/couchbase/lite/Where;

    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda1;->f$1:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    invoke-static {v0, p0}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->deleteAll$lambda$0(Lcom/couchbase/lite/Where;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;)V

    return-void
.end method
