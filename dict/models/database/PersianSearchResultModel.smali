.class public final Lfast/dic/dict/models/database/PersianSearchResultModel;
.super Ljava/lang/Object;
.source "PersianSearchResultModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000e\"\u0004\u0008\u0013\u0010\u0010R\"\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0018\"\u0004\u0008\u001e\u0010\u001a\u00a8\u0006\u001f"
    }
    d2 = {
        "Lfast/dic/dict/models/database/PersianSearchResultModel;",
        "",
        "<init>",
        "()V",
        "wordId",
        "",
        "getWordId",
        "()Ljava/lang/Integer;",
        "setWordId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "word",
        "",
        "getWord",
        "()Ljava/lang/String;",
        "setWord",
        "(Ljava/lang/String;)V",
        "wordDescriptionHtml",
        "getWordDescriptionHtml",
        "setWordDescriptionHtml",
        "wordDetails",
        "",
        "Lfast/dic/dict/models/database/PersianWordDetail;",
        "getWordDetails",
        "()Ljava/util/List;",
        "setWordDetails",
        "(Ljava/util/List;)V",
        "persianSynonymsAntonyms",
        "Lfast/dic/dict/models/database/PersianSynonymsAntonyms;",
        "getPersianSynonymsAntonyms",
        "setPersianSynonymsAntonyms",
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
.field private persianSynonymsAntonyms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PersianSynonymsAntonyms;",
            ">;"
        }
    .end annotation
.end field

.field private word:Ljava/lang/String;

.field private wordDescriptionHtml:Ljava/lang/String;

.field private wordDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PersianWordDetail;",
            ">;"
        }
    .end annotation
.end field

.field private wordId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPersianSynonymsAntonyms()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PersianSynonymsAntonyms;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianSearchResultModel;->persianSynonymsAntonyms:Ljava/util/List;

    return-object p0
.end method

.method public final getWord()Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianSearchResultModel;->word:Ljava/lang/String;

    return-object p0
.end method

.method public final getWordDescriptionHtml()Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianSearchResultModel;->wordDescriptionHtml:Ljava/lang/String;

    return-object p0
.end method

.method public final getWordDetails()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PersianWordDetail;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianSearchResultModel;->wordDetails:Ljava/util/List;

    return-object p0
.end method

.method public final getWordId()Ljava/lang/Integer;
    .locals 0

    .line 4
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianSearchResultModel;->wordId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setPersianSynonymsAntonyms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PersianSynonymsAntonyms;",
            ">;)V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianSearchResultModel;->persianSynonymsAntonyms:Ljava/util/List;

    return-void
.end method

.method public final setWord(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianSearchResultModel;->word:Ljava/lang/String;

    return-void
.end method

.method public final setWordDescriptionHtml(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianSearchResultModel;->wordDescriptionHtml:Ljava/lang/String;

    return-void
.end method

.method public final setWordDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PersianWordDetail;",
            ">;)V"
        }
    .end annotation

    .line 7
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianSearchResultModel;->wordDetails:Ljava/util/List;

    return-void
.end method

.method public final setWordId(Ljava/lang/Integer;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianSearchResultModel;->wordId:Ljava/lang/Integer;

    return-void
.end method
