.class public final Lfast/dic/dict/services/parse/FDTransaction;
.super Ljava/lang/Object;
.source "FDTransaction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0006\u0010\r\u001a\u00020\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lfast/dic/dict/services/parse/FDTransaction;",
        "",
        "<init>",
        "()V",
        "fdTransactionInterface",
        "Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;",
        "getFdTransactionInterface",
        "()Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;",
        "setFdTransactionInterface",
        "(Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;)V",
        "registerCallback",
        "",
        "transactionInterface",
        "transactions",
        "FDTransactionInterface",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private fdTransactionInterface:Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final transactions$lambda$0(Ljava/util/List;Lfast/dic/dict/services/parse/FDTransaction;Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 3

    if-nez p3, :cond_5

    if-eqz p2, :cond_4

    .line 31
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/parse/ParseObject;

    .line 32
    new-instance v0, Lfast/dic/dict/models/parse/TransactionModel;

    invoke-direct {v0}, Lfast/dic/dict/models/parse/TransactionModel;-><init>()V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 33
    const-string v2, "amount"

    invoke-virtual {p3, v2}, Lcom/parse/ParseObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lfast/dic/dict/models/parse/TransactionModel;->setAmount(Ljava/lang/Integer;)V

    if-eqz p3, :cond_1

    .line 34
    const-string v2, "referenceId"

    invoke-virtual {p3, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lfast/dic/dict/models/parse/TransactionModel;->setReferenceId(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    .line 35
    const-string v2, "description"

    invoke-virtual {p3, v2}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_2
    move-object v2, v1

    :goto_3
    invoke-virtual {v0, v2}, Lfast/dic/dict/models/parse/TransactionModel;->setDescription(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 36
    const-string v1, "purchasedAt"

    invoke-virtual {p3, v1}, Lcom/parse/ParseObject;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    :cond_3
    invoke-virtual {v0, v1}, Lfast/dic/dict/models/parse/TransactionModel;->setPurchasedAt(Ljava/util/Date;)V

    .line 38
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41
    :cond_4
    iget-object p1, p1, Lfast/dic/dict/services/parse/FDTransaction;->fdTransactionInterface:Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;

    if-eqz p1, :cond_5

    invoke-interface {p1, p0}, Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;->transactionCallback(Ljava/util/List;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final getFdTransactionInterface()Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;
    .locals 0

    .line 12
    iget-object p0, p0, Lfast/dic/dict/services/parse/FDTransaction;->fdTransactionInterface:Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;

    return-object p0
.end method

.method public final registerCallback(Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lfast/dic/dict/services/parse/FDTransaction;->fdTransactionInterface:Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;

    .line 15
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDTransaction;->transactions()V

    return-void
.end method

.method public final setFdTransactionInterface(Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lfast/dic/dict/services/parse/FDTransaction;->fdTransactionInterface:Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;

    return-void
.end method

.method public final transactions()V
    .locals 4

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 20
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    instance-of v2, v1, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_2

    .line 22
    iget-object p0, p0, Lfast/dic/dict/services/parse/FDTransaction;->fdTransactionInterface:Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;

    if-eqz p0, :cond_1

    invoke-interface {p0, v3}, Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;->transactionCallback(Ljava/util/List;)V

    :cond_1
    return-void

    .line 25
    :cond_2
    const-string v2, "Transaction"

    invoke-static {v2}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v2

    const-string v3, "getQuery(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3, v1}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    .line 27
    const-string v1, "purchasedAt"

    invoke-virtual {v2, v1}, Lcom/parse/ParseQuery;->orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 28
    new-instance v1, Lfast/dic/dict/services/parse/FDTransaction$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lfast/dic/dict/services/parse/FDTransaction$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lfast/dic/dict/services/parse/FDTransaction;)V

    invoke-virtual {v2, v1}, Lcom/parse/ParseQuery;->findInBackground(Lcom/parse/FindCallback;)V

    return-void
.end method
