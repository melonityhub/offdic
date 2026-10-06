.class public final Lfast/dic/dict/models/parse/TransactionModel;
.super Ljava/lang/Object;
.source "TransactionModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "Lfast/dic/dict/models/parse/TransactionModel;",
        "",
        "<init>",
        "()V",
        "amount",
        "",
        "getAmount",
        "()Ljava/lang/Integer;",
        "setAmount",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "purchasedAt",
        "Ljava/util/Date;",
        "getPurchasedAt",
        "()Ljava/util/Date;",
        "setPurchasedAt",
        "(Ljava/util/Date;)V",
        "referenceId",
        "",
        "getReferenceId",
        "()Ljava/lang/String;",
        "setReferenceId",
        "(Ljava/lang/String;)V",
        "description",
        "getDescription",
        "setDescription",
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
.field private amount:Ljava/lang/Integer;

.field private description:Ljava/lang/String;

.field private purchasedAt:Ljava/util/Date;

.field private referenceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAmount()Ljava/lang/Integer;
    .locals 0

    .line 6
    iget-object p0, p0, Lfast/dic/dict/models/parse/TransactionModel;->amount:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lfast/dic/dict/models/parse/TransactionModel;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getPurchasedAt()Ljava/util/Date;
    .locals 0

    .line 7
    iget-object p0, p0, Lfast/dic/dict/models/parse/TransactionModel;->purchasedAt:Ljava/util/Date;

    return-object p0
.end method

.method public final getReferenceId()Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lfast/dic/dict/models/parse/TransactionModel;->referenceId:Ljava/lang/String;

    return-object p0
.end method

.method public final setAmount(Ljava/lang/Integer;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lfast/dic/dict/models/parse/TransactionModel;->amount:Ljava/lang/Integer;

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lfast/dic/dict/models/parse/TransactionModel;->description:Ljava/lang/String;

    return-void
.end method

.method public final setPurchasedAt(Ljava/util/Date;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lfast/dic/dict/models/parse/TransactionModel;->purchasedAt:Ljava/util/Date;

    return-void
.end method

.method public final setReferenceId(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lfast/dic/dict/models/parse/TransactionModel;->referenceId:Ljava/lang/String;

    return-void
.end method
