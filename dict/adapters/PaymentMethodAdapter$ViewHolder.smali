.class public final Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PaymentMethodAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/adapters/PaymentMethodAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentMethodAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodAdapter.kt\nfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,74:1\n1739#2:75\n1814#2,3:76\n*S KotlinDebug\n*F\n+ 1 PaymentMethodAdapter.kt\nfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder\n*L\n48#1:75\n48#1:76,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/adapters/PaymentMethodAdapter;Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;)V",
        "value",
        "Lfast/dic/dict/adapters/PaymentMethod;",
        "paymentMethod",
        "getPaymentMethod",
        "()Lfast/dic/dict/adapters/PaymentMethod;",
        "setPaymentMethod",
        "(Lfast/dic/dict/adapters/PaymentMethod;)V",
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
.field private final binding:Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;

.field private paymentMethod:Lfast/dic/dict/adapters/PaymentMethod;

.field final synthetic this$0:Lfast/dic/dict/adapters/PaymentMethodAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/adapters/PaymentMethodAdapter;Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;->this$0:Lfast/dic/dict/adapters/PaymentMethodAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;

    .line 47
    invoke-virtual {p2}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    new-instance v0, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/adapters/PaymentMethodAdapter;Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/adapters/PaymentMethodAdapter;Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p1

    .line 48
    invoke-virtual/range {p0 .. p0}, Lfast/dic/dict/adapters/PaymentMethodAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v1

    const-string v2, "getCurrentList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .line 75
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 76
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 77
    move-object v7, v3

    check-cast v7, Lfast/dic/dict/adapters/PaymentMethod;

    .line 49
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v14, 0x3f

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v15}, Lfast/dic/dict/adapters/PaymentMethod;->copy$default(Lfast/dic/dict/adapters/PaymentMethod;Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;ZILjava/lang/Object;)Lfast/dic/dict/adapters/PaymentMethod;

    move-result-object v3

    .line 50
    invoke-virtual {v7}, Lfast/dic/dict/adapters/PaymentMethod;->getPaymentMethod()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    move-result-object v7

    iget-object v8, v0, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;->paymentMethod:Lfast/dic/dict/adapters/PaymentMethod;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lfast/dic/dict/adapters/PaymentMethod;->getPaymentMethod()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    move-result-object v4

    :cond_0
    if-ne v7, v4, :cond_2

    .line 51
    iget-object v4, v0, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;->paymentMethod:Lfast/dic/dict/adapters/PaymentMethod;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lfast/dic/dict/adapters/PaymentMethod;->getSelected()Z

    move-result v4

    if-ne v4, v6, :cond_1

    move v5, v6

    :cond_1
    xor-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v4}, Lfast/dic/dict/adapters/PaymentMethod;->setSelected(Z)V

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v3, v5}, Lfast/dic/dict/adapters/PaymentMethod;->setSelected(Z)V

    .line 77
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_3
    check-cast v2, Ljava/util/List;

    move-object/from16 v1, p0

    .line 57
    invoke-virtual {v1, v2}, Lfast/dic/dict/adapters/PaymentMethodAdapter;->submitList(Ljava/util/List;)V

    .line 58
    invoke-virtual {v1}, Lfast/dic/dict/adapters/PaymentMethodAdapter;->getOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    iget-object v7, v0, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;->paymentMethod:Lfast/dic/dict/adapters/PaymentMethod;

    if-eqz v7, :cond_4

    const/16 v14, 0x3f

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v15}, Lfast/dic/dict/adapters/PaymentMethod;->copy$default(Lfast/dic/dict/adapters/PaymentMethod;Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;ZILjava/lang/Object;)Lfast/dic/dict/adapters/PaymentMethod;

    move-result-object v4

    :cond_4
    if-eqz v4, :cond_6

    .line 59
    iget-object v0, v0, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;->paymentMethod:Lfast/dic/dict/adapters/PaymentMethod;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lfast/dic/dict/adapters/PaymentMethod;->getSelected()Z

    move-result v0

    if-ne v0, v6, :cond_5

    move v5, v6

    :cond_5
    xor-int/lit8 v0, v5, 0x1

    invoke-virtual {v4, v0}, Lfast/dic/dict/adapters/PaymentMethod;->setSelected(Z)V

    .line 58
    :cond_6
    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getPaymentMethod()Lfast/dic/dict/adapters/PaymentMethod;
    .locals 0

    .line 36
    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;->paymentMethod:Lfast/dic/dict/adapters/PaymentMethod;

    return-object p0
.end method

.method public final setPaymentMethod(Lfast/dic/dict/adapters/PaymentMethod;)V
    .locals 2

    .line 38
    iput-object p1, p0, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;->paymentMethod:Lfast/dic/dict/adapters/PaymentMethod;

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lfast/dic/dict/adapters/PaymentMethod;->getSelected()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;->this$0:Lfast/dic/dict/adapters/PaymentMethodAdapter;

    invoke-virtual {v0}, Lfast/dic/dict/adapters/PaymentMethodAdapter;->getOnClick()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;->setPayment(Lfast/dic/dict/adapters/PaymentMethod;)V

    return-void
.end method
