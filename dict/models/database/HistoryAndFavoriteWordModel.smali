.class public final Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;
.super Ljava/lang/Object;
.source "HistoryAndFavoriteWordModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;",
        "",
        "word",
        "",
        "word_id",
        "",
        "category",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getWord",
        "()Ljava/lang/String;",
        "setWord",
        "(Ljava/lang/String;)V",
        "getWord_id",
        "()I",
        "setWord_id",
        "(I)V",
        "getCategory",
        "setCategory",
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
.field private category:I

.field private word:Ljava/lang/String;

.field private word_id:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string/jumbo v0, "word"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;->word:Ljava/lang/String;

    iput p2, p0, Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;->word_id:I

    iput p3, p0, Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;->category:I

    return-void
.end method


# virtual methods
.method public final getCategory()I
    .locals 0

    .line 3
    iget p0, p0, Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;->category:I

    return p0
.end method

.method public final getWord()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;->word:Ljava/lang/String;

    return-object p0
.end method

.method public final getWord_id()I
    .locals 0

    .line 3
    iget p0, p0, Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;->word_id:I

    return p0
.end method

.method public final setCategory(I)V
    .locals 0

    .line 3
    iput p1, p0, Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;->category:I

    return-void
.end method

.method public final setWord(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;->word:Ljava/lang/String;

    return-void
.end method

.method public final setWord_id(I)V
    .locals 0

    .line 3
    iput p1, p0, Lfast/dic/dict/models/database/HistoryAndFavoriteWordModel;->word_id:I

    return-void
.end method
