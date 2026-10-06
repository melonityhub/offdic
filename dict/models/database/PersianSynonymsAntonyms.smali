.class public final Lfast/dic/dict/models/database/PersianSynonymsAntonyms;
.super Ljava/lang/Object;
.source "PersianSearchResultModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u000c\u0010\u0007\"\u0004\u0008\r\u0010\tR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lfast/dic/dict/models/database/PersianSynonymsAntonyms;",
        "",
        "<init>",
        "()V",
        "persianSynonymsAntonymsId",
        "",
        "getPersianSynonymsAntonymsId",
        "()Ljava/lang/Integer;",
        "setPersianSynonymsAntonymsId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "wordId",
        "getWordId",
        "setWordId",
        "synonymAntonym",
        "",
        "getSynonymAntonym",
        "()Ljava/lang/String;",
        "setSynonymAntonym",
        "(Ljava/lang/String;)V",
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
.field private persianSynonymsAntonymsId:Ljava/lang/Integer;

.field private synonymAntonym:Ljava/lang/String;

.field private wordId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPersianSynonymsAntonymsId()Ljava/lang/Integer;
    .locals 0

    .line 23
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianSynonymsAntonyms;->persianSynonymsAntonymsId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getSynonymAntonym()Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianSynonymsAntonyms;->synonymAntonym:Ljava/lang/String;

    return-object p0
.end method

.method public final getWordId()Ljava/lang/Integer;
    .locals 0

    .line 24
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianSynonymsAntonyms;->wordId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setPersianSynonymsAntonymsId(Ljava/lang/Integer;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianSynonymsAntonyms;->persianSynonymsAntonymsId:Ljava/lang/Integer;

    return-void
.end method

.method public final setSynonymAntonym(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianSynonymsAntonyms;->synonymAntonym:Ljava/lang/String;

    return-void
.end method

.method public final setWordId(Ljava/lang/Integer;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianSynonymsAntonyms;->wordId:Ljava/lang/Integer;

    return-void
.end method
