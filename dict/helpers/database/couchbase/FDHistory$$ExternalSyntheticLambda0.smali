.class public final synthetic Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

.field public final synthetic f$1:Lnet/zetetic/database/sqlcipher/SQLiteDatabase;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iput-object p2, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda0;->f$1:Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    iget-object p0, p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory$$ExternalSyntheticLambda0;->f$1:Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    check-cast p1, Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p0, p1, p2}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;->search$lambda$0(Lfast/dic/dict/helpers/database/couchbase/FDHistory;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
