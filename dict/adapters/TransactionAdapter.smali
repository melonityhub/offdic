.class public final Lfast/dic/dict/adapters/TransactionAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TransactionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lfast/dic/dict/adapters/TransactionViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J0\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0014H\u0017b\u0016\u0008\u0019\u0012\u0012\u0008\u001a\u0012\u000e\u0008\u000cJ\u0004\u0008\u0008(\u001bJ\u0004\u0008\u0008(\u001cJ\u0008\u0010\u001d\u001a\u00020\u0014H\u0016J \u0010 \u001a\u00020\u00162\u0018\u0010!\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00160\u001fR \u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u001e\u001a\u0016\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lfast/dic/dict/adapters/TransactionAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lfast/dic/dict/adapters/TransactionViewHolder;",
        "dataset",
        "",
        "Lfast/dic/dict/models/parse/TransactionModel;",
        "currency",
        "",
        "isCurrentLanguagePersian",
        "",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;Z)V",
        "getDataset",
        "()Ljava/util/List;",
        "setDataset",
        "(Ljava/util/List;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "Landroid/annotation/SuppressLint;",
        "value",
        "SetTextI18n",
        "DefaultLocale",
        "getItemCount",
        "itemAction",
        "Lkotlin/Function2;",
        "setItemAction",
        "action",
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
.field private final currency:Ljava/lang/String;

.field private dataset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/parse/TransactionModel;",
            ">;"
        }
    .end annotation
.end field

.field private final isCurrentLanguagePersian:Z

.field private itemAction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/parse/TransactionModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/parse/TransactionModel;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "dataset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/adapters/TransactionAdapter;->dataset:Ljava/util/List;

    iput-object p2, p0, Lfast/dic/dict/adapters/TransactionAdapter;->currency:Ljava/lang/String;

    iput-boolean p3, p0, Lfast/dic/dict/adapters/TransactionAdapter;->isCurrentLanguagePersian:Z

    return-void
.end method

.method static final onBindViewHolder$lambda$0(Lfast/dic/dict/adapters/TransactionAdapter;Lfast/dic/dict/models/parse/TransactionModel;ILandroid/view/View;)V
    .locals 0

    .line 60
    iget-object p0, p0, Lfast/dic/dict/adapters/TransactionAdapter;->itemAction:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getDataset()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/parse/TransactionModel;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lfast/dic/dict/adapters/TransactionAdapter;->dataset:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 65
    iget-object p0, p0, Lfast/dic/dict/adapters/TransactionAdapter;->dataset:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lfast/dic/dict/adapters/TransactionViewHolder;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/adapters/TransactionAdapter;->onBindViewHolder(Lfast/dic/dict/adapters/TransactionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfast/dic/dict/adapters/TransactionViewHolder;I)V
    .locals 6

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lfast/dic/dict/adapters/TransactionAdapter;->dataset:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/models/parse/TransactionModel;

    .line 35
    invoke-virtual {v0}, Lfast/dic/dict/models/parse/TransactionModel;->getAmount()Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%,d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-boolean v2, p0, Lfast/dic/dict/adapters/TransactionAdapter;->isCurrentLanguagePersian:Z

    if-eqz v2, :cond_0

    .line 37
    sget-object v2, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v2, v1}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->replaceNumbersToFarsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_0
    invoke-virtual {p1}, Lfast/dic/dict/adapters/TransactionViewHolder;->getTransactionIdLabel()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lfast/dic/dict/models/parse/TransactionModel;->getReferenceId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p1}, Lfast/dic/dict/adapters/TransactionViewHolder;->getTransactionMoneyLabel()Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lfast/dic/dict/adapters/TransactionAdapter;->currency:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :try_start_0
    new-instance v1, Lfast/dic/dict/utils/PersianDate;

    invoke-virtual {v0}, Lfast/dic/dict/models/parse/TransactionModel;->getPurchasedAt()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lfast/dic/dict/utils/PersianDate;-><init>(Ljava/util/Date;)V

    .line 44
    new-instance v2, Lfast/dic/dict/utils/PersianDateFormat;

    const-string v3, "Y/m/d"

    invoke-direct {v2, v3}, Lfast/dic/dict/utils/PersianDateFormat;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, v1}, Lfast/dic/dict/utils/PersianDateFormat;->format(Lfast/dic/dict/utils/PersianDate;)Ljava/lang/String;

    move-result-object v1

    .line 47
    iget-boolean v2, p0, Lfast/dic/dict/adapters/TransactionAdapter;->isCurrentLanguagePersian:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, " - "

    if-eqz v2, :cond_1

    .line 48
    :try_start_1
    invoke-virtual {p1}, Lfast/dic/dict/adapters/TransactionViewHolder;->getTransactionDescLabel()Landroid/widget/TextView;

    move-result-object v2

    sget-object v4, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v4, v1}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->replaceNumbersToFarsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lfast/dic/dict/models/parse/TransactionModel;->getDescription()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 48
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lfast/dic/dict/adapters/TransactionViewHolder;->getTransactionDescLabel()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lfast/dic/dict/models/parse/TransactionModel;->getPurchasedAt()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lfast/dic/dict/models/parse/TransactionModel;->getDescription()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 59
    :catch_0
    :goto_0
    iget-object p1, p1, Lfast/dic/dict/adapters/TransactionViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lfast/dic/dict/adapters/TransactionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2}, Lfast/dic/dict/adapters/TransactionAdapter$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/adapters/TransactionAdapter;Lfast/dic/dict/models/parse/TransactionModel;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/adapters/TransactionAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/adapters/TransactionViewHolder;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/adapters/TransactionViewHolder;
    .locals 1

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 26
    sget p2, Lfast/dic/dict/R$layout;->purchase_history_layout:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 28
    new-instance p1, Lfast/dic/dict/adapters/TransactionViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lfast/dic/dict/adapters/TransactionViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final setDataset(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/parse/TransactionModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lfast/dic/dict/adapters/TransactionAdapter;->dataset:Ljava/util/List;

    return-void
.end method

.method public final setItemAction(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/parse/TransactionModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lfast/dic/dict/adapters/TransactionAdapter;->itemAction:Lkotlin/jvm/functions/Function2;

    return-void
.end method
