.class public final Lfast/dic/dict/utils/FDParseUserExtensionKt;
.super Ljava/lang/Object;
.source "FDParseUserExtension.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u000c\u0010\u0003\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\u000c\u0010\u0004\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\u0006\u0010\u0003\u001a\u00020\u0001\u001a\u0006\u0010\u0005\u001a\u00020\u0001\u001a\u000c\u0010\u0005\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "isLoggedIn",
        "",
        "Lcom/parse/ParseUser;",
        "hasFreePlan",
        "hasRemoveAdsPlan",
        "hasSubscription",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final hasFreePlan()Z
    .locals 3

    .line 26
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->isLoggedIn()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 30
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v2, v0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v2, :cond_1

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->isFree()Z

    move-result v0

    if-ne v0, v1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static final hasFreePlan(Lcom/parse/ParseUser;)Z
    .locals 2

    .line 11
    invoke-static {p0}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->isLoggedIn(Lcom/parse/ParseUser;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 15
    :cond_0
    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_1

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->isFree()Z

    move-result p0

    if-ne p0, v1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static final hasRemoveAdsPlan(Lcom/parse/ParseUser;)Z
    .locals 2

    .line 18
    invoke-static {p0}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->isLoggedIn(Lcom/parse/ParseUser;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 22
    :cond_0
    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_1

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan1InView()Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public static final hasSubscription()Z
    .locals 3

    .line 34
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->isLoggedIn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 38
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v2, v0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v2, :cond_1

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static final hasSubscription(Lcom/parse/ParseUser;)Z
    .locals 2

    .line 42
    invoke-static {p0}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->isLoggedIn(Lcom/parse/ParseUser;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 46
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    instance-of v1, p0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v1, :cond_1

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public static final isLoggedIn()Z
    .locals 1

    .line 8
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isLoggedIn(Lcom/parse/ParseUser;)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
