.class public final Lfast/dic/dict/adapters/LanguageLayoutAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LanguageLayoutAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lfast/dic/dict/adapters/LanguageLayoutViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLanguageLayoutAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LanguageLayoutAdapter.kt\nfast/dic/dict/adapters/LanguageLayoutAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,81:1\n1739#2:82\n1814#2,3:83\n*S KotlinDebug\n*F\n+ 1 LanguageLayoutAdapter.kt\nfast/dic/dict/adapters/LanguageLayoutAdapter\n*L\n63#1:82\n63#1:83,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0018H\u0016J\u0008\u0010\u001c\u001a\u00020\u0018H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001d\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Lfast/dic/dict/adapters/LanguageLayoutAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lfast/dic/dict/adapters/LanguageLayoutViewHolder;",
        "context",
        "Landroid/content/Context;",
        "dataset",
        "",
        "Lfast/dic/dict/models/SupportedLanguageModel;",
        "onChanged",
        "Lkotlin/Function1;",
        "",
        "",
        "<init>",
        "(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V",
        "getDataset",
        "()Ljava/util/List;",
        "setDataset",
        "(Ljava/util/List;)V",
        "getOnChanged",
        "()Lkotlin/jvm/functions/Function1;",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "indext",
        "",
        "onBindViewHolder",
        "view",
        "index",
        "getItemCount",
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
.field private final context:Landroid/content/Context;

.field private dataset:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/SupportedLanguageModel;",
            ">;"
        }
    .end annotation
.end field

.field private final onChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/SupportedLanguageModel;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onChanged"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->dataset:Ljava/util/List;

    iput-object p3, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->onChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method static final onBindViewHolder$lambda$0(Lfast/dic/dict/adapters/LanguageLayoutAdapter;ILandroid/view/View;)V
    .locals 3

    .line 63
    iget-object p2, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->dataset:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 83
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 84
    check-cast v1, Lfast/dic/dict/models/SupportedLanguageModel;

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v1, v2}, Lfast/dic/dict/models/SupportedLanguageModel;->setSelected(Z)V

    .line 84
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 69
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfast/dic/dict/models/SupportedLanguageModel;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lfast/dic/dict/models/SupportedLanguageModel;->setSelected(Z)V

    .line 71
    iput-object v0, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->dataset:Ljava/util/List;

    .line 72
    invoke-virtual {p0}, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->notifyDataSetChanged()V

    .line 74
    iget-object p0, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->onChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfast/dic/dict/models/SupportedLanguageModel;

    invoke-virtual {p1}, Lfast/dic/dict/models/SupportedLanguageModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getDataset()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/SupportedLanguageModel;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->dataset:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 79
    iget-object p0, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->dataset:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getOnChanged()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->onChanged:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 46
    check-cast p1, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->onBindViewHolder(Lfast/dic/dict/adapters/LanguageLayoutViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfast/dic/dict/adapters/LanguageLayoutViewHolder;I)V
    .locals 2

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->dataset:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/models/SupportedLanguageModel;

    .line 58
    invoke-virtual {v0}, Lfast/dic/dict/models/SupportedLanguageModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->setTitle(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Lfast/dic/dict/models/SupportedLanguageModel;->getSelected()Z

    move-result v1

    invoke-virtual {p1, v1}, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->selected(Z)V

    .line 60
    invoke-virtual {v0}, Lfast/dic/dict/models/SupportedLanguageModel;->getTranslate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->setSubtitle(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lfast/dic/dict/adapters/LanguageLayoutAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lfast/dic/dict/adapters/LanguageLayoutAdapter$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/adapters/LanguageLayoutAdapter;I)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;->setOnSelectedListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/adapters/LanguageLayoutViewHolder;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/adapters/LanguageLayoutViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->context:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lfast/dic/dict/R$layout;->adapter_language_layout:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 52
    new-instance p1, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, p0}, Lfast/dic/dict/adapters/LanguageLayoutViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public final setDataset(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/SupportedLanguageModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->dataset:Ljava/util/List;

    return-void
.end method
