.class public final enum Lfast/dic/dict/domain/entity/EnglishResultOrder;
.super Ljava/lang/Enum;
.source "ResultOrderEnum.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/domain/entity/EnglishResultOrder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfast/dic/dict/domain/entity/EnglishResultOrder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0086\u0081\u0002\u0018\u0000 \u00102\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lfast/dic/dict/domain/entity/EnglishResultOrder;",
        "",
        "value",
        "",
        "key",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "getKey",
        "MEANING",
        "ENGLISH_SYNONYMS_ANTONYMS",
        "PHRASAL_VERBS",
        "COLLOCATIONS",
        "IDIOMS",
        "WORD_FAMILY",
        "Companion",
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


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lfast/dic/dict/domain/entity/EnglishResultOrder;

.field public static final enum COLLOCATIONS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

.field public static final Companion:Lfast/dic/dict/domain/entity/EnglishResultOrder$Companion;

.field public static final enum ENGLISH_SYNONYMS_ANTONYMS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

.field public static final enum IDIOMS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

.field public static final enum MEANING:Lfast/dic/dict/domain/entity/EnglishResultOrder;

.field public static final enum PHRASAL_VERBS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

.field public static final enum WORD_FAMILY:Lfast/dic/dict/domain/entity/EnglishResultOrder;


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lfast/dic/dict/domain/entity/EnglishResultOrder;
    .locals 6

    sget-object v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->MEANING:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    sget-object v1, Lfast/dic/dict/domain/entity/EnglishResultOrder;->ENGLISH_SYNONYMS_ANTONYMS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    sget-object v2, Lfast/dic/dict/domain/entity/EnglishResultOrder;->PHRASAL_VERBS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    sget-object v3, Lfast/dic/dict/domain/entity/EnglishResultOrder;->COLLOCATIONS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    sget-object v4, Lfast/dic/dict/domain/entity/EnglishResultOrder;->IDIOMS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    sget-object v5, Lfast/dic/dict/domain/entity/EnglishResultOrder;->WORD_FAMILY:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    filled-new-array/range {v0 .. v5}, [Lfast/dic/dict/domain/entity/EnglishResultOrder;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;

    const-string v1, "0"

    const-string v2, "meaings-sentences"

    const-string v3, "MEANING"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lfast/dic/dict/domain/entity/EnglishResultOrder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->MEANING:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    .line 5
    new-instance v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;

    const-string v1, "1"

    const-string v2, "synonyms-antonyms"

    const-string v3, "ENGLISH_SYNONYMS_ANTONYMS"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lfast/dic/dict/domain/entity/EnglishResultOrder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->ENGLISH_SYNONYMS_ANTONYMS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    .line 6
    new-instance v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;

    const-string v1, "2"

    const-string v2, "phrasal-verbs"

    const-string v3, "PHRASAL_VERBS"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lfast/dic/dict/domain/entity/EnglishResultOrder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->PHRASAL_VERBS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    .line 7
    new-instance v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;

    const-string v1, "3"

    const-string v2, "collocations"

    const-string v3, "COLLOCATIONS"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lfast/dic/dict/domain/entity/EnglishResultOrder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->COLLOCATIONS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    .line 8
    new-instance v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;

    const-string v1, "4"

    const-string v2, "idioms"

    const-string v3, "IDIOMS"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Lfast/dic/dict/domain/entity/EnglishResultOrder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->IDIOMS:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    .line 9
    new-instance v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;

    const-string v1, "5"

    const-string/jumbo v2, "word-family"

    const-string v3, "WORD_FAMILY"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Lfast/dic/dict/domain/entity/EnglishResultOrder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->WORD_FAMILY:Lfast/dic/dict/domain/entity/EnglishResultOrder;

    invoke-static {}, Lfast/dic/dict/domain/entity/EnglishResultOrder;->$values()[Lfast/dic/dict/domain/entity/EnglishResultOrder;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->$VALUES:[Lfast/dic/dict/domain/entity/EnglishResultOrder;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lfast/dic/dict/domain/entity/EnglishResultOrder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/domain/entity/EnglishResultOrder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->Companion:Lfast/dic/dict/domain/entity/EnglishResultOrder$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->value:Ljava/lang/String;

    iput-object p4, p0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->key:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lfast/dic/dict/domain/entity/EnglishResultOrder;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfast/dic/dict/domain/entity/EnglishResultOrder;
    .locals 1

    const-class v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/domain/entity/EnglishResultOrder;

    return-object p0
.end method

.method public static values()[Lfast/dic/dict/domain/entity/EnglishResultOrder;
    .locals 1

    sget-object v0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->$VALUES:[Lfast/dic/dict/domain/entity/EnglishResultOrder;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfast/dic/dict/domain/entity/EnglishResultOrder;

    return-object v0
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lfast/dic/dict/domain/entity/EnglishResultOrder;->value:Ljava/lang/String;

    return-object p0
.end method
