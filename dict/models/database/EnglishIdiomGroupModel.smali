.class public final Lfast/dic/dict/models/database/EnglishIdiomGroupModel;
.super Ljava/lang/Object;
.source "EnglishSearchResultModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
        "",
        "<init>",
        "()V",
        "englishIdiomId",
        "",
        "getEnglishIdiomId",
        "()Ljava/lang/Integer;",
        "setEnglishIdiomId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "englishWord",
        "",
        "getEnglishWord",
        "()Ljava/lang/String;",
        "setEnglishWord",
        "(Ljava/lang/String;)V",
        "persianMeanings",
        "",
        "getPersianMeanings",
        "()Ljava/util/List;",
        "setPersianMeanings",
        "(Ljava/util/List;)V",
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
.field private englishIdiomId:Ljava/lang/Integer;

.field private englishWord:Ljava/lang/String;

.field private persianMeanings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnglishIdiomId()Ljava/lang/Integer;
    .locals 0

    .line 71
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;->englishIdiomId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getEnglishWord()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;->englishWord:Ljava/lang/String;

    return-object p0
.end method

.method public final getPersianMeanings()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;->persianMeanings:Ljava/util/List;

    return-object p0
.end method

.method public final setEnglishIdiomId(Ljava/lang/Integer;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;->englishIdiomId:Ljava/lang/Integer;

    return-void
.end method

.method public final setEnglishWord(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;->englishWord:Ljava/lang/String;

    return-void
.end method

.method public final setPersianMeanings(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishIdiomGroupModel;->persianMeanings:Ljava/util/List;

    return-void
.end method
