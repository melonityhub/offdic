.class public final Lfast/dic/dict/domain/billing/IntroPriceInfo;
.super Ljava/lang/Object;
.source "PurchaseListing.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000fJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\tH\u00c6\u0003JH\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001\u00a2\u0006\u0002\u0010\u001bJ\u0014\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u001f\u001a\u00020\tH\u00d6\u0081\u0004J\n\u0010 \u001a\u00020\u0003H\u00d6\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lfast/dic/dict/domain/billing/IntroPriceInfo;",
        "",
        "formattedPrice",
        "",
        "priceAmountMicros",
        "",
        "priceCurrencyCode",
        "billingPeriod",
        "recurrenceCount",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)V",
        "getFormattedPrice",
        "()Ljava/lang/String;",
        "getPriceAmountMicros",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getPriceCurrencyCode",
        "getBillingPeriod",
        "getRecurrenceCount",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Lfast/dic/dict/domain/billing/IntroPriceInfo;",
        "equals",
        "",
        "other",
        "hashCode",
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
.field private final billingPeriod:Ljava/lang/String;

.field private final formattedPrice:Ljava/lang/String;

.field private final priceAmountMicros:Ljava/lang/Long;

.field private final priceCurrencyCode:Ljava/lang/String;

.field private final recurrenceCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->formattedPrice:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceAmountMicros:Ljava/lang/Long;

    .line 27
    iput-object p3, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceCurrencyCode:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->billingPeriod:Ljava/lang/String;

    .line 29
    iput p5, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->recurrenceCount:I

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/domain/billing/IntroPriceInfo;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lfast/dic/dict/domain/billing/IntroPriceInfo;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->formattedPrice:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceAmountMicros:Ljava/lang/Long;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceCurrencyCode:Ljava/lang/String;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->billingPeriod:Ljava/lang/String;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget p5, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->recurrenceCount:I

    :cond_4
    move-object p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lfast/dic/dict/domain/billing/IntroPriceInfo;->copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Lfast/dic/dict/domain/billing/IntroPriceInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->formattedPrice:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceAmountMicros:Ljava/lang/Long;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceCurrencyCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->billingPeriod:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->recurrenceCount:I

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Lfast/dic/dict/domain/billing/IntroPriceInfo;
    .locals 0

    new-instance p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;

    invoke-direct/range {p0 .. p5}, Lfast/dic/dict/domain/billing/IntroPriceInfo;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/domain/billing/IntroPriceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/domain/billing/IntroPriceInfo;

    iget-object v1, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->formattedPrice:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/domain/billing/IntroPriceInfo;->formattedPrice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceAmountMicros:Ljava/lang/Long;

    iget-object v3, p1, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceAmountMicros:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceCurrencyCode:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceCurrencyCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->billingPeriod:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/domain/billing/IntroPriceInfo;->billingPeriod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->recurrenceCount:I

    iget p1, p1, Lfast/dic/dict/domain/billing/IntroPriceInfo;->recurrenceCount:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBillingPeriod()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->billingPeriod:Ljava/lang/String;

    return-object p0
.end method

.method public final getFormattedPrice()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->formattedPrice:Ljava/lang/String;

    return-object p0
.end method

.method public final getPriceAmountMicros()Ljava/lang/Long;
    .locals 0

    .line 26
    iget-object p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceAmountMicros:Ljava/lang/Long;

    return-object p0
.end method

.method public final getPriceCurrencyCode()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceCurrencyCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecurrenceCount()I
    .locals 0

    .line 29
    iget p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->recurrenceCount:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->formattedPrice:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceAmountMicros:Ljava/lang/Long;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceCurrencyCode:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->billingPeriod:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->recurrenceCount:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->formattedPrice:Ljava/lang/String;

    iget-object v1, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceAmountMicros:Ljava/lang/Long;

    iget-object v2, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->priceCurrencyCode:Ljava/lang/String;

    iget-object v3, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->billingPeriod:Ljava/lang/String;

    iget p0, p0, Lfast/dic/dict/domain/billing/IntroPriceInfo;->recurrenceCount:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IntroPriceInfo(formattedPrice="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", priceAmountMicros="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceCurrencyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", billingPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recurrenceCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
