.class public final Lfast/dic/dict/services/parse/FDParseUser;
.super Lcom/parse/ParseUser;
.source "FDParseUser.kt"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_User"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0008\u0007\u001a\u0002\u0008\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010(\u001a\u00020\rJ\u0006\u0010)\u001a\u00020\rJ\u0006\u0010*\u001a\u00020\rJ\u0006\u0010+\u001a\u00020\rJ\u0006\u0010,\u001a\u00020\rJ\u0006\u0010-\u001a\u00020\rR(\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00068F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR0\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000f2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000f8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R0\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000f2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000f8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0012\"\u0004\u0008\u0017\u0010\u0014R\u0011\u0010\u0018\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u000eR\u0011\u0010\u001a\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u000eR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010 \u001a\u0004\u0018\u00010\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u001fR\u0011\u0010\"\u001a\u00020#8F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0011\u0010&\u001a\u00020#8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010%\u00ca\u0001\u000c\u0008/\u0012\u0008\u0008\u0005\u0012\u0004\u0008\u0008(0\u00a8\u0006."
    }
    d2 = {
        "Lfast/dic/dict/services/parse/FDParseUser;",
        "Lcom/parse/ParseUser;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "value",
        "",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "isDisabled",
        "",
        "()Z",
        "",
        "persianResultsOrderBy",
        "getPersianResultsOrderBy",
        "()Ljava/util/List;",
        "setPersianResultsOrderBy",
        "(Ljava/util/List;)V",
        "englishResultsOrderBy",
        "getEnglishResultsOrderBy",
        "setEnglishResultsOrderBy",
        "emailVerified",
        "getEmailVerified",
        "hasPlan1",
        "getHasPlan1",
        "hasPlan2ExpireDate",
        "Ljava/util/Date;",
        "getHasPlan2ExpireDate",
        "()Ljava/util/Date;",
        "hasPlan3ExpireDate",
        "getHasPlan3ExpireDate",
        "translatorSearchedWords",
        "",
        "getTranslatorSearchedWords",
        "()I",
        "translatorMaxLength",
        "getTranslatorMaxLength",
        "removedAds",
        "hasPlan1InView",
        "hasPlan2InView",
        "hasPlan2Or3",
        "hasPlan3InView",
        "isFree",
        "app",
        "Lcom/parse/ParseClassName;",
        "_User"
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
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/parse/ParseUser;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmailVerified()Z
    .locals 1

    .line 60
    const-string v0, "emailVerified"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/parse/FDParseUser;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getEnglishResultsOrderBy()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 43
    const-string v1, "englishResultsOrderBy"

    invoke-virtual {p0, v1}, Lfast/dic/dict/services/parse/FDParseUser;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lfast/dic/dict/const/ConfigConstKt;->getDEFAULT_ENGLISH_RESULT_ORDER_BY()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 45
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getHasPlan1()Z
    .locals 1

    .line 62
    const-string v0, "hasPlan1"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/parse/FDParseUser;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final getHasPlan2ExpireDate()Ljava/util/Date;
    .locals 1

    .line 64
    const-string v0, "hasPlan2ExpireDate"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/parse/FDParseUser;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getHasPlan3ExpireDate()Ljava/util/Date;
    .locals 1

    .line 67
    const-string v0, "hasPlan3ExpireDate"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/parse/FDParseUser;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/parse/FDParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPersianResultsOrderBy()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 24
    const-string v1, "persianResultsOrderBy"

    invoke-virtual {p0, v1}, Lfast/dic/dict/services/parse/FDParseUser;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lfast/dic/dict/const/ConfigConstKt;->getDEFAULT_PERSIAN_RESULT_ORDER_BY()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 26
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getTranslatorMaxLength()I
    .locals 1

    .line 72
    const-string/jumbo v0, "translatorMaxLength"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/parse/FDParseUser;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getTranslatorSearchedWords()I
    .locals 1

    .line 70
    const-string/jumbo v0, "translatorSearchedWords"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/parse/FDParseUser;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final hasPlan1InView()Z
    .locals 2

    .line 78
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 79
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->getHasPlan1()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public final hasPlan2InView()Z
    .locals 2

    .line 83
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 84
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->getHasPlan2ExpireDate()Ljava/util/Date;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return p0

    .line 88
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->getHasPlan2ExpireDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public final hasPlan2Or3()Z
    .locals 1

    .line 92
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2InView()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan3InView()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hasPlan3InView()Z
    .locals 2

    .line 96
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 97
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->getHasPlan3ExpireDate()Ljava/util/Date;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return p0

    .line 101
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->getHasPlan3ExpireDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method public final isDisabled()Z
    .locals 1

    .line 19
    const-string v0, "isDisabled"

    invoke-virtual {p0, v0}, Lfast/dic/dict/services/parse/FDParseUser;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isFree()Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan1InView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2InView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan3InView()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removedAds()Z
    .locals 0

    .line 75
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->isFree()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final setEnglishResultsOrderBy(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "englishResultsOrderBy"

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lfast/dic/dict/const/ConfigConstKt;->getDEFAULT_ENGLISH_RESULT_ORDER_BY()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lfast/dic/dict/services/parse/FDParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, v1, p1}, Lfast/dic/dict/services/parse/FDParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    :goto_0
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->saveInBackground()Lcom/parse/boltsinternal/Task;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lfast/dic/dict/services/parse/FDParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setPersianResultsOrderBy(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "persianResultsOrderBy"

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lfast/dic/dict/const/ConfigConstKt;->getDEFAULT_PERSIAN_RESULT_ORDER_BY()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lfast/dic/dict/services/parse/FDParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, v1, p1}, Lfast/dic/dict/services/parse/FDParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    :goto_0
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->saveInBackground()Lcom/parse/boltsinternal/Task;

    return-void
.end method
