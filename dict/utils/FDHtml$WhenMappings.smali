.class public final synthetic Lfast/dic/dict/utils/FDHtml$WhenMappings;
.super Ljava/lang/Object;
.source "FDHtml.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/utils/FDHtml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lfast/dic/dict/domain/entity/EnglishResultOrder;->values()[Lfast/dic/dict/domain/entity/EnglishResultOrder;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lfast/dic/dict/domain/entity/EnglishResultOrder;->MEANING:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    invoke-virtual {v1}, Lfast/dic/dict/domain/entity/EnglishResultOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lfast/dic/dict/domain/entity/EnglishResultOrder;->ENGLISH_SYNONYMS_ANTONYMS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    invoke-virtual {v1}, Lfast/dic/dict/domain/entity/EnglishResultOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lfast/dic/dict/domain/entity/EnglishResultOrder;->PHRASAL_VERBS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    invoke-virtual {v1}, Lfast/dic/dict/domain/entity/EnglishResultOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lfast/dic/dict/domain/entity/EnglishResultOrder;->COLLOCATIONS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    invoke-virtual {v1}, Lfast/dic/dict/domain/entity/EnglishResultOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lfast/dic/dict/domain/entity/EnglishResultOrder;->IDIOMS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    invoke-virtual {v1}, Lfast/dic/dict/domain/entity/EnglishResultOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lfast/dic/dict/domain/entity/EnglishResultOrder;->WORD_FAMILY:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    invoke-virtual {v1}, Lfast/dic/dict/domain/entity/EnglishResultOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sput-object v0, Lfast/dic/dict/utils/FDHtml$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
