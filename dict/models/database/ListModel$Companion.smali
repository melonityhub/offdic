.class public final Lfast/dic/dict/models/database/ListModel$Companion;
.super Ljava/lang/Object;
.source "ListModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/models/database/ListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J2\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\"\u0010\u0008\u001a\u001e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0012\u000e\u0012\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r\u0018\u00010\u000c0\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lfast/dic/dict/models/database/ListModel$Companion;",
        "",
        "<init>",
        "()V",
        "convert",
        "Lfast/dic/dict/models/database/ListModel;",
        "result",
        "Lcom/couchbase/lite/Result;",
        "meaningsClosure",
        "Lkotlin/Function2;",
        "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
        "",
        "",
        "",
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

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/models/database/ListModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final convert(Lcom/couchbase/lite/Result;Lkotlin/jvm/functions/Function2;)Lfast/dic/dict/models/database/ListModel;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Result;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/utils/FDLanguageWord$LanguageType;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lfast/dic/dict/models/database/ListModel;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "result"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "meaningsClosure"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
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

    .line 40
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setHistory(Ljava/lang/Boolean;)V

    .line 41
    const-string/jumbo v2, "word"

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setWord(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v2, "wordId"

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/Result;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setWordId(Ljava/lang/Integer;)V

    .line 43
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setDocumentId(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v2, "word_id"

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/Result;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 45
    const-string v4, "category"

    invoke-virtual {v0, v4}, Lcom/couchbase/lite/Result;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfast/dic/dict/models/database/ListModel;->setCategory(Ljava/lang/Integer;)V

    .line 46
    const-string v4, "isTranslator"

    invoke-virtual {v0, v4}, Lcom/couchbase/lite/Result;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfast/dic/dict/models/database/ListModel;->setTranslator(Ljava/lang/Boolean;)V

    .line 48
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

    .line 49
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/models/database/ListModel;->setWordId(Ljava/lang/Integer;)V

    .line 52
    :cond_2
    const-string v2, "meaning"

    invoke-virtual {v0, v2}, Lcom/couchbase/lite/Result;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->find(Ljava/lang/String;)Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    move-result-object v0

    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 53
    invoke-virtual {v3, v0}, Lfast/dic/dict/models/database/ListModel;->setMeanings(Ljava/util/List;)V

    .line 56
    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 57
    :cond_3
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 58
    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getMeanings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

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

    :cond_4
    invoke-virtual {v3, v1}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    return-object v3

    .line 59
    :cond_5
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isPersian(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60
    invoke-virtual {v3}, Lfast/dic/dict/models/database/ListModel;->getMeanings()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

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

    :cond_6
    invoke-virtual {v3, v1}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    :cond_7
    return-object v3
.end method
