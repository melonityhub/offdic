.class public final Lfast/dic/dict/adapters/PaymentMethodAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "PaymentMethodAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/adapters/PaymentMethodAdapter$DiffCallBack;,
        Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lfast/dic/dict/adapters/PaymentMethod;",
        "Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0015\u0016B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u0010\r\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001c\u0010\u0012\u001a\u00020\u00082\n\u0010\u0013\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0011H\u0016R(\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00080\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lfast/dic/dict/adapters/PaymentMethodAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lfast/dic/dict/adapters/PaymentMethod;",
        "Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;",
        "<init>",
        "()V",
        "onClick",
        "Lkotlin/Function1;",
        "",
        "getOnClick",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnClick",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "ViewHolder",
        "DiffCallBack",
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
.field private onClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/adapters/PaymentMethod;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    new-instance v0, Lfast/dic/dict/adapters/PaymentMethodAdapter$DiffCallBack;

    invoke-direct {v0}, Lfast/dic/dict/adapters/PaymentMethodAdapter$DiffCallBack;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 22
    new-instance v0, Lfast/dic/dict/adapters/PaymentMethodAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/adapters/PaymentMethodAdapter$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/adapters/PaymentMethodAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method static final onClick$lambda$0(Lfast/dic/dict/adapters/PaymentMethod;)Lkotlin/Unit;
    .locals 0

    .line 22
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getOnClick()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lfast/dic/dict/adapters/PaymentMethod;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethodAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/adapters/PaymentMethodAdapter;->onBindViewHolder(Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p2}, Lfast/dic/dict/adapters/PaymentMethodAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/adapters/PaymentMethod;

    invoke-virtual {p1, p0}, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;->setPaymentMethod(Lfast/dic/dict/adapters/PaymentMethod;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/adapters/PaymentMethodAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 25
    invoke-static {p2, p1, v0}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance p2, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;-><init>(Lfast/dic/dict/adapters/PaymentMethodAdapter;Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;)V

    return-object p2
.end method

.method public final setOnClick(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/adapters/PaymentMethod;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lfast/dic/dict/adapters/PaymentMethodAdapter;->onClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method
