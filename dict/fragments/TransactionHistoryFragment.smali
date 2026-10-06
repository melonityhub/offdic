.class public final Lfast/dic/dict/fragments/TransactionHistoryFragment;
.super Lfast/dic/dict/fragments/Hilt_TransactionHistoryFragment;
.source "TransactionHistoryFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u0011\u00a8\u0006\u0010"
    }
    d2 = {
        "Lfast/dic/dict/fragments/TransactionHistoryFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "binding",
        "Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getTransactions",
        "",
        "app",
        "Ldagger/hilt/android/AndroidEntryPoint;"
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
.field private binding:Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lfast/dic/dict/fragments/Hilt_TransactionHistoryFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lfast/dic/dict/fragments/TransactionHistoryFragment;)Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;
    .locals 0

    .line 21
    iget-object p0, p0, Lfast/dic/dict/fragments/TransactionHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;

    return-object p0
.end method

.method private final getTransactions()V
    .locals 6

    .line 35
    sget-object v0, Lfast/dic/dict/helpers/FDInternetHelper;->INSTANCE:Lfast/dic/dict/helpers/FDInternetHelper;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lfast/dic/dict/helpers/FDInternetHelper;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/utils/FDAlertManger;->showNotConnectedToInternetAlert(Landroid/content/Context;)V

    return-void

    .line 40
    :cond_0
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/TransactionHistoryFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result v0

    .line 41
    iget-object v1, p0, Lfast/dic/dict/fragments/TransactionHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    iget-object v1, v1, Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const-string v3, "loadingSpinner"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5, v2}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 43
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lfast/dic/dict/fragments/TransactionHistoryFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lfast/dic/dict/fragments/TransactionHistoryFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/TransactionHistoryFragment;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static final getTransactions$lambda$0(Lfast/dic/dict/fragments/TransactionHistoryFragment;Z)V
    .locals 2

    .line 44
    new-instance v0, Lfast/dic/dict/services/parse/FDTransaction;

    invoke-direct {v0}, Lfast/dic/dict/services/parse/FDTransaction;-><init>()V

    .line 47
    :try_start_0
    new-instance v1, Lfast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1;

    invoke-direct {v1, p0, p1}, Lfast/dic/dict/fragments/TransactionHistoryFragment$getTransactions$1$1;-><init>(Lfast/dic/dict/fragments/TransactionHistoryFragment;Z)V

    check-cast v1, Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;

    invoke-virtual {v0, v1}, Lfast/dic/dict/services/parse/FDTransaction;->registerCallback(Lfast/dic/dict/services/parse/FDTransaction$FDTransactionInterface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :goto_0
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDTransaction;->transactions()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 29
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/fragments/TransactionHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;

    .line 30
    invoke-direct {p0}, Lfast/dic/dict/fragments/TransactionHistoryFragment;->getTransactions()V

    .line 31
    iget-object p0, p0, Lfast/dic/dict/fragments/TransactionHistoryFragment;->binding:Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentTransactionHistoryBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
