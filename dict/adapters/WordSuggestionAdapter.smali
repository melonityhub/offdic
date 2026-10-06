.class public final Lfast/dic/dict/adapters/WordSuggestionAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "WordSuggestionListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/adapters/WordSuggestionAdapter$DiffCallback;,
        Lfast/dic/dict/adapters/WordSuggestionAdapter$NotFoundViewHolder;,
        Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNoSubscriptionsViewHolder;,
        Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;,
        Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorViewHolder;,
        Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;,
        Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lfast/dic/dict/models/database/ListModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0007\u0017\u0018\u0019\u001a\u001b\u001c\u001dB\r\u0008\u0007\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\tH\u0016J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\tH\u0016J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\tH\u0016R.\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001e"
    }
    d2 = {
        "Lfast/dic/dict/adapters/WordSuggestionAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lfast/dic/dict/models/database/ListModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "onSelectedAction",
        "Lkotlin/Function2;",
        "",
        "",
        "getOnSelectedAction",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnSelectedAction",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "position",
        "getItemViewType",
        "WordViewHolder",
        "TranslatorViewHolder",
        "TranslatorNotLoginViewHolder",
        "TranslatorNoSubscriptionsViewHolder",
        "NotFoundViewHolder",
        "DiffCallback",
        "WordSuggestedViewType",
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
.field private onSelectedAction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/database/ListModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 23
    new-instance v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$DiffCallback;

    invoke-direct {v0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method static final onBindViewHolder$lambda$0(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/models/database/ListModel;I)Lkotlin/Unit;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onBindViewHolder$lambda$1(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/models/database/ListModel;I)Lkotlin/Unit;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onBindViewHolder$lambda$2(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/models/database/ListModel;I)Lkotlin/Unit;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onBindViewHolder$lambda$3(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/models/database/ListModel;I)Lkotlin/Unit;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onBindViewHolder$lambda$4(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/models/database/ListModel;I)Lkotlin/Unit;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onBindViewHolder$lambda$5(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/models/database/ListModel;I)Lkotlin/Unit;
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object p0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .line 98
    invoke-virtual {p0, p1}, Lfast/dic/dict/adapters/WordSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/models/database/ListModel;

    .line 100
    invoke-virtual {p0}, Lfast/dic/dict/models/database/ListModel;->isSuggestion()Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    sget-object p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->NOT_FOUND:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result p0

    return p0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/models/database/ListModel;->isTranslator()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p0}, Lfast/dic/dict/models/database/ListModel;->isLoggedIn()Z

    move-result p1

    if-nez p1, :cond_1

    .line 106
    sget-object p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->TRANSLATOR_NOT_LOGIN:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result p0

    return p0

    .line 108
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/models/database/ListModel;->getHasSubscription()Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 109
    sget-object p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->TRANSLATOR:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result p0

    return p0

    .line 112
    :cond_2
    sget-object p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->TRANSLATOR_NO_SUBSCRIPTION:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result p0

    return p0

    .line 115
    :cond_3
    invoke-virtual {p0}, Lfast/dic/dict/models/database/ListModel;->isHistory()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 116
    invoke-virtual {p0}, Lfast/dic/dict/models/database/ListModel;->getCategory()Ljava/lang/Integer;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/utils/Category;->English:Lfast/dic/dict/utils/Category;

    invoke-virtual {p1}, Lfast/dic/dict/utils/Category;->getRawValue()I

    move-result p1

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_5

    .line 117
    sget-object p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->HISTORY_EN_ROW:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result p0

    return p0

    .line 119
    :cond_5
    :goto_0
    sget-object p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->HISTORY_PE_ROW:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result p0

    return p0

    .line 122
    :cond_6
    sget-object p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->WORD:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result p0

    return p0
.end method

.method public final getOnSelectedAction()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lfast/dic/dict/models/database/ListModel;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object p0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    instance-of v0, p1, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;

    const-string v1, "getItem(...)"

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p1, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;->setBind(Lfast/dic/dict/models/database/ListModel;)V

    .line 62
    new-instance p2, Lfast/dic/dict/adapters/WordSuggestionAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;->setOnSelectedListener(Lkotlin/jvm/functions/Function2;)V

    return-void

    .line 65
    :cond_0
    instance-of v0, p1, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorViewHolder;

    if-eqz v0, :cond_1

    .line 66
    check-cast p1, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p1, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorViewHolder;->setBind(Lfast/dic/dict/models/database/ListModel;)V

    .line 67
    new-instance p2, Lfast/dic/dict/adapters/WordSuggestionAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorViewHolder;->setOnSelectedListener(Lkotlin/jvm/functions/Function2;)V

    return-void

    .line 70
    :cond_1
    instance-of v0, p1, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;

    if-eqz v0, :cond_2

    .line 71
    check-cast p1, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p1, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;->setBind(Lfast/dic/dict/models/database/ListModel;)V

    .line 72
    new-instance p2, Lfast/dic/dict/adapters/WordSuggestionAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;->setOnSelectedListener(Lkotlin/jvm/functions/Function2;)V

    return-void

    .line 75
    :cond_2
    instance-of v0, p1, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNoSubscriptionsViewHolder;

    if-eqz v0, :cond_3

    .line 76
    check-cast p1, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNoSubscriptionsViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p1, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNoSubscriptionsViewHolder;->setBind(Lfast/dic/dict/models/database/ListModel;)V

    .line 77
    new-instance p2, Lfast/dic/dict/adapters/WordSuggestionAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNoSubscriptionsViewHolder;->setOnSelectedListener(Lkotlin/jvm/functions/Function2;)V

    return-void

    .line 80
    :cond_3
    instance-of v0, p1, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;

    if-eqz v0, :cond_4

    .line 81
    check-cast p1, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;->setBind(Lfast/dic/dict/models/database/ListModel;)V

    .line 82
    invoke-virtual {p1}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;->changeBackground()V

    .line 83
    new-instance p2, Lfast/dic/dict/adapters/WordSuggestionAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;->setOnSelectedListener(Lkotlin/jvm/functions/Function2;)V

    return-void

    .line 86
    :cond_4
    instance-of v0, p1, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;

    if-eqz v0, :cond_5

    .line 87
    check-cast p1, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/adapters/WordSuggestionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;->setBind(Lfast/dic/dict/models/database/ListModel;)V

    .line 88
    invoke-virtual {p1}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;->changeBackground()V

    .line 89
    new-instance p2, Lfast/dic/dict/adapters/WordSuggestionAdapter$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$$ExternalSyntheticLambda5;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;)V

    invoke-virtual {p1, p2}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;->setOnSelectedListener(Lkotlin/jvm/functions/Function2;)V

    return-void

    .line 92
    :cond_5
    instance-of p0, p1, Lfast/dic/dict/adapters/WordSuggestionAdapter$NotFoundViewHolder;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    sget-object v1, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->WORD:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {v1}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result v1

    const-string v2, "inflate(...)"

    const/4 v3, 0x0

    if-ne p2, v1, :cond_0

    .line 30
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance p2, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 33
    :cond_0
    sget-object v1, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->HISTORY_EN_ROW:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {v1}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 34
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/HistoryEnItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/HistoryEnItemLayoutBinding;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance p1, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;

    invoke-direct {p1, p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;-><init>(Lfast/dic/dict/databinding/HistoryEnItemLayoutBinding;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1

    .line 38
    :cond_1
    sget-object v1, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->HISTORY_PE_ROW:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {v1}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 39
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;

    invoke-direct {p1, p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;-><init>(Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1

    .line 43
    :cond_2
    sget-object v1, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->TRANSLATOR:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {v1}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_3

    .line 44
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/WsTranslatorItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WsTranslatorItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance p2, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorViewHolder;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/WsTranslatorItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 47
    :cond_3
    sget-object v1, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->TRANSLATOR_NOT_LOGIN:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {v1}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_4

    .line 48
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance p2, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 51
    :cond_4
    sget-object v1, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->TRANSLATOR_NO_SUBSCRIPTION:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {v1}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 52
    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance p2, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNoSubscriptionsViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNoSubscriptionsViewHolder;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 56
    :cond_5
    new-instance p2, Lfast/dic/dict/adapters/WordSuggestionAdapter$NotFoundViewHolder;

    invoke-static {v0, p1, v3}, Lfast/dic/dict/databinding/NotFoundItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/NotFoundItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/adapters/WordSuggestionAdapter$NotFoundViewHolder;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/NotFoundItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2
.end method

.method public final setOnSelectedAction(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/database/ListModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter;->onSelectedAction:Lkotlin/jvm/functions/Function2;

    return-void
.end method
