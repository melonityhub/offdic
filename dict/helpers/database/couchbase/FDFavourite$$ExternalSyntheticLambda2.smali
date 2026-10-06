.class public final synthetic Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/couchbase/lite/UnitOfWork;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda2;->f$2:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    iput-object p4, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda2;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda2;->f$2:Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDFavourite$$ExternalSyntheticLambda2;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;->insert$lambda$1(Ljava/util/ArrayList;Ljava/lang/String;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Ljava/util/List;)V

    return-void
.end method
