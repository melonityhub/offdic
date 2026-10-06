.class public final synthetic Lfast/dic/dict/services/parse/FDTransaction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/parse/FindCallback;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lfast/dic/dict/services/parse/FDTransaction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lfast/dic/dict/services/parse/FDTransaction;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/services/parse/FDTransaction$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lfast/dic/dict/services/parse/FDTransaction$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/services/parse/FDTransaction;

    return-void
.end method


# virtual methods
.method public final bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/services/parse/FDTransaction$$ExternalSyntheticLambda0;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public final done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/services/parse/FDTransaction$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDTransaction$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/services/parse/FDTransaction;

    invoke-static {v0, p0, p1, p2}, Lfast/dic/dict/services/parse/FDTransaction;->transactions$lambda$0(Ljava/util/List;Lfast/dic/dict/services/parse/FDTransaction;Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method
