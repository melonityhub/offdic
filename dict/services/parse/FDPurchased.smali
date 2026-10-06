.class public final Lfast/dic/dict/services/parse/FDPurchased;
.super Ljava/lang/Object;
.source "FDPurchased.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDPurchased.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDPurchased.kt\nfast/dic/dict/services/parse/FDPurchased\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,149:1\n106#2:150\n78#2,22:151\n106#2:173\n78#2,22:174\n106#2:196\n78#2,22:197\n106#2:219\n78#2,22:220\n106#2:242\n78#2,22:243\n106#2:265\n78#2,22:266\n106#2:288\n78#2,22:289\n106#2:311\n78#2,22:312\n106#2:334\n78#2,22:335\n106#2:357\n78#2,22:358\n*S KotlinDebug\n*F\n+ 1 FDPurchased.kt\nfast/dic/dict/services/parse/FDPurchased\n*L\n25#1:150\n25#1:151,22\n26#1:173\n26#1:174,22\n55#1:196\n55#1:197,22\n57#1:219\n57#1:220,22\n102#1:242\n102#1:243,22\n104#1:265\n104#1:266,22\n113#1:288\n113#1:289,22\n115#1:311\n115#1:312,22\n124#1:334\n124#1:335,22\n126#1:357\n126#1:358,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\tJ\u0006\u0010\r\u001a\u00020\tJ\u0006\u0010\u000e\u001a\u00020\u000bJ\u0006\u0010\u000f\u001a\u00020\tJ\u0006\u0010\u0010\u001a\u00020\tJ\u0006\u0010\u0011\u001a\u00020\tJ\u0006\u0010\u0012\u001a\u00020\tJ\u0006\u0010\u0013\u001a\u00020\u000bJ\u0006\u0010\u0014\u001a\u00020\u000bJ\u0006\u0010\u0015\u001a\u00020\u000bJ\u0010\u0010\u0016\u001a\u00020\t2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lfast/dic/dict/services/parse/FDPurchased;",
        "",
        "mContext",
        "Landroid/content/Context;",
        "mAndroidId",
        "",
        "<init>",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "PurchasedIAP",
        "",
        "IsPurchasedIAP",
        "",
        "PurchasedPlan1",
        "RemovePurchasedPlan1",
        "IsPurchasedPlan1",
        "PurchasedPlan2",
        "PurchasedPlan3",
        "RemovePurchasedPlan2",
        "RemovePurchasedPlan3",
        "IsPurchasedPlan2",
        "IsPurchasedPlan3",
        "IsPreviouslyPurchased",
        "ValidateUserPurchase",
        "fdParseUser",
        "Lfast/dic/dict/services/parse/FDParseUser;",
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
.field private final mAndroidId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lfast/dic/dict/services/parse/FDPurchased;->mAndroidId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final IsPreviouslyPurchased()Z
    .locals 8

    .line 119
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    iget-object v1, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getIAP()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 120
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    .line 123
    :cond_0
    sget-object v2, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lfast/dic/dict/utils/Util;->getEncryptedAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 334
    check-cast p0, Ljava/lang/CharSequence;

    .line 336
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v1

    move v5, v4

    :goto_0
    const/16 v6, 0x20

    if-gt v4, v2, :cond_6

    if-nez v5, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v2

    .line 341
    :goto_1
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v1

    :goto_2
    if-nez v5, :cond_4

    if-nez v7, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    :goto_3
    add-int/2addr v2, v3

    .line 356
    invoke-interface {p0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 359
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v3

    move v4, v1

    move v5, v4

    :goto_4
    if-gt v4, v2, :cond_c

    if-nez v5, :cond_7

    move v7, v4

    goto :goto_5

    :cond_7
    move v7, v2

    .line 364
    :goto_5
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_8

    move v7, v3

    goto :goto_6

    :cond_8
    move v7, v1

    :goto_6
    if-nez v5, :cond_a

    if-nez v7, :cond_9

    move v5, v3

    goto :goto_4

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    if-nez v7, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_c
    :goto_7
    add-int/2addr v2, v3

    .line 379
    invoke-interface {v0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_d
    :goto_8
    return v1
.end method

.method public final IsPurchasedIAP()Z
    .locals 8

    .line 19
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    iget-object v1, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getIAP()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 20
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, p0, Lfast/dic/dict/services/parse/FDPurchased;->mAndroidId:Ljava/lang/String;

    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_8

    .line 24
    :cond_1
    sget-object v2, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lfast/dic/dict/utils/Util;->getEncryptedAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 150
    check-cast p0, Ljava/lang/CharSequence;

    .line 152
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v1

    move v5, v4

    :goto_0
    const/16 v6, 0x20

    if-gt v4, v2, :cond_7

    if-nez v5, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v2

    .line 157
    :goto_1
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    if-nez v5, :cond_5

    if-nez v7, :cond_4

    move v5, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_7
    :goto_3
    add-int/2addr v2, v3

    .line 172
    invoke-interface {p0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v3

    move v4, v1

    move v5, v4

    :goto_4
    if-gt v4, v2, :cond_d

    if-nez v5, :cond_8

    move v7, v4

    goto :goto_5

    :cond_8
    move v7, v2

    .line 180
    :goto_5
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_9

    move v7, v3

    goto :goto_6

    :cond_9
    move v7, v1

    :goto_6
    if-nez v5, :cond_b

    if-nez v7, :cond_a

    move v5, v3

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    if-nez v7, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_d
    :goto_7
    add-int/2addr v2, v3

    .line 195
    invoke-interface {v0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_8
    return v1
.end method

.method public final IsPurchasedPlan1()Z
    .locals 8

    .line 50
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    iget-object v1, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getIAPPlan1()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 51
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, p0, Lfast/dic/dict/services/parse/FDPurchased;->mAndroidId:Ljava/lang/String;

    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_8

    .line 54
    :cond_1
    sget-object v2, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lfast/dic/dict/utils/Util;->getEncryptedAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 196
    check-cast p0, Ljava/lang/CharSequence;

    .line 198
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v1

    move v5, v4

    :goto_0
    const/16 v6, 0x20

    if-gt v4, v2, :cond_7

    if-nez v5, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v2

    .line 203
    :goto_1
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    if-nez v5, :cond_5

    if-nez v7, :cond_4

    move v5, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_7
    :goto_3
    add-int/2addr v2, v3

    .line 218
    invoke-interface {p0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 221
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v3

    move v4, v1

    move v5, v4

    :goto_4
    if-gt v4, v2, :cond_d

    if-nez v5, :cond_8

    move v7, v4

    goto :goto_5

    :cond_8
    move v7, v2

    .line 226
    :goto_5
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_9

    move v7, v3

    goto :goto_6

    :cond_9
    move v7, v1

    :goto_6
    if-nez v5, :cond_b

    if-nez v7, :cond_a

    move v5, v3

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    if-nez v7, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_d
    :goto_7
    add-int/2addr v2, v3

    .line 241
    invoke-interface {v0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_8
    return v1
.end method

.method public final IsPurchasedPlan2()Z
    .locals 8

    .line 97
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    iget-object v1, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getIAPPlan2()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 98
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, p0, Lfast/dic/dict/services/parse/FDPurchased;->mAndroidId:Ljava/lang/String;

    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_8

    .line 101
    :cond_1
    sget-object v2, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lfast/dic/dict/utils/Util;->getEncryptedAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 242
    check-cast p0, Ljava/lang/CharSequence;

    .line 244
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v1

    move v5, v4

    :goto_0
    const/16 v6, 0x20

    if-gt v4, v2, :cond_7

    if-nez v5, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v2

    .line 249
    :goto_1
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    if-nez v5, :cond_5

    if-nez v7, :cond_4

    move v5, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_7
    :goto_3
    add-int/2addr v2, v3

    .line 264
    invoke-interface {p0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v3

    move v4, v1

    move v5, v4

    :goto_4
    if-gt v4, v2, :cond_d

    if-nez v5, :cond_8

    move v7, v4

    goto :goto_5

    :cond_8
    move v7, v2

    .line 272
    :goto_5
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_9

    move v7, v3

    goto :goto_6

    :cond_9
    move v7, v1

    :goto_6
    if-nez v5, :cond_b

    if-nez v7, :cond_a

    move v5, v3

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    if-nez v7, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_d
    :goto_7
    add-int/2addr v2, v3

    .line 287
    invoke-interface {v0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_8
    return v1
.end method

.method public final IsPurchasedPlan3()Z
    .locals 8

    .line 108
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    iget-object v1, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getIAPPlan3()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 109
    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, p0, Lfast/dic/dict/services/parse/FDPurchased;->mAndroidId:Ljava/lang/String;

    if-eqz v2, :cond_e

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_8

    .line 112
    :cond_1
    sget-object v2, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Lfast/dic/dict/utils/Util;->getEncryptedAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 288
    check-cast p0, Ljava/lang/CharSequence;

    .line 290
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v4, v1

    move v5, v4

    :goto_0
    const/16 v6, 0x20

    if-gt v4, v2, :cond_7

    if-nez v5, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v2

    .line 295
    :goto_1
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_3

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v1

    :goto_2
    if-nez v5, :cond_5

    if-nez v7, :cond_4

    move v5, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_7
    :goto_3
    add-int/2addr v2, v3

    .line 310
    invoke-interface {p0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v3

    move v4, v1

    move v5, v4

    :goto_4
    if-gt v4, v2, :cond_d

    if-nez v5, :cond_8

    move v7, v4

    goto :goto_5

    :cond_8
    move v7, v2

    .line 318
    :goto_5
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_9

    move v7, v3

    goto :goto_6

    :cond_9
    move v7, v1

    :goto_6
    if-nez v5, :cond_b

    if-nez v7, :cond_a

    move v5, v3

    goto :goto_4

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    if-nez v7, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_d
    :goto_7
    add-int/2addr v2, v3

    .line 333
    invoke-interface {v0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_e
    :goto_8
    return v1
.end method

.method public final PurchasedIAP()V
    .locals 2

    .line 12
    :try_start_0
    sget-object v0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    iget-object v1, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lfast/dic/dict/utils/Util;->getEncryptedAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v1, Lfast/dic/dict/database/LocalStorage;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lfast/dic/dict/database/LocalStorage;->storeIAP(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final PurchasedPlan1()V
    .locals 2

    .line 31
    :try_start_0
    sget-object v0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    iget-object v1, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lfast/dic/dict/utils/Util;->getEncryptedAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Lfast/dic/dict/database/LocalStorage;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lfast/dic/dict/database/LocalStorage;->storeIAPPlan1(Ljava/lang/String;)V

    .line 34
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    const-string v0, "isPurchased"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->addAttribute(Ljava/lang/String;)V

    .line 35
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    const-string v0, "notPurchased"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final PurchasedPlan2()V
    .locals 2

    .line 62
    :try_start_0
    sget-object v0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    iget-object v1, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lfast/dic/dict/utils/Util;->getEncryptedAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Lfast/dic/dict/database/LocalStorage;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lfast/dic/dict/database/LocalStorage;->storeIAPPlan2(Ljava/lang/String;)V

    .line 65
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    const-string v0, "isPurchased"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->addAttribute(Ljava/lang/String;)V

    .line 66
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    const-string v0, "notPurchased"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final PurchasedPlan3()V
    .locals 2

    .line 73
    :try_start_0
    sget-object v0, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    iget-object v1, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lfast/dic/dict/utils/Util;->getEncryptedAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Lfast/dic/dict/database/LocalStorage;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lfast/dic/dict/database/LocalStorage;->storeIAPPlan3(Ljava/lang/String;)V

    .line 76
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    const-string v0, "isPurchased"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->addAttribute(Ljava/lang/String;)V

    .line 77
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    const-string v0, "notPurchased"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final RemovePurchasedPlan1()V
    .locals 1

    .line 42
    :try_start_0
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->removeIAPPlan1()V

    .line 43
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    const-string v0, "notPurchased"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->addAttribute(Ljava/lang/String;)V

    .line 44
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    const-string v0, "isPurchased"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final RemovePurchasedPlan2()V
    .locals 1

    .line 83
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->removeIAPPlan2()V

    .line 85
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    const-string v0, "notPurchased"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->addAttribute(Ljava/lang/String;)V

    .line 86
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    const-string v0, "isPurchased"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public final RemovePurchasedPlan3()V
    .locals 1

    .line 90
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    iget-object p0, p0, Lfast/dic/dict/services/parse/FDPurchased;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->removeIAPPlan3()V

    .line 92
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    const-string v0, "notPurchased"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->addAttribute(Ljava/lang/String;)V

    .line 93
    sget-object p0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    const-string v0, "isPurchased"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public final ValidateUserPurchase(Lfast/dic/dict/services/parse/FDParseUser;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_2

    .line 133
    :cond_0
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan1InView()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->IsPurchasedPlan1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->PurchasedPlan1()V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan1InView()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->IsPurchasedPlan1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->RemovePurchasedPlan1()V

    .line 138
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2InView()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->IsPurchasedPlan2()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->PurchasedPlan2()V

    goto :goto_1

    .line 140
    :cond_3
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2InView()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->IsPurchasedPlan2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->RemovePurchasedPlan2()V

    .line 143
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan3InView()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->IsPurchasedPlan3()Z

    move-result v0

    if-nez v0, :cond_5

    .line 144
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->PurchasedPlan3()V

    return-void

    .line 145
    :cond_5
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan3InView()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->IsPurchasedPlan3()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 146
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->RemovePurchasedPlan3()V

    :cond_6
    :goto_2
    return-void
.end method
