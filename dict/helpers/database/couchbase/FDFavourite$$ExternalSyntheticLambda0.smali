.class public final synthetic Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    invoke-static {v0, p0}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->updateAllFolders$lambda$0(Ljava/util/ArrayList;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;)V

    return-void
.end method
