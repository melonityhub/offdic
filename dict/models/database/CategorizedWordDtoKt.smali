.class public final Lfast/dic/dict/models/database/CategorizedWordDtoKt;
.super Ljava/lang/Object;
.source "CategorizedWordDto.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCategorizedWordDto.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategorizedWordDto.kt\nfast/dic/dict/models/database/CategorizedWordDtoKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,27:1\n1739#2:28\n1814#2,3:29\n*S KotlinDebug\n*F\n+ 1 CategorizedWordDto.kt\nfast/dic/dict/models/database/CategorizedWordDtoKt\n*L\n24#1:28\n24#1:29,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toListModel",
        "Lfast/dic/dict/models/database/ListModel;",
        "Lfast/dic/dict/models/database/CategorizedWordDto;",
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
.method public static final toListModel(Lfast/dic/dict/models/database/CategorizedWordDto;)Lfast/dic/dict/models/database/ListModel;
    .locals 25

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Lfast/dic/dict/models/database/CategorizedWordDto;->getWordId()J

    move-result-wide v2

    long-to-int v0, v2

    .line 22
    invoke-virtual {v1}, Lfast/dic/dict/models/database/CategorizedWordDto;->getWord()Ljava/lang/String;

    move-result-object v20

    .line 23
    invoke-virtual {v1}, Lfast/dic/dict/models/database/CategorizedWordDto;->getMeaning()Ljava/lang/String;

    move-result-object v16

    .line 24
    invoke-virtual {v1}, Lfast/dic/dict/models/database/CategorizedWordDto;->getMeaning()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "||"

    aput-object v5, v4, v2

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Ljava/lang/Iterable;

    .line 28
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 29
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 30
    check-cast v4, Ljava/lang/String;

    .line 24
    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    check-cast v3, Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v7, v3

    .line 25
    new-instance v2, Lfast/dic/dict/utils/FDCategory;

    invoke-direct {v2}, Lfast/dic/dict/utils/FDCategory;-><init>()V

    invoke-virtual {v1}, Lfast/dic/dict/models/database/CategorizedWordDto;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lfast/dic/dict/utils/FDCategory;->findLanguage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 20
    new-instance v1, Lfast/dic/dict/models/database/ListModel;

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v23, 0x1abfdb

    const/16 v24, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 20
    invoke-direct/range {v1 .. v24}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
