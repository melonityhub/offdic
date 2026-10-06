.class public final Lfast/dic/dict/helpers/database/FDResultLabel;
.super Ljava/lang/Object;
.source "FDResultLabel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDResultLabel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDResultLabel.kt\nfast/dic/dict/helpers/database/FDResultLabel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n2068#2:95\n2068#2,2:96\n2069#2:98\n2068#2:99\n2068#2,2:100\n2069#2:102\n*S KotlinDebug\n*F\n+ 1 FDResultLabel.kt\nfast/dic/dict/helpers/database/FDResultLabel\n*L\n30#1:95\n32#1:96,2\n30#1:98\n68#1:99\n70#1:100,2\n68#1:102\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u000c\u0008\u0001\u0010\u0002\u001a\u00020\u0003:\u0002\u0008\u0004\u001a\u0002\u0008\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0003J\u0010\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u000f2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014R#\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u0092\u0002\u0002\u0008\u0004\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0006\u00a8\u0006\u0015"
    }
    d2 = {
        "Lfast/dic/dict/helpers/database/FDResultLabel;",
        "",
        "context",
        "Landroid/content/Context;",
        "Ldagger/hilt/android/qualifiers/ApplicationContext;",
        "<init>",
        "(Landroid/content/Context;)V",
        "Ljavax/inject/Inject;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "updateContext",
        "",
        "newContext",
        "getMeaningLabelEnglish",
        "",
        "englishSearchResult",
        "Lfast/dic/dict/models/database/EnglishSearchResultModel;",
        "getMeaningLabelPersian",
        "persianSearchResult",
        "Lfast/dic/dict/models/database/PersianSearchResultModel;",
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
.field private context:Landroid/content/Context;
    .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 10
    iget-object p0, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getMeaningLabelEnglish(Lfast/dic/dict/models/database/EnglishSearchResultModel;)Ljava/lang/String;
    .locals 6

    .line 16
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    iget-object p0, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    sget p1, Lfast/dic/dict/R$string;->results_numbers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 28
    :cond_1
    invoke-virtual {p1}, Lfast/dic/dict/models/database/EnglishSearchResultModel;->getMeanings()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 30
    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    .line 95
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfast/dic/dict/models/database/EnglishMeaningModel;

    add-int/lit8 v1, v1, 0x1

    .line 32
    invoke-virtual {v3}, Lfast/dic/dict/models/database/EnglishMeaningModel;->getSentenses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v3, Ljava/lang/Iterable;

    .line 96
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfast/dic/dict/models/database/SentenseModel;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_4
    const-string p1, " "

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 38
    iget-object v4, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    sget v5, Lfast/dic/dict/R$string;->results_meaning:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-le v1, v3, :cond_6

    .line 42
    iget-object v1, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    sget v4, Lfast/dic/dict/R$string;->results_meanings:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-ne v2, v3, :cond_7

    .line 46
    iget-object p1, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    sget v1, Lfast/dic/dict/R$string;->results_sentence:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    if-le v2, v3, :cond_8

    .line 50
    iget-object p0, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    sget p1, Lfast/dic/dict/R$string;->results_sentences:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v0
.end method

.method public final getMeaningLabelPersian(Lfast/dic/dict/models/database/PersianSearchResultModel;)Ljava/lang/String;
    .locals 6

    .line 59
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lfast/dic/dict/models/database/PersianSearchResultModel;->getWordDetails()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 68
    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    .line 99
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfast/dic/dict/models/database/PersianWordDetail;

    add-int/lit8 v1, v1, 0x1

    .line 70
    invoke-virtual {v3}, Lfast/dic/dict/models/database/PersianWordDetail;->getSentenses()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    check-cast v3, Ljava/lang/Iterable;

    .line 100
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfast/dic/dict/models/database/SentenseModel;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_3
    const-string p1, " "

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 76
    iget-object v4, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    sget v5, Lfast/dic/dict/R$string;->results_meaning:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-le v1, v3, :cond_5

    .line 80
    iget-object v1, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    sget v4, Lfast/dic/dict/R$string;->results_meanings:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-ne v2, v3, :cond_6

    .line 84
    iget-object p1, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    sget v1, Lfast/dic/dict/R$string;->results_sentence:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    if-le v2, v3, :cond_7

    .line 88
    iget-object p0, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    sget p1, Lfast/dic/dict/R$string;->results_sentences:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    return-void
.end method

.method public final updateContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lfast/dic/dict/helpers/database/FDResultLabel;->context:Landroid/content/Context;

    return-void
.end method
