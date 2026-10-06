.class public final Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PricingPlanAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/PlanItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;Lfast/dic/dict/databinding/PlanItemLayoutBinding;)V",
        "selectTwelfthMonth",
        "",
        "context",
        "Landroid/content/Context;",
        "setBind",
        "model",
        "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;",
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
.field private final binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;Lfast/dic/dict/databinding/PlanItemLayoutBinding;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    .line 50
    invoke-virtual {p2}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->selectTwelfthMonth(Landroid/content/Context;)V

    .line 53
    iget-object v1, p2, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->purchaseButton:Landroid/widget/Button;

    new-instance v2, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v1, p2, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->repurchaseButton:Landroid/widget/Button;

    new-instance v2, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;Landroid/content/Context;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V

    invoke-virtual {p2, v1}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->setFirstMonthPlanClicked(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;Landroid/content/Context;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V

    invoke-virtual {p2, v1}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->setSixthMonthPlanClicked(Landroid/view/View$OnClickListener;)V

    .line 100
    new-instance v1, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder$$ExternalSyntheticLambda4;-><init>(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;Landroid/content/Context;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V

    invoke-virtual {p2, v1}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->setTwelfthMonthPlanClicked(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;Landroid/view/View;)V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getOnPaymentButtonClicked()Lkotlin/jvm/functions/Function2;

    move-result-object p2

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getSelectedMonth()Ljava/util/HashMap;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    iget-object v0, p1, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {v0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->getModel()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->getModel()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v1

    :cond_1
    invoke-interface {p2, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static final _init_$lambda$1(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;Landroid/view/View;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getOnRenewButtonClicked()Lkotlin/jvm/functions/Function2;

    move-result-object p2

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getSelectedMonth()Ljava/util/HashMap;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    iget-object v0, p1, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {v0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->getModel()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->getModel()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v1

    :cond_1
    invoke-interface {p2, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static final _init_$lambda$2(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;Landroid/content/Context;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;Landroid/view/View;)V
    .locals 10

    .line 61
    iget-object p3, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p3, p3, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->firstAlphabetPriceTv:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object p3, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p3, p3, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->firstMonthCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v0, v2, v3}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 63
    iget-object p3, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p3, p3, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->firstMonthCard:Lcom/google/android/material/card/MaterialCardView;

    sget v5, Lfast/dic/dict/R$attr;->selected_pricing_duration:I

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 64
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->firstPriceRb:Landroid/widget/ImageView;

    sget v5, Lfast/dic/dict/R$attr;->selected_pricing_duration:I

    invoke-static/range {v4 .. v9}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 66
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->secondAlphabetPriceTv:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->secondMonthCard:Lcom/google/android/material/card/MaterialCardView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v4, v0, v2, v3}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 68
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->secondMonthCard:Lcom/google/android/material/card/MaterialCardView;

    sget v5, Lfast/dic/dict/R$attr;->unselected_pricing_duration:I

    invoke-static/range {v4 .. v9}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 69
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->secondPriceRb:Landroid/widget/ImageView;

    sget v5, Lfast/dic/dict/R$attr;->unselected_pricing_duration:I

    invoke-static/range {v4 .. v9}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 71
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->thirdAlphabetPriceTv:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->thirdMonthCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v1, v4, v0, v2, v3}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 73
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->thirdMonthCard:Lcom/google/android/material/card/MaterialCardView;

    sget v5, Lfast/dic/dict/R$attr;->unselected_pricing_duration:I

    invoke-static/range {v4 .. v9}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 74
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->thirdPriceRb:Landroid/widget/ImageView;

    sget v5, Lfast/dic/dict/R$attr;->unselected_pricing_duration:I

    invoke-static/range {v4 .. v9}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 76
    invoke-virtual {p2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getSelectedMonth()Ljava/util/HashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {p0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->getModel()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object p0

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getOnMonthChange()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static final _init_$lambda$3(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;Landroid/content/Context;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;Landroid/view/View;)V
    .locals 12

    .line 80
    iget-object p3, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->setSelectedDuration(Ljava/lang/Integer;)V

    .line 82
    iget-object p3, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p3, p3, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->firstAlphabetPriceTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object p3, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p3, p3, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->firstMonthCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, p1, v3, v4, v5}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v6

    invoke-virtual {p3, v6}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 84
    iget-object p3, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p3, p3, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->firstMonthCard:Lcom/google/android/material/card/MaterialCardView;

    sget v7, Lfast/dic/dict/R$attr;->unselected_pricing_duration:I

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 85
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->firstPriceRb:Landroid/widget/ImageView;

    sget v7, Lfast/dic/dict/R$attr;->unselected_pricing_duration:I

    invoke-static/range {v6 .. v11}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 87
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->secondAlphabetPriceTv:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->secondMonthCard:Lcom/google/android/material/card/MaterialCardView;

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p3, v6, v3, v4, v5}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 89
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->secondMonthCard:Lcom/google/android/material/card/MaterialCardView;

    sget v7, Lfast/dic/dict/R$attr;->selected_pricing_duration:I

    invoke-static/range {v6 .. v11}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 90
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->secondPriceRb:Landroid/widget/ImageView;

    sget v7, Lfast/dic/dict/R$attr;->selected_pricing_duration:I

    invoke-static/range {v6 .. v11}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 92
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->thirdAlphabetPriceTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->thirdMonthCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v2, v6, v3, v4, v5}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 94
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->thirdMonthCard:Lcom/google/android/material/card/MaterialCardView;

    sget v7, Lfast/dic/dict/R$attr;->unselected_pricing_duration:I

    invoke-static/range {v6 .. v11}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 95
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->thirdPriceRb:Landroid/widget/ImageView;

    sget v7, Lfast/dic/dict/R$attr;->unselected_pricing_duration:I

    invoke-static/range {v6 .. v11}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 97
    invoke-virtual {p2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getSelectedMonth()Ljava/util/HashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {p0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->getModel()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getOnMonthChange()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static final _init_$lambda$4(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;Landroid/content/Context;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->selectTwelfthMonth(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getSelectedMonth()Ljava/util/HashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {p0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->getModel()Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object p0

    const/16 p3, 0xc

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getOnMonthChange()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final selectTwelfthMonth(Landroid/content/Context;)V
    .locals 12

    .line 109
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object v0, v0, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->firstAlphabetPriceTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object v0, v0, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->firstMonthCard:Lcom/google/android/material/card/MaterialCardView;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, p1, v3, v4, v5}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 111
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object v0, v0, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->firstMonthCard:Lcom/google/android/material/card/MaterialCardView;

    sget v7, Lfast/dic/dict/R$attr;->unselected_pricing_duration:I

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 112
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->firstPriceRb:Landroid/widget/ImageView;

    sget v7, Lfast/dic/dict/R$attr;->unselected_pricing_duration:I

    invoke-static/range {v6 .. v11}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 114
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->secondAlphabetPriceTv:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->secondMonthCard:Lcom/google/android/material/card/MaterialCardView;

    invoke-static {v2, v6, v3, v4, v5}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 116
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->secondMonthCard:Lcom/google/android/material/card/MaterialCardView;

    sget v7, Lfast/dic/dict/R$attr;->unselected_pricing_duration:I

    invoke-static/range {v6 .. v11}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 117
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->secondPriceRb:Landroid/widget/ImageView;

    sget v7, Lfast/dic/dict/R$attr;->unselected_pricing_duration:I

    invoke-static/range {v6 .. v11}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 119
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->thirdAlphabetPriceTv:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->thirdMonthCard:Lcom/google/android/material/card/MaterialCardView;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, v6, v3, v4, v5}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeWidth(I)V

    .line 121
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->thirdMonthCard:Lcom/google/android/material/card/MaterialCardView;

    sget v7, Lfast/dic/dict/R$attr;->selected_pricing_duration:I

    invoke-static/range {v6 .. v11}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setStrokeColor(I)V

    .line 122
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->thirdPriceRb:Landroid/widget/ImageView;

    sget v7, Lfast/dic/dict/R$attr;->selected_pricing_duration:I

    invoke-static/range {v6 .. v11}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 124
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getSelectedMonth()Ljava/util/HashMap;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    sget-object p1, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final setBind(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;)V
    .locals 6

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {v0, p1}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->setModel(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;)V

    .line 130
    invoke-virtual {p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v0

    sget-object v1, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getSubscriptionMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object v0, v0, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->dividerView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0, v3}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isPersianCurrentLanguage()Z

    move-result v0

    .line 138
    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->dividerTv:Landroid/widget/TextView;

    .line 135
    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {v1}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lfast/dic/dict/R$drawable;->ic_info:I

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, v1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->dividerTv:Landroid/widget/TextView;

    .line 139
    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {v1}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lfast/dic/dict/R$drawable;->ic_info:I

    invoke-static {v1, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object v0, v0, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->dividerView:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0, v2}, Lcom/google/android/material/card/MaterialCardView;->setVisibility(I)V

    .line 145
    :goto_0
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v1

    invoke-static {v1}, Lfast/dic/dict/presentation/pricing_screen/UtilKt;->getPlanColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->setPlanColor(Ljava/lang/Integer;)V

    .line 146
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getPlanType()Lfast/dic/dict/models/PlanType;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/models/PlanType;->getIndex()I

    move-result v1

    invoke-static {v1}, Lfast/dic/dict/presentation/pricing_screen/UtilKt;->getPlanIcon(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->setPlanIcon(Ljava/lang/Integer;)V

    .line 147
    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;->getSubscriptionMessage()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v3

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v1

    :goto_2
    xor-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->setHasPlan(Ljava/lang/Boolean;)V

    .line 148
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    invoke-virtual {p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getPurchaseButtonTitle()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 149
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->purchaseButton:Landroid/widget/Button;

    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getPurchaseButtonTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_4
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->purchaseButton:Landroid/widget/Button;

    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isPurchaseButtonEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->repurchaseButton:Landroid/widget/Button;

    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isRenewButtonEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 153
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->purchaseButton:Landroid/widget/Button;

    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isPurchaseButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    iget-object p1, p1, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->repurchaseButton:Landroid/widget/Button;

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isRenewButtonVisible()Z

    move-result p0

    if-eqz p0, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
