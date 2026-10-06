.class public final Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;
.super Ljava/lang/Object;
.source "PaymentMethodFragmentArgs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/PaymentMethodFragmentArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\u0008\u0008J\u0014\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0002\u0008\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;",
        "",
        "<init>",
        "()V",
        "fromBundle",
        "Lfast/dic/dict/PaymentMethodFragmentArgs;",
        "bundle",
        "Landroid/os/Bundle;",
        "Lkotlin/jvm/JvmStatic;",
        "fromSavedStateHandle",
        "savedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/PaymentMethodFragmentArgs$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/PaymentMethodFragmentArgs;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "bundle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    const-class p0, Lfast/dic/dict/PaymentMethodFragmentArgs;

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 73
    const-string p0, "planType"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, " must implement Parcelable or Serializable or must be an Enum."

    if-eqz v0, :cond_3

    .line 74
    const-class v0, Landroid/os/Parcelable;

    const-class v2, Lfast/dic/dict/models/PlanType;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/models/PlanType;

    if-eqz p0, :cond_2

    goto :goto_1

    .line 80
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \"planType\" is marked as non-null but was passed a null value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_3
    sget-object p0, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    .line 86
    :goto_1
    const-string v0, "plan"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 87
    const-class v2, Landroid/os/Parcelable;

    const-class v3, Lfast/dic/dict/domain/entity/pricing/Plan;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_5

    const-class v4, Ljava/io/Serializable;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 90
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/domain/entity/pricing/Plan;

    .line 96
    const-string/jumbo v3, "time"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 97
    const-class v4, Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    const-class v2, Ljava/io/Serializable;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 100
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_7
    :goto_3
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    if-eqz p1, :cond_8

    goto :goto_4

    .line 103
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \"time\" is marked as non-null but was passed a null value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_9
    sget-object p1, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->ONE_YEAR:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    .line 108
    :goto_4
    new-instance v1, Lfast/dic/dict/PaymentMethodFragmentArgs;

    invoke-direct {v1, v0, p0, p1}, Lfast/dic/dict/PaymentMethodFragmentArgs;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V

    return-object v1

    .line 93
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required argument \"plan\" is missing and does not have an android:defaultValue"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/PaymentMethodFragmentArgs;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "savedStateHandle"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    const-string p0, "planType"

    invoke-virtual {p1, p0}, Landroidx/lifecycle/SavedStateHandle;->contains(Ljava/lang/String;)Z

    move-result v0

    const-string v1, " must implement Parcelable or Serializable or must be an Enum."

    if-eqz v0, :cond_3

    .line 115
    const-class v0, Landroid/os/Parcelable;

    const-class v2, Lfast/dic/dict/models/PlanType;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 116
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/models/PlanType;

    if-eqz p0, :cond_2

    goto :goto_1

    .line 121
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \"planType\" is marked as non-null but was passed a null value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 124
    :cond_3
    sget-object p0, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    .line 127
    :goto_1
    const-string v0, "plan"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 128
    const-class v2, Landroid/os/Parcelable;

    const-class v3, Lfast/dic/dict/domain/entity/pricing/Plan;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_5

    const-class v4, Ljava/io/Serializable;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 131
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_5
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/domain/entity/pricing/Plan;

    .line 137
    const-string/jumbo v3, "time"

    invoke-virtual {p1, v3}, Landroidx/lifecycle/SavedStateHandle;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 138
    const-class v4, Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_7

    const-class v2, Ljava/io/Serializable;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 141
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :cond_7
    :goto_3
    invoke-virtual {p1, v3}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    if-eqz p1, :cond_8

    goto :goto_4

    .line 144
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument \"time\" is marked as non-null but was passed a null value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :cond_9
    sget-object p1, Lfast/dic/dict/domain/entity/ProSubscriptionTime;->ONE_YEAR:Lfast/dic/dict/domain/entity/ProSubscriptionTime;

    .line 149
    :goto_4
    new-instance v1, Lfast/dic/dict/PaymentMethodFragmentArgs;

    invoke-direct {v1, v0, p0, p1}, Lfast/dic/dict/PaymentMethodFragmentArgs;-><init>(Lfast/dic/dict/domain/entity/pricing/Plan;Lfast/dic/dict/models/PlanType;Lfast/dic/dict/domain/entity/ProSubscriptionTime;)V

    return-object v1

    .line 134
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required argument \"plan\" is missing and does not have an android:defaultValue"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
