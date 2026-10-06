.class public final synthetic Lfast/dic/dict/data/sync/repository/FDSyncSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/parse/FunctionCallback;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lfast/dic/dict/data/sync/repository/FDSyncSession;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lfast/dic/dict/data/sync/repository/FDSyncSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/data/sync/repository/FDSyncSession$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lfast/dic/dict/data/sync/repository/FDSyncSession$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/data/sync/repository/FDSyncSession;

    return-void
.end method


# virtual methods
.method public final done(Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/data/sync/repository/FDSyncSession$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lfast/dic/dict/data/sync/repository/FDSyncSession$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/data/sync/repository/FDSyncSession;

    invoke-static {v0, p0, p1, p2}, Lfast/dic/dict/data/sync/repository/FDSyncSession;->getSession$lambda$0(Lkotlin/jvm/functions/Function1;Lfast/dic/dict/data/sync/repository/FDSyncSession;Ljava/lang/Object;Lcom/parse/ParseException;)V

    return-void
.end method

.method public final bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/data/sync/repository/FDSyncSession$$ExternalSyntheticLambda0;->done(Ljava/lang/Object;Lcom/parse/ParseException;)V

    return-void
.end method
