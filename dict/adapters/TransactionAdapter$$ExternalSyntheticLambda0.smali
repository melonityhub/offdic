.class public final synthetic Lfast/dic/dict/adapters/TransactionAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/adapters/TransactionAdapter;

.field public final synthetic f$1:Lfast/dic/dict/models/parse/TransactionModel;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/adapters/TransactionAdapter;Lfast/dic/dict/models/parse/TransactionModel;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/adapters/TransactionAdapter$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/adapters/TransactionAdapter;

    iput-object p2, p0, Lfast/dic/dict/adapters/TransactionAdapter$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/models/parse/TransactionModel;

    iput p3, p0, Lfast/dic/dict/adapters/TransactionAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lfast/dic/dict/adapters/TransactionAdapter$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/adapters/TransactionAdapter;

    iget-object v1, p0, Lfast/dic/dict/adapters/TransactionAdapter$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/models/parse/TransactionModel;

    iget p0, p0, Lfast/dic/dict/adapters/TransactionAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lfast/dic/dict/adapters/TransactionAdapter;->onBindViewHolder$lambda$0(Lfast/dic/dict/adapters/TransactionAdapter;Lfast/dic/dict/models/parse/TransactionModel;ILandroid/view/View;)V

    return-void
.end method
