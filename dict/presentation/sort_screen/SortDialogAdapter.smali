.class public final Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SortDialogAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$DiffCallback;,
        Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;",
        "Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSortDialogAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SortDialogAdapter.kt\nfast/dic/dict/presentation/sort_screen/SortDialogAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1749#2:69\n1782#2,4:70\n*S KotlinDebug\n*F\n+ 1 SortDialogAdapter.kt\nfast/dic/dict/presentation/sort_screen/SortDialogAdapter\n*L\n27#1:69\n27#1:70,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0019\u001aB\r\u0008\u0007\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\r\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J.\u0010\u0012\u001a\u00020\u00132\n\u0010\u0014\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0011H\u0017b\u0010\u0008\u0016\u0012\u000c\u0008\u0017\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u0018R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;",
        "Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "selectedItemListener",
        "Landroid/view/View$OnClickListener;",
        "getSelectedItemListener",
        "()Landroid/view/View$OnClickListener;",
        "setSelectedItemListener",
        "(Landroid/view/View$OnClickListener;)V",
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
        "NotifyDataSetChanged",
        "ViewHolder",
        "DiffCallback",
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
.field private selectedItemListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 13
    new-instance v0, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$DiffCallback;

    invoke-direct {v0}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    return-void
.end method

.method static final onBindViewHolder$lambda$0(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;ILandroid/view/View;)V
    .locals 6

    .line 27
    invoke-virtual {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "getCurrentList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 71
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_0

    .line 72
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v4, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;

    if-ne v3, p1, :cond_1

    const/4 v3, 0x1

    .line 29
    invoke-virtual {v4, v3}, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;->setSelected(Z)V

    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v4, v2}, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;->setSelected(Z)V

    .line 72
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    .line 73
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 37
    invoke-virtual {p0, v1}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;->submitList(Ljava/util/List;)V

    .line 38
    invoke-virtual {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;->notifyDataSetChanged()V

    .line 39
    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;->selectedItemListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_3

    invoke-interface {p0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final getSelectedItemListener()Landroid/view/View$OnClickListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;->selectedItemListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;->onBindViewHolder(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getItem(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;->setBind(Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;)V

    .line 26
    new-instance v0, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;I)V

    invoke-virtual {p1, v0}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;->setOnSelectListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 18
    invoke-static {p2, p1, v0}, Lfast/dic/dict/databinding/AdapterSortLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/AdapterSortLayoutBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p2, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;-><init>(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;Lfast/dic/dict/databinding/AdapterSortLayoutBinding;)V

    return-object p2
.end method

.method public final setSelectedItemListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;->selectedItemListener:Landroid/view/View$OnClickListener;

    return-void
.end method
