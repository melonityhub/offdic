.class public final Lfast/dic/dict/utils/SQLResultExtKt;
.super Ljava/lang/Object;
.source "SQLResultExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a*\u0010\u0005\u001a\u00020\u0002*\u00020\u00062\u001e\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00030\u0001j\u0002`\u0008*2\u0010\u0000\"\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00030\u00012\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00030\u0001\u00a8\u0006\t"
    }
    d2 = {
        "convertResultToListModelClosure",
        "Lkotlin/Function1;",
        "Lfast/dic/dict/models/database/ListModel;",
        "",
        "",
        "toListModel",
        "Lcom/couchbase/lite/Result;",
        "closure",
        "Lfast/dic/dict/utils/convertResultToListModelClosure;",
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
.method public static final toListModel(Lcom/couchbase/lite/Result;Lkotlin/jvm/functions/Function1;)Lfast/dic/dict/models/database/ListModel;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Result;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/models/database/ListModel;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lfast/dic/dict/models/database/ListModel;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "closure"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v3, Lfast/dic/dict/models/database/ListModel;

    const v25, 0x1fffff

    const/16 v26, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v3 .. v26}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x1

    .line 10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setHistory(Ljava/lang/Boolean;)V

    .line 11
    const-string/jumbo v2, "word"

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setWord(Ljava/lang/String;)V

    .line 12
    const-string/jumbo v2, "wordId"

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/Result;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setWordId(Ljava/lang/Integer;)V

    .line 13
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setDocumentId(Ljava/lang/String;)V

    .line 14
    const-string v2, "category"

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/Result;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setCategory(Ljava/lang/Integer;)V

    .line 16
    const-string/jumbo v2, "word_id"

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/Result;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 17
    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-le v2, v4, :cond_2

    .line 18
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setWordId(Ljava/lang/Integer;)V

    .line 21
    :cond_2
    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getMeanings()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 22
    :cond_3
    invoke-interface {v1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v3, v1}, Lfast/dic/dict/models/database/ListModel;->setMeanings(Ljava/util/List;)V

    .line 24
    :cond_4
    const-string v1, "meaning"

    invoke-virtual {v0, v1}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    return-object v3

    .line 30
    :cond_6
    :goto_1
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 31
    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getMeanings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    const-string/jumbo v0, "\u060c "

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {v3, v1}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    return-object v3

    .line 32
    :cond_8
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isPersian(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 33
    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getMeanings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_9
    invoke-virtual {v3, v1}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    :cond_a
    return-object v3
.end method
