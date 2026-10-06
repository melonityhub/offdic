.class public final Lfast/dic/dict/models/database/EnglishIdiomModel;
.super Ljava/lang/Object;
.source "EnglishSearchResultModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u0012\u0010\r\"\u0004\u0008\u0013\u0010\u000fR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0007\"\u0004\u0008\u0016\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lfast/dic/dict/models/database/EnglishIdiomModel;",
        "",
        "<init>",
        "()V",
        "englishWord",
        "",
        "getEnglishWord",
        "()Ljava/lang/String;",
        "setEnglishWord",
        "(Ljava/lang/String;)V",
        "englishDetailId",
        "",
        "getEnglishDetailId",
        "()Ljava/lang/Integer;",
        "setEnglishDetailId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "englishIdiomId",
        "getEnglishIdiomId",
        "setEnglishIdiomId",
        "persianMeaning",
        "getPersianMeaning",
        "setPersianMeaning",
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
.field private englishDetailId:Ljava/lang/Integer;

.field private englishIdiomId:Ljava/lang/Integer;

.field private englishWord:Ljava/lang/String;

.field private persianMeaning:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnglishDetailId()Ljava/lang/Integer;
    .locals 0

    .line 65
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishIdiomModel;->englishDetailId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getEnglishIdiomId()Ljava/lang/Integer;
    .locals 0

    .line 66
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishIdiomModel;->englishIdiomId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getEnglishWord()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishIdiomModel;->englishWord:Ljava/lang/String;

    return-object p0
.end method

.method public final getPersianMeaning()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishIdiomModel;->persianMeaning:Ljava/lang/String;

    return-object p0
.end method

.method public final setEnglishDetailId(Ljava/lang/Integer;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishIdiomModel;->englishDetailId:Ljava/lang/Integer;

    return-void
.end method

.method public final setEnglishIdiomId(Ljava/lang/Integer;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishIdiomModel;->englishIdiomId:Ljava/lang/Integer;

    return-void
.end method

.method public final setEnglishWord(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishIdiomModel;->englishWord:Ljava/lang/String;

    return-void
.end method

.method public final setPersianMeaning(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishIdiomModel;->persianMeaning:Ljava/lang/String;

    return-void
.end method
