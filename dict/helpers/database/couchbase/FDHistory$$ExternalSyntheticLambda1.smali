.class public final synthetic Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

.field public final synthetic f$1:Lnet/zetetic/database/sqlcipher/SQLiteDatabase;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda1;->f$0:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iput-object p2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda1;->f$1:Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda1;->f$0:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda1;->f$1:Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    check-cast p1, Lfast/dic/dict/models/database/ListModel;

    invoke-static {v0, p0, p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->get$lambda$0(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;Lfast/dic/dict/models/database/ListModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
