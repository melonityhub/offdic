.class public final Lfast/dic/dict/adapters/PaymentMethod;
.super Ljava/lang/Object;
.source "PaymentMethodAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0019\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0008H\u00c6\u0003J\t\u0010 \u001a\u00020\nH\u00c6\u0003J\t\u0010!\u001a\u00020\u000cH\u00c6\u0003JE\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cH\u00c6\u0001J\u0014\u0010#\u001a\u00020\u000c2\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010%\u001a\u00020&H\u00d6\u0081\u0004J\n\u0010\'\u001a\u00020\u0005H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006("
    }
    d2 = {
        "Lfast/dic/dict/adapters/PaymentMethod;",
        "",
        "planType",
        "Lfast/dic/dict/models/PlanType;",
        "price",
        "",
        "platformDescription",
        "logo",
        "Landroid/graphics/drawable/Drawable;",
        "paymentMethod",
        "Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;",
        "selected",
        "",
        "<init>",
        "(Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Z)V",
        "getPlanType",
        "()Lfast/dic/dict/models/PlanType;",
        "getPrice",
        "()Ljava/lang/String;",
        "getPlatformDescription",
        "getLogo",
        "()Landroid/graphics/drawable/Drawable;",
        "getPaymentMethod",
        "()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;",
        "getSelected",
        "()Z",
        "setSelected",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final logo:Landroid/graphics/drawable/Drawable;

.field private final paymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

.field private final planType:Lfast/dic/dict/models/PlanType;

.field private final platformDescription:Ljava/lang/String;

.field private final price:Ljava/lang/String;

.field private selected:Z


# direct methods
.method public constructor <init>(Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Z)V
    .locals 1

    const-string v0, "planType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDescription"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethod"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lfast/dic/dict/adapters/PaymentMethod;->planType:Lfast/dic/dict/models/PlanType;

    .line 14
    iput-object p2, p0, Lfast/dic/dict/adapters/PaymentMethod;->price:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lfast/dic/dict/adapters/PaymentMethod;->platformDescription:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lfast/dic/dict/adapters/PaymentMethod;->logo:Landroid/graphics/drawable/Drawable;

    .line 17
    iput-object p5, p0, Lfast/dic/dict/adapters/PaymentMethod;->paymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    .line 18
    iput-boolean p6, p0, Lfast/dic/dict/adapters/PaymentMethod;->selected:Z

    return-void
.end method

.method public synthetic constructor <init>(Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 12
    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/adapters/PaymentMethod;-><init>(Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/adapters/PaymentMethod;Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;ZILjava/lang/Object;)Lfast/dic/dict/adapters/PaymentMethod;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lfast/dic/dict/adapters/PaymentMethod;->planType:Lfast/dic/dict/models/PlanType;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lfast/dic/dict/adapters/PaymentMethod;->price:Ljava/lang/String;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lfast/dic/dict/adapters/PaymentMethod;->platformDescription:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lfast/dic/dict/adapters/PaymentMethod;->logo:Landroid/graphics/drawable/Drawable;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lfast/dic/dict/adapters/PaymentMethod;->paymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-boolean p6, p0, Lfast/dic/dict/adapters/PaymentMethod;->selected:Z

    :cond_5
    move-object p7, p5

    move p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lfast/dic/dict/adapters/PaymentMethod;->copy(Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Z)Lfast/dic/dict/adapters/PaymentMethod;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lfast/dic/dict/models/PlanType;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->planType:Lfast/dic/dict/models/PlanType;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->price:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->platformDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->logo:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final component5()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->paymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    return-object p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->selected:Z

    return p0
.end method

.method public final copy(Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Z)Lfast/dic/dict/adapters/PaymentMethod;
    .locals 7

    const-string p0, "planType"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "price"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "platformDescription"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "logo"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "paymentMethod"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lfast/dic/dict/adapters/PaymentMethod;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/adapters/PaymentMethod;-><init>(Lfast/dic/dict/models/PlanType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/adapters/PaymentMethod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/adapters/PaymentMethod;

    iget-object v1, p0, Lfast/dic/dict/adapters/PaymentMethod;->planType:Lfast/dic/dict/models/PlanType;

    iget-object v3, p1, Lfast/dic/dict/adapters/PaymentMethod;->planType:Lfast/dic/dict/models/PlanType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/adapters/PaymentMethod;->price:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/adapters/PaymentMethod;->price:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lfast/dic/dict/adapters/PaymentMethod;->platformDescription:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/adapters/PaymentMethod;->platformDescription:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lfast/dic/dict/adapters/PaymentMethod;->logo:Landroid/graphics/drawable/Drawable;

    iget-object v3, p1, Lfast/dic/dict/adapters/PaymentMethod;->logo:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lfast/dic/dict/adapters/PaymentMethod;->paymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    iget-object v3, p1, Lfast/dic/dict/adapters/PaymentMethod;->paymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->selected:Z

    iget-boolean p1, p1, Lfast/dic/dict/adapters/PaymentMethod;->selected:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getLogo()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 16
    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->logo:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getPaymentMethod()Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;
    .locals 0

    .line 17
    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->paymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    return-object p0
.end method

.method public final getPlanType()Lfast/dic/dict/models/PlanType;
    .locals 0

    .line 13
    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->planType:Lfast/dic/dict/models/PlanType;

    return-object p0
.end method

.method public final getPlatformDescription()Ljava/lang/String;
    .locals 0

    .line 15
    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->platformDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->price:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelected()Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->selected:Z

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lfast/dic/dict/adapters/PaymentMethod;->planType:Lfast/dic/dict/models/PlanType;

    invoke-virtual {v0}, Lfast/dic/dict/models/PlanType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/adapters/PaymentMethod;->price:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/adapters/PaymentMethod;->platformDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/adapters/PaymentMethod;->logo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/adapters/PaymentMethod;->paymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    invoke-virtual {v1}, Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->selected:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setSelected(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lfast/dic/dict/adapters/PaymentMethod;->selected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lfast/dic/dict/adapters/PaymentMethod;->planType:Lfast/dic/dict/models/PlanType;

    iget-object v1, p0, Lfast/dic/dict/adapters/PaymentMethod;->price:Ljava/lang/String;

    iget-object v2, p0, Lfast/dic/dict/adapters/PaymentMethod;->platformDescription:Ljava/lang/String;

    iget-object v3, p0, Lfast/dic/dict/adapters/PaymentMethod;->logo:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lfast/dic/dict/adapters/PaymentMethod;->paymentMethod:Lfast/dic/dict/adapters/SubscriptionIAPPlatformEnum;

    iget-boolean p0, p0, Lfast/dic/dict/adapters/PaymentMethod;->selected:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "PaymentMethod(planType="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", price="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", platformDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
