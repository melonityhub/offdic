.class public final Lfast/dic/dict/PaymentMethodFragmentArgs;
.super Ljava/lang/Object;
.source "PaymentMethodFragmentArgs.kt"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000  2\u00020\u0001:\u0001 B%\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u0017\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0014\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0083\u0004J\n\u0010\u001c\u001a\u00020\u001dH\u00d6\u0081\u0004J\n\u0010\u001e\u001a\u00020\u001fH\u00d6\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006!"
    }
    d2 = {
        "Lfast/dic/dict/PaymentMethodFragmentArgs;",
        "Landroidx/navigation/NavArgs;",
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
        "toBundle",
        "Landroid/os/Bundle;",
        "toSavedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;


# instance fields
.field private final plan:Lfast/dic/dict/domain/entity/pricing/Plan;

.field private final planType:Lfast/dic/dict/models/PlanType;

.field private final time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/PaymentMethodFragmentArgs;->Companion:Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;

    return-void
.end method

.method public constructor <init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V
    .locals 1

    const-string v0, "planType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "time"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    .line 18
    iput-object p2, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->planType:Lfast/dic/dict/models/PlanType;

    .line 19
    iput-object p3, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    return-void
.end method

.method public synthetic constructor <init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 18
    sget-object p2, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 19
    sget-object p3, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->ONE_YEAR:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    .line 16
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/PaymentMethodFragmentArgs;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/PaymentMethodFragmentArgs;Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;ILjava/lang/Object;)Lfast/dic/dict/PaymentMethodFragmentArgs;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->planType:Lfast/dic/dict/models/PlanType;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/PaymentMethodFragmentArgs;->copy(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/PaymentMethodFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/PaymentMethodFragmentArgs;->Companion:Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/PaymentMethodFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/PaymentMethodFragmentArgs;->Companion:Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;->fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/PaymentMethodFragmentArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lfast/dic/dict/domain/entity/pricing/Plan;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    return-object p0
.end method

.method public final component2()Lfast/dic/dict/models/PlanType;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->planType:Lfast/dic/dict/models/PlanType;

    return-object p0
.end method

.method public final component3()Lfast/dic/dict/domain/entity/ProSubscriptionTime;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    return-object p0
.end method

.method public final copy(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)Lfast/dic/dict/PaymentMethodFragmentArgs;
    .locals 0

    const-string p0, "planType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "time"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/PaymentMethodFragmentArgs;

    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/PaymentMethodFragmentArgs;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/PaymentMethodFragmentArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/PaymentMethodFragmentArgs;

    iget-object v1, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    iget-object v3, p1, Lfast/dic/dict/PaymentMethodFragmentArgs;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->planType:Lfast/dic/dict/models/PlanType;

    iget-object v3, p1, Lfast/dic/dict/PaymentMethodFragmentArgs;->planType:Lfast/dic/dict/models/PlanType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    iget-object p1, p1, Lfast/dic/dict/PaymentMethodFragmentArgs;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPlan()Lfast/dic/dict/domain/entity/pricing/Plan;
    .locals 0

    .line 17
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    return-object p0
.end method

.method public final getPlanType()Lfast/dic/dict/models/PlanType;
    .locals 0

    .line 18
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->planType:Lfast/dic/dict/models/PlanType;

    return-object p0
.end method

.method public final getTime()Lfast/dic/dict/domain/entity/ProSubscriptionTime;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lfast/dic/dict/domain/entity/pricing/Plan;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->planType:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v1}, Lfast/dic/dict/models/PlanType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-virtual {p0}, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 7

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Lfast/dic/dict/models/PlanType;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v4, "null cannot be cast to non-null type java.io.Serializable"

    const-string v5, "null cannot be cast to non-null type android.os.Parcelable"

    const-string v6, "planType"

    if-eqz v3, :cond_0

    .line 25
    iget-object v2, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->planType:Lfast/dic/dict/models/PlanType;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 26
    :cond_0
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 27
    iget-object v2, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->planType:Lfast/dic/dict/models/PlanType;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 29
    :cond_1
    :goto_0
    const-class v2, Lfast/dic/dict/domain/entity/pricing/Plan;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v6, "plan"

    if-eqz v3, :cond_2

    .line 30
    iget-object v2, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 31
    :cond_2
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 32
    iget-object v2, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 36
    :goto_1
    const-class v2, Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string/jumbo v3, "time"

    if-eqz v1, :cond_3

    .line 37
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0

    .line 38
    :cond_3
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/io/Serializable;

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_4
    return-object v0

    .line 34
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

.method public final toSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 7

    .line 46
    new-instance v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    .line 47
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Lfast/dic/dict/models/PlanType;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v4, "null cannot be cast to non-null type java.io.Serializable"

    const-string v5, "null cannot be cast to non-null type android.os.Parcelable"

    const-string v6, "planType"

    if-eqz v3, :cond_0

    .line 48
    iget-object v2, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->planType:Lfast/dic/dict/models/PlanType;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v6, v2}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 49
    :cond_0
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->planType:Lfast/dic/dict/models/PlanType;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v6, v2}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    :cond_1
    :goto_0
    const-class v2, Lfast/dic/dict/domain/entity/pricing/Plan;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const-string v6, "plan"

    if-eqz v3, :cond_2

    .line 53
    iget-object v2, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v6, v2}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 54
    :cond_2
    const-class v3, Ljava/io/Serializable;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 55
    iget-object v2, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v6, v2}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    :goto_1
    const-class v2, Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string/jumbo v3, "time"

    if-eqz v1, :cond_3

    .line 60
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, p0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 61
    :cond_3
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/io/Serializable;

    invoke-virtual {v0, v3, p0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-object v0

    .line 57
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

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->plan:Lfast/dic/dict/domain/entity/pricing/Plan;

    iget-object v1, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->planType:Lfast/dic/dict/models/PlanType;

    iget-object p0, p0, Lfast/dic/dict/PaymentMethodFragmentArgs;->time:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PaymentMethodFragmentArgs(plan="

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
