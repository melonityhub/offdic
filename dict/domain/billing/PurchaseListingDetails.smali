.class public final Lfast/dic/dict/domain/billing/PurchaseListingDetails;
.super Ljava/lang/Object;
.source "PurchaseListing.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\\\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010!J\u0014\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010%\u001a\u00020&H\u00d6\u0081\u0004J\n\u0010\'\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000fR\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006("
    }
    d2 = {
        "Lfast/dic/dict/domain/billing/PurchaseListingDetails;",
        "",
        "productId",
        "",
        "title",
        "description",
        "formattedPrice",
        "priceAmountMicros",
        "",
        "priceCurrencyCode",
        "subscription",
        "Lfast/dic/dict/domain/billing/SubscriptionInfo;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lfast/dic/dict/domain/billing/SubscriptionInfo;)V",
        "getProductId",
        "()Ljava/lang/String;",
        "getTitle",
        "getDescription",
        "getFormattedPrice",
        "getPriceAmountMicros",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getPriceCurrencyCode",
        "getSubscription",
        "()Lfast/dic/dict/domain/billing/SubscriptionInfo;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lfast/dic/dict/domain/billing/SubscriptionInfo;)Lfast/dic/dict/domain/billing/PurchaseListingDetails;",
        "equals",
        "",
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
.field private final description:Ljava/lang/String;

.field private final formattedPrice:Ljava/lang/String;

.field private final priceAmountMicros:Ljava/lang/Long;

.field private final priceCurrencyCode:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final subscription:Lfast/dic/dict/domain/billing/SubscriptionInfo;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lfast/dic/dict/domain/billing/SubscriptionInfo;)V
    .locals 1

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->productId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->title:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->description:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->formattedPrice:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceAmountMicros:Ljava/lang/Long;

    .line 9
    iput-object p6, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceCurrencyCode:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->subscription:Lfast/dic/dict/domain/billing/SubscriptionInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lfast/dic/dict/domain/billing/SubscriptionInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 3
    invoke-direct/range {v1 .. v8}, Lfast/dic/dict/domain/billing/PurchaseListingDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lfast/dic/dict/domain/billing/SubscriptionInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/domain/billing/PurchaseListingDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lfast/dic/dict/domain/billing/SubscriptionInfo;ILjava/lang/Object;)Lfast/dic/dict/domain/billing/PurchaseListingDetails;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->productId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->title:Ljava/lang/String;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->description:Ljava/lang/String;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->formattedPrice:Ljava/lang/String;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-object p5, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceAmountMicros:Ljava/lang/Long;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-object p6, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceCurrencyCode:Ljava/lang/String;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-object p7, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->subscription:Lfast/dic/dict/domain/billing/SubscriptionInfo;

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p9}, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lfast/dic/dict/domain/billing/SubscriptionInfo;)Lfast/dic/dict/domain/billing/PurchaseListingDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->formattedPrice:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceAmountMicros:Ljava/lang/Long;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceCurrencyCode:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Lfast/dic/dict/domain/billing/SubscriptionInfo;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->subscription:Lfast/dic/dict/domain/billing/SubscriptionInfo;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lfast/dic/dict/domain/billing/SubscriptionInfo;)Lfast/dic/dict/domain/billing/PurchaseListingDetails;
    .locals 8

    const-string p0, "productId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "title"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "description"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lfast/dic/dict/domain/billing/PurchaseListingDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lfast/dic/dict/domain/billing/SubscriptionInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/domain/billing/PurchaseListingDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/domain/billing/PurchaseListingDetails;

    iget-object v1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->productId:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->productId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->title:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->description:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->formattedPrice:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->formattedPrice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceAmountMicros:Ljava/lang/Long;

    iget-object v3, p1, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceAmountMicros:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceCurrencyCode:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceCurrencyCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->subscription:Lfast/dic/dict/domain/billing/SubscriptionInfo;

    iget-object p1, p1, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->subscription:Lfast/dic/dict/domain/billing/SubscriptionInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getFormattedPrice()Ljava/lang/String;
    .locals 0

    .line 7
    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->formattedPrice:Ljava/lang/String;

    return-object p0
.end method

.method public final getPriceAmountMicros()Ljava/lang/Long;
    .locals 0

    .line 8
    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceAmountMicros:Ljava/lang/Long;

    return-object p0
.end method

.method public final getPriceCurrencyCode()Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceCurrencyCode:Ljava/lang/String;

    return-object p0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 0

    .line 4
    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSubscription()Lfast/dic/dict/domain/billing/SubscriptionInfo;
    .locals 0

    .line 10
    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->subscription:Lfast/dic/dict/domain/billing/SubscriptionInfo;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->title:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->productId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->formattedPrice:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceAmountMicros:Ljava/lang/Long;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceCurrencyCode:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->subscription:Lfast/dic/dict/domain/billing/SubscriptionInfo;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lfast/dic/dict/domain/billing/SubscriptionInfo;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->productId:Ljava/lang/String;

    iget-object v1, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->title:Ljava/lang/String;

    iget-object v2, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->description:Ljava/lang/String;

    iget-object v3, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->formattedPrice:Ljava/lang/String;

    iget-object v4, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceAmountMicros:Ljava/lang/Long;

    iget-object v5, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->priceCurrencyCode:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/domain/billing/PurchaseListingDetails;->subscription:Lfast/dic/dict/domain/billing/SubscriptionInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PurchaseListingDetails(productId="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", title="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", formattedPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceAmountMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceCurrencyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscription="

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
