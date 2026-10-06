.class public final Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;
.super Ljava/lang/Object;
.source "EnglishSearchResultModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\tR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011\"\u0004\u0008\u001c\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;",
        "",
        "<init>",
        "()V",
        "englishSynonymsAntonymsId",
        "",
        "getEnglishSynonymsAntonymsId",
        "()Ljava/lang/Integer;",
        "setEnglishSynonymsAntonymsId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "wordId",
        "getWordId",
        "setWordId",
        "definitions",
        "",
        "getDefinitions",
        "()Ljava/lang/String;",
        "setDefinitions",
        "(Ljava/lang/String;)V",
        "synonyms",
        "getSynonyms",
        "setSynonyms",
        "antonyms",
        "getAntonyms",
        "setAntonyms",
        "pos",
        "getPos",
        "setPos",
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
.field private antonyms:Ljava/lang/String;

.field private definitions:Ljava/lang/String;

.field private englishSynonymsAntonymsId:Ljava/lang/Integer;

.field private pos:Ljava/lang/String;

.field private synonyms:Ljava/lang/String;

.field private wordId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAntonyms()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->antonyms:Ljava/lang/String;

    return-object p0
.end method

.method public final getDefinitions()Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->definitions:Ljava/lang/String;

    return-object p0
.end method

.method public final getEnglishSynonymsAntonymsId()Ljava/lang/Integer;
    .locals 0

    .line 49
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->englishSynonymsAntonymsId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getPos()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->pos:Ljava/lang/String;

    return-object p0
.end method

.method public final getSynonyms()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->synonyms:Ljava/lang/String;

    return-object p0
.end method

.method public final getWordId()Ljava/lang/Integer;
    .locals 0

    .line 50
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->wordId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setAntonyms(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->antonyms:Ljava/lang/String;

    return-void
.end method

.method public final setDefinitions(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->definitions:Ljava/lang/String;

    return-void
.end method

.method public final setEnglishSynonymsAntonymsId(Ljava/lang/Integer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->englishSynonymsAntonymsId:Ljava/lang/Integer;

    return-void
.end method

.method public final setPos(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->pos:Ljava/lang/String;

    return-void
.end method

.method public final setSynonyms(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->synonyms:Ljava/lang/String;

    return-void
.end method

.method public final setWordId(Ljava/lang/Integer;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishSynonymsAntonymModel;->wordId:Ljava/lang/Integer;

    return-void
.end method
