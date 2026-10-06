.class public final Lfast/dic/dict/adapters/TransactionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TransactionAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lfast/dic/dict/adapters/TransactionViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "view",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "transactionIdLabel",
        "Landroid/widget/TextView;",
        "getTransactionIdLabel",
        "()Landroid/widget/TextView;",
        "transactionDescLabel",
        "getTransactionDescLabel",
        "transactionMoneyLabel",
        "getTransactionMoneyLabel",
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
.field private final transactionDescLabel:Landroid/widget/TextView;

.field private final transactionIdLabel:Landroid/widget/TextView;

.field private final transactionMoneyLabel:Landroid/widget/TextView;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lfast/dic/dict/adapters/TransactionViewHolder;->view:Landroid/view/View;

    .line 17
    sget v0, Lfast/dic/dict/R$id;->transaction_id_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfast/dic/dict/adapters/TransactionViewHolder;->transactionIdLabel:Landroid/widget/TextView;

    .line 18
    sget v0, Lfast/dic/dict/R$id;->transaction_desc_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfast/dic/dict/adapters/TransactionViewHolder;->transactionDescLabel:Landroid/widget/TextView;

    .line 19
    sget v0, Lfast/dic/dict/R$id;->transaction_money_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lfast/dic/dict/adapters/TransactionViewHolder;->transactionMoneyLabel:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getTransactionDescLabel()Landroid/widget/TextView;
    .locals 0

    .line 18
    iget-object p0, p0, Lfast/dic/dict/adapters/TransactionViewHolder;->transactionDescLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTransactionIdLabel()Landroid/widget/TextView;
    .locals 0

    .line 17
    iget-object p0, p0, Lfast/dic/dict/adapters/TransactionViewHolder;->transactionIdLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getTransactionMoneyLabel()Landroid/widget/TextView;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/adapters/TransactionViewHolder;->transactionMoneyLabel:Landroid/widget/TextView;

    return-object p0
.end method
