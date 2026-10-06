.class public final Lfast/dic/dict/helpers/FDSuggestions;
.super Ljava/lang/Object;
.source "FDSuggestions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDSuggestions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDSuggestions.kt\nfast/dic/dict/helpers/FDSuggestions\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,131:1\n106#2:132\n78#2,22:133\n106#2:155\n78#2,22:156\n106#2:178\n78#2,22:179\n106#2:201\n78#2,22:202\n106#2:224\n78#2,22:225\n1174#3,2:247\n*S KotlinDebug\n*F\n+ 1 FDSuggestions.kt\nfast/dic/dict/helpers/FDSuggestions\n*L\n19#1:132\n19#1:133,22\n36#1:155\n36#1:156,22\n61#1:178\n61#1:179,22\n62#1:201\n62#1:202,22\n63#1:224\n63#1:225,22\n102#1:247,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J<\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000bH\u0007b\u0010\u0008\u000c\u0012\u000c\u0008\r\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u000eJ(\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lfast/dic/dict/helpers/FDSuggestions;",
        "",
        "<init>",
        "()V",
        "getModelsFromWord",
        "Ljava/util/ArrayList;",
        "Lfast/dic/dict/models/database/ListModel;",
        "Lkotlin/collections/ArrayList;",
        "characters",
        "",
        "db",
        "Lnet/zetetic/database/sqlcipher/SQLiteDatabase;",
        "Landroid/annotation/SuppressLint;",
        "value",
        "Range",
        "getLevenshtein",
        "fdDatabaseManager",
        "Lfast/dic/dict/database/FDDatabaseManager;",
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
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLevenshtein(Ljava/lang/String;Lfast/dic/dict/database/FDDatabaseManager;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lfast/dic/dict/database/FDDatabaseManager;",
            ")",
            "Ljava/util/ArrayList<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;"
        }
    .end annotation

    const-string v0, "fdDatabaseManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Lfast/dic/dict/database/FDDatabaseManager;->getDatabase()Lnet/zetetic/database/sqlcipher/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 93
    :cond_0
    invoke-virtual {p0, p1, v0}, Lfast/dic/dict/helpers/FDSuggestions;->getModelsFromWord(Ljava/lang/String;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object p0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v1, "iterator(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "next(...)"

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lfast/dic/dict/models/database/ListModel;

    .line 96
    sget-object v3, Lfast/dic/dict/utils/Levenshtein;->INSTANCE:Lfast/dic/dict/utils/Levenshtein;

    invoke-virtual {v2}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lfast/dic/dict/utils/Levenshtein;->getLevenshteinDistance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    .line 98
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfast/dic/dict/models/database/ListModel;->setLevenshtein(Ljava/lang/Integer;)V

    .line 99
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    :cond_2
    move-object p0, v0

    check-cast p0, Ljava/util/List;

    .line 247
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_3

    new-instance p1, Lfast/dic/dict/helpers/FDSuggestions$getLevenshtein$$inlined$sortBy$1;

    invoke-direct {p1}, Lfast/dic/dict/helpers/FDSuggestions$getLevenshtein$$inlined$sortBy$1;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lfast/dic/dict/models/database/ListModel;

    .line 108
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->find(Ljava/lang/String;)Lfast/dic/dict/utils/FDLanguageWord$LanguageType;

    move-result-object v1

    .line 109
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWordId()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 107
    invoke-virtual {p2, v1, v4}, Lfast/dic/dict/database/FDDatabaseManager;->getWordMeanings(Lfast/dic/dict/utils/FDLanguageWord$LanguageType;I)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lfast/dic/dict/models/database/ListModel;->setMeanings(Ljava/util/List;)V

    .line 111
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v1, v4}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    const-string/jumbo v1, "\u060c "

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getMeanings()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    goto :goto_3

    .line 114
    :cond_5
    const-string v1, ", "

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getMeanings()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    .line 117
    :goto_3
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 121
    :cond_6
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x32

    if-lt v2, v0, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    :goto_4
    return-object p0
.end method

.method public final getModelsFromWord(Ljava/lang/String;Lnet/zetetic/database/sqlcipher/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/zetetic/database/sqlcipher/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Lfast/dic/dict/models/database/ListModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "*"

    const-string v3, "db"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_27

    .line 132
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    .line 134
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    const/16 v10, 0x20

    if-gt v8, v5, :cond_5

    if-nez v9, :cond_0

    move v11, v8

    goto :goto_1

    :cond_0
    move v11, v5

    .line 139
    :goto_1
    invoke-interface {v4, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-gt v11, v10, :cond_1

    move v11, v6

    goto :goto_2

    :cond_1
    move v11, v7

    :goto_2
    if-nez v9, :cond_3

    if-nez v11, :cond_2

    move v9, v6

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    if-nez v11, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v5, v6

    .line 154
    invoke-interface {v4, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 132
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    const-string v8, ""

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_19

    .line 22
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x64

    if-lt v5, v8, :cond_7

    goto/16 :goto_19

    .line 25
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 26
    sget-object v8, Lfast/dic/dict/utils/StringUtils;->Companion:Lfast/dic/dict/utils/StringUtils$Companion;

    const/4 v9, 0x2

    invoke-virtual {v8, v0, v9}, Lfast/dic/dict/utils/StringUtils$Companion;->prefixStringOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 27
    sget-object v11, Lfast/dic/dict/utils/StringUtils;->Companion:Lfast/dic/dict/utils/StringUtils$Companion;

    invoke-virtual {v11, v0, v9}, Lfast/dic/dict/utils/StringUtils$Companion;->suffixStringOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 29
    rem-int/lit8 v12, v5, 0x2

    if-nez v12, :cond_8

    .line 30
    sget-object v12, Lfast/dic/dict/utils/StringUtils;->Companion:Lfast/dic/dict/utils/StringUtils$Companion;

    div-int/lit8 v13, v5, 0x2

    invoke-virtual {v12, v0, v13}, Lfast/dic/dict/utils/StringUtils$Companion;->prefixStringOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 31
    sget-object v12, Lfast/dic/dict/utils/StringUtils;->Companion:Lfast/dic/dict/utils/StringUtils$Companion;

    invoke-virtual {v12, v0, v9}, Lfast/dic/dict/utils/StringUtils$Companion;->suffixStringOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 33
    :cond_8
    sget-object v12, Lfast/dic/dict/utils/StringUtils;->Companion:Lfast/dic/dict/utils/StringUtils$Companion;

    add-int/lit8 v13, v5, 0x1

    div-int/2addr v13, v9

    invoke-virtual {v12, v0, v13}, Lfast/dic/dict/utils/StringUtils$Companion;->prefixStringOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 34
    sget-object v12, Lfast/dic/dict/utils/StringUtils;->Companion:Lfast/dic/dict/utils/StringUtils$Companion;

    invoke-virtual {v12, v0, v9}, Lfast/dic/dict/utils/StringUtils$Companion;->suffixStringOf(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_4
    sget-object v12, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    .line 157
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v13

    sub-int/2addr v13, v6

    move v14, v7

    move v15, v14

    :goto_5
    move/from16 p0, v6

    if-gt v14, v13, :cond_e

    if-nez v15, :cond_9

    move v6, v14

    goto :goto_6

    :cond_9
    move v6, v13

    .line 162
    :goto_6
    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-gt v6, v10, :cond_a

    move/from16 v6, p0

    goto :goto_7

    :cond_a
    move v6, v7

    :goto_7
    if-nez v15, :cond_c

    if-nez v6, :cond_b

    move/from16 v6, p0

    move v15, v6

    goto :goto_5

    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_c
    if-nez v6, :cond_d

    goto :goto_9

    :cond_d
    add-int/lit8 v13, v13, -0x1

    :goto_8
    move/from16 v6, p0

    goto :goto_5

    :cond_e
    :goto_9
    add-int/lit8 v13, v13, 0x1

    .line 177
    invoke-interface {v4, v14, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 155
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-virtual {v12, v4}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 37
    const-string v4, "SELECT english_word AS word, english_word_id AS id FROM english_words WHERE  LENGTH(english_word) < ? AND (english_word GLOB ? OR english_word GLOB ? OR english_word GLOB ?)"

    goto :goto_a

    .line 46
    :cond_f
    const-string v4, "SELECT persian_word AS word, persian_word_id AS id FROM persian_words WHERE LENGTH(persian_word) < ? AND (persian_word GLOB ? OR persian_word GLOB ? OR persian_word GLOB ? )"

    :goto_a
    const/4 v6, 0x4

    .line 60
    :try_start_0
    new-array v6, v6, [Ljava/lang/String;

    mul-int/2addr v5, v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v7

    const/4 v5, 0x0

    if-eqz v8, :cond_16

    .line 178
    check-cast v8, Ljava/lang/CharSequence;

    .line 180
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move v13, v7

    move v14, v13

    :goto_b
    if-gt v13, v12, :cond_15

    if-nez v14, :cond_10

    move v15, v13

    goto :goto_c

    :cond_10
    move v15, v12

    .line 185
    :goto_c
    invoke-interface {v8, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-gt v15, v10, :cond_11

    move/from16 v15, p0

    goto :goto_d

    :cond_11
    move v15, v7

    :goto_d
    if-nez v14, :cond_13

    if-nez v15, :cond_12

    move/from16 v14, p0

    goto :goto_b

    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_13
    if-nez v15, :cond_14

    goto :goto_e

    :cond_14
    add-int/lit8 v12, v12, -0x1

    goto :goto_b

    :cond_15
    :goto_e
    add-int/lit8 v12, v12, 0x1

    .line 200
    invoke-interface {v8, v13, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 178
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :cond_16
    move-object v8, v5

    .line 61
    :goto_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, p0

    if-eqz v0, :cond_1d

    .line 201
    check-cast v0, Ljava/lang/CharSequence;

    .line 203
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move v12, v7

    move v13, v12

    :goto_10
    if-gt v12, v8, :cond_1c

    if-nez v13, :cond_17

    move v14, v12

    goto :goto_11

    :cond_17
    move v14, v8

    .line 208
    :goto_11
    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-gt v14, v10, :cond_18

    move/from16 v14, p0

    goto :goto_12

    :cond_18
    move v14, v7

    :goto_12
    if-nez v13, :cond_1a

    if-nez v14, :cond_19

    move/from16 v13, p0

    goto :goto_10

    :cond_19
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_1a
    if-nez v14, :cond_1b

    goto :goto_13

    :cond_1b
    add-int/lit8 v8, v8, -0x1

    goto :goto_10

    :cond_1c
    :goto_13
    add-int/lit8 v8, v8, 0x1

    .line 223
    invoke-interface {v0, v12, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_1d
    move-object v0, v5

    .line 62
    :goto_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v9

    if-eqz v11, :cond_24

    .line 224
    check-cast v11, Ljava/lang/CharSequence;

    .line 226
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v7

    move v8, v5

    :goto_15
    if-gt v5, v0, :cond_23

    if-nez v8, :cond_1e

    move v9, v5

    goto :goto_16

    :cond_1e
    move v9, v0

    .line 231
    :goto_16
    invoke-interface {v11, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-gt v9, v10, :cond_1f

    move/from16 v9, p0

    goto :goto_17

    :cond_1f
    move v9, v7

    :goto_17
    if-nez v8, :cond_21

    if-nez v9, :cond_20

    move/from16 v8, p0

    goto :goto_15

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_21
    if-nez v9, :cond_22

    goto :goto_18

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_23
    :goto_18
    add-int/lit8 v0, v0, 0x1

    .line 246
    invoke-interface {v11, v5, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v6, v2

    .line 57
    invoke-virtual {v1, v4, v6}, Lnet/zetetic/database/sqlcipher/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 71
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 73
    :cond_25
    new-instance v4, Lfast/dic/dict/models/database/ListModel;

    const v26, 0x1fffff

    const/16 v27, 0x0

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

    const/16 v25, 0x0

    invoke-direct/range {v4 .. v27}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    const-string v1, "id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Lfast/dic/dict/models/database/ListModel;->setWordId(Ljava/lang/Integer;)V

    .line 75
    const-string/jumbo v1, "word"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lfast/dic/dict/models/database/ListModel;->setWord(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_25

    .line 79
    :cond_26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_27
    :goto_19
    return-object v3
.end method
