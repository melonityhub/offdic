.class public final Lfast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1;
.super Ljava/lang/Object;
.source "TransactionHistoryFragment.kt"

# interfaces
.implements Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/fragments/TransactionHistoryFragment;->getTransactions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "fast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1",
        "Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;",
        "transactionCallback",
        "",
        "transactionModel",
        "",
        "Lfast/dic/dict/models/parse/TransactionModel;",
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
.field final synthetic $currentLanguageIsPersian:Z

.field final synthetic this$0:Lfast/dic/dict/fragments/TransactionHistoryFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/fragments/TransactionHistoryFragment;Z)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1;->this$0:Lfast/dic/dict/fragments/TransactionHistoryFragment;

    iput-boolean p2, p0, Lfast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1;->$currentLanguageIsPersian:Z

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final transactionCallback$lambda$0(Lfast/dic/dict/fragments/TransactionHistoryFragment;)Lkotlin/Unit;
    .locals 4

    .line 66
    invoke-static {p0}, Lfast/dic/dict/fragments/TransactionHistoryFragment;->access$getBinding$p(Lfast/dic/dict/fragments/TransactionHistoryFragment;)Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string v1, "loadingSpinner"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, v0}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 67
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public transactionCallback(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/parse/TransactionModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 50
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 53
    iget-object v1, p0, Lfast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1;->this$0:Lfast/dic/dict/fragments/TransactionHistoryFragment;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v1}, Lfast/dic/dict/fragments/TransactionHistoryFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lfast/dic/dict/R$id;->placeholder_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v1}, Lfast/dic/dict/fragments/TransactionHistoryFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v1, Lfast/dic/dict/R$id;->placeholder_label:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lfast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1;->this$0:Lfast/dic/dict/fragments/TransactionHistoryFragment;

    invoke-virtual {v0}, Lfast/dic/dict/fragments/TransactionHistoryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    sget v1, Lfast/dic/dict/R$string;->currency:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, ""

    .line 57
    :cond_3
    new-instance v1, Lfast/dic/dict/adapters/TransactionAdapter;

    .line 60
    iget-boolean v2, p0, Lfast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1;->$currentLanguageIsPersian:Z

    .line 57
    invoke-direct {v1, p1, v0, v2}, Lfast/dic/dict/adapters/TransactionAdapter;-><init>(Ljava/util/List;Ljava/lang/String;Z)V

    .line 62
    iget-object p1, p0, Lfast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1;->this$0:Lfast/dic/dict/fragments/TransactionHistoryFragment;

    invoke-static {p1}, Lfast/dic/dict/fragments/TransactionHistoryFragment;->access$getBinding$p(Lfast/dic/dict/fragments/TransactionHistoryFragment;)Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;

    move-result-object p1

    if-nez p1, :cond_4

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_4
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    :cond_5
    sget-object p1, Lfast/dic/dict/utils/Dispatch;->INSTANCE:Lfast/dic/dict/utils/Dispatch;

    iget-object p0, p0, Lfast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1;->this$0:Lfast/dic/dict/fragments/TransactionHistoryFragment;

    new-instance v0, Lfast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/TransactionHistoryFragment;)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/utils/Dispatch;->asyncOnMain(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
