.class public final Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "PricingPlanAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$DiffCallback;,
        Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;",
        "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\u0008\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002>?B\r\u0008\u0007\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001c\u00107\u001a\u00060\u0003R\u00020\u00002\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\nH\u0016J\u001c\u0010;\u001a\u00020(2\n\u0010<\u001a\u00060\u0003R\u00020\u00002\u0006\u0010=\u001a\u00020\nH\u0016R6\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0014R\u001a\u0010\u0017\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012\"\u0004\u0008\u0018\u0010\u0014R\u001a\u0010\u0019\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012\"\u0004\u0008\u001a\u0010\u0014R\u001a\u0010\u001b\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u0014R\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R5\u0010#\u001a\u001d\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008%\u0012\u0008\u0008&\u0012\u0004\u0008\u0008(\'\u0012\u0004\u0012\u00020(0$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,RN\u0010-\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\n\u00a2\u0006\u000c\u0008%\u0012\u0008\u0008&\u0012\u0004\u0008\u0008(\'\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008%\u0012\u0008\u0008&\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u00020(0.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103RN\u00104\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\n\u00a2\u0006\u000c\u0008%\u0012\u0008\u0008&\u0012\u0004\u0008\u0008(\'\u0012\u0015\u0012\u0013\u0018\u00010\t\u00a2\u0006\u000c\u0008%\u0012\u0008\u0008&\u0012\u0004\u0008\u0008(/\u0012\u0004\u0012\u00020(0.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00101\"\u0004\u00086\u00103\u00a8\u0006@"
    }
    d2 = {
        "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;",
        "Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "selectedMonth",
        "Ljava/util/HashMap;",
        "Lfast/dic/dict/models/PlanType;",
        "",
        "Lkotlin/collections/HashMap;",
        "getSelectedMonth",
        "()Ljava/util/HashMap;",
        "setSelectedMonth",
        "(Ljava/util/HashMap;)V",
        "isPersianCurrentLanguage",
        "",
        "()Z",
        "setPersianCurrentLanguage",
        "(Z)V",
        "isRenewButtonEnabled",
        "setRenewButtonEnabled",
        "isPurchaseButtonEnabled",
        "setPurchaseButtonEnabled",
        "isRenewButtonVisible",
        "setRenewButtonVisible",
        "isPurchaseButtonVisible",
        "setPurchaseButtonVisible",
        "purchaseButtonTitle",
        "",
        "getPurchaseButtonTitle",
        "()Ljava/lang/String;",
        "setPurchaseButtonTitle",
        "(Ljava/lang/String;)V",
        "onMonthChange",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "month",
        "",
        "getOnMonthChange",
        "()Lkotlin/jvm/functions/Function1;",
        "setOnMonthChange",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onRenewButtonClicked",
        "Lkotlin/Function2;",
        "plan",
        "getOnRenewButtonClicked",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnRenewButtonClicked",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onPaymentButtonClicked",
        "getOnPaymentButtonClicked",
        "setOnPaymentButtonClicked",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "onBindViewHolder",
        "holder",
        "position",
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
.field private isPersianCurrentLanguage:Z

.field private isPurchaseButtonEnabled:Z

.field private isPurchaseButtonVisible:Z

.field private isRenewButtonEnabled:Z

.field private isRenewButtonVisible:Z

.field private onMonthChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onPaymentButtonClicked:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lfast/dic/dict/models/PlanType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onRenewButtonClicked:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lfast/dic/dict/models/PlanType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private purchaseButtonTitle:Ljava/lang/String;

.field private selectedMonth:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lfast/dic/dict/models/PlanType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 20
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$DiffCallback;

    invoke-direct {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    const/4 v0, 0x2

    .line 23
    new-array v0, v0, [Lkotlin/Pair;

    sget-object v1, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 24
    sget-object v1, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 22
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->selectedMonth:Ljava/util/HashMap;

    .line 27
    iput-boolean v2, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isRenewButtonEnabled:Z

    .line 28
    iput-boolean v2, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isPurchaseButtonEnabled:Z

    .line 29
    iput-boolean v2, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isRenewButtonVisible:Z

    .line 30
    iput-boolean v2, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isPurchaseButtonVisible:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->purchaseButtonTitle:Ljava/lang/String;

    .line 32
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->onMonthChange:Lkotlin/jvm/functions/Function1;

    .line 33
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->onRenewButtonClicked:Lkotlin/jvm/functions/Function2;

    .line 34
    new-instance v0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->onPaymentButtonClicked:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method static final onMonthChange$lambda$0(I)Lkotlin/Unit;
    .locals 0

    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onPaymentButtonClicked$lambda$0(Ljava/lang/Integer;Lfast/dic/dict/models/PlanType;)Lkotlin/Unit;
    .locals 0

    .line 34
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onRenewButtonClicked$lambda$0(Ljava/lang/Integer;Lfast/dic/dict/models/PlanType;)Lkotlin/Unit;
    .locals 0

    .line 33
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getOnMonthChange()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->onMonthChange:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnPaymentButtonClicked()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Lfast/dic/dict/models/PlanType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->onPaymentButtonClicked:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOnRenewButtonClicked()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Lfast/dic/dict/models/PlanType;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->onRenewButtonClicked:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getPurchaseButtonTitle()Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->purchaseButtonTitle:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectedMonth()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lfast/dic/dict/models/PlanType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->selectedMonth:Ljava/util/HashMap;

    return-object p0
.end method

.method public final isPersianCurrentLanguage()Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isPersianCurrentLanguage:Z

    return p0
.end method

.method public final isPurchaseButtonEnabled()Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isPurchaseButtonEnabled:Z

    return p0
.end method

.method public final isPurchaseButtonVisible()Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isPurchaseButtonVisible:Z

    return p0
.end method

.method public final isRenewButtonEnabled()Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isRenewButtonEnabled:Z

    return p0
.end method

.method public final isRenewButtonVisible()Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isRenewButtonVisible:Z

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->onBindViewHolder(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "getItem(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;->setBind(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanUIData;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    .line 38
    invoke-static {p2, p1, v0}, Lfast/dic/dict/databinding/PlanItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/PlanItemLayoutBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance p2, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter$ViewHolder;-><init>(Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;Lfast/dic/dict/databinding/PlanItemLayoutBinding;)V

    return-object p2
.end method

.method public final setOnMonthChange(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->onMonthChange:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnPaymentButtonClicked(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lfast/dic/dict/models/PlanType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->onPaymentButtonClicked:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnRenewButtonClicked(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lfast/dic/dict/models/PlanType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->onRenewButtonClicked:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setPersianCurrentLanguage(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isPersianCurrentLanguage:Z

    return-void
.end method

.method public final setPurchaseButtonEnabled(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isPurchaseButtonEnabled:Z

    return-void
.end method

.method public final setPurchaseButtonTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->purchaseButtonTitle:Ljava/lang/String;

    return-void
.end method

.method public final setPurchaseButtonVisible(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isPurchaseButtonVisible:Z

    return-void
.end method

.method public final setRenewButtonEnabled(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isRenewButtonEnabled:Z

    return-void
.end method

.method public final setRenewButtonVisible(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->isRenewButtonVisible:Z

    return-void
.end method

.method public final setSelectedMonth(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lfast/dic/dict/models/PlanType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;->selectedMonth:Ljava/util/HashMap;

    return-void
.end method
