.class final Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;
.super Ljava/lang/Object;
.source "PricingFragmentDirections.kt"

# interfaces
.implements Landroidx/navigation/NavDirections;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionNewPricingFragmentToPaymentMethodFragment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u001b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0014\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0083\u0004J\n\u0010 \u001a\u00020\u0011H\u00d6\u0081\u0004J\n\u0010!\u001a\u00020\"H\u00d6\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006#"
    }
    d2 = {
        "Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;",
        "Landroidx/navigation/NavDirections;",
        "plan",
        "Lfast/dic/dict/domain/entity/pricing/Plan;",
        "planType",
        "Lfast/dic/dict/models/PlanType;",
        "time",
        "Lfast/dic/dict/domain/entity/ProSubscriptionTime;",
        "<init>",
        "(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V",
        "getPlan",
        "()Lfast/dic/dict/domain/entity/pricing/Plan;",
        "getPlanType",
        "()Lfast/dic/dict/models/PlanType;",
        "getTime",
        "()Lfast/dic/dict/domain/entity/ProSubscriptionTime;",
        "actionId",
        "",
        "getActionId",
        "()I",
        "arguments",
        "Landroid/os/Bundle;",
        "getArguments",
        "()Landroid/os/Bundle;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
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
.field private final actionId:I

.field private final plan:Lfast/dic/dict/domain/entity/pricing/Plan;

.field private final planType:Lfast/dic/dict/models/PlanType;

.field private final time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;


# direct methods
.method public constructor <init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V
    .locals 1

    const-string v0, "planType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "time"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    .line 19
    iput-object p2, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->planType:Lfast/dic/dict/models/PlanType;

    .line 20
    iput-object p3, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    .line 22
    sget p1, Lfast/dic/dict/R$id;->action_newPricingFragment_to_paymentMethodFragment:I

    iput p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->actionId:I

    return-void
.end method

.method public synthetic constructor <init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 19
    sget-object p2, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 20
    sget-object p3, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->ONE_YEAR:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;ILjava/lang/Object;)Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->planType:Lfast/dic/dict/models/PlanType;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->copy(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lfast/dic/dict/domain/entity/pricing/Plan;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    return-object p0
.end method

.method public final component2()Lfast/dic/dict/models/PlanType;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->planType:Lfast/dic/dict/models/PlanType;

    return-object p0
.end method

.method public final component3()Lfast/dic/dict/domain/entity/ProSubscriptionTime;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    return-object p0
.end method

.method public final copy(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;
    .locals 0

    const-string p0, "planType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "time"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;

    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;

    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    iget-object v3, p1, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->planType:Lfast/dic/dict/models/PlanType;

    iget-object v3, p1, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->planType:Lfast/dic/dict/models/PlanType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    iget-object p1, p1, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getActionId()I
    .locals 0

    .line 22
    iget p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->actionId:I

    return p0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 7

    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Lfast/dic/dict/models/PlanType;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v4, "null cannot be cast to non-null type java.io.Serializable"

    const-string v5, "null cannot be cast to non-null type android.os.Parcelable"

    const-string v6, "planType"

    if-eqz v3, :cond_0

    .line 29
    iget-object v2, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->planType:Lfast/dic/dict/models/PlanType;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 30
    :cond_0
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 31
    iget-object v2, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->planType:Lfast/dic/dict/models/PlanType;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 33
    :cond_1
    :goto_0
    const-class v2, Lfast/dic/dict/domain/entity/pricing/Plan;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v6, "plan"

    if-eqz v3, :cond_2

    .line 34
    iget-object v2, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 35
    :cond_2
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 36
    iget-object v2, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 40
    :goto_1
    const-class v2, Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string/jumbo v3, "time"

    if-eqz v1, :cond_3

    .line 41
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0

    .line 42
    :cond_3
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 43
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/io/Serializable;

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_4
    return-object v0

    .line 38
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPlan()Lfast/dic/dict/domain/entity/pricing/Plan;
    .locals 0

    .line 18
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    return-object p0
.end method

.method public final getPlanType()Lfast/dic/dict/models/PlanType;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->planType:Lfast/dic/dict/models/PlanType;

    return-object p0
.end method

.method public final getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;
    .locals 0

    .line 20
    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lfast/dic/dict/domain/entity/pricing/Plan;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->planType:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v1}, Lfast/dic/dict/models/PlanType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-virtual {p0}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    iget-object v1, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->planType:Lfast/dic/dict/models/PlanType;

    iget-object p0, p0, Lfast/dic/dict/presentation/pricing_screen/PricingFragmentDirections$ActionNewPricingFragmentToPaymentMethodFragment;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ActionNewPricingFragmentToPaymentMethodFragment(plan="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", planType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
