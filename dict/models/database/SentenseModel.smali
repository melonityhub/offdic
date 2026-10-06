.class public final Lfast/dic/dict/models/database/SentenseModel;
.super Ljava/lang/Object;
.source "EnglishSearchResultModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lfast/dic/dict/models/database/SentenseModel;",
        "",
        "<init>",
        "()V",
        "english",
        "",
        "getEnglish",
        "()Ljava/lang/String;",
        "setEnglish",
        "(Ljava/lang/String;)V",
        "persian",
        "getPersian",
        "setPersian",
        "english_sentence_id",
        "",
        "getEnglish_sentence_id",
        "()Ljava/lang/Integer;",
        "setEnglish_sentence_id",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
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
.field private english:Ljava/lang/String;

.field private english_sentence_id:Ljava/lang/Integer;

.field private persian:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEnglish()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lfast/dic/dict/models/database/SentenseModel;->english:Ljava/lang/String;

    return-object p0
.end method

.method public final getEnglish_sentence_id()Ljava/lang/Integer;
    .locals 0

    .line 79
    iget-object p0, p0, Lfast/dic/dict/models/database/SentenseModel;->english_sentence_id:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getPersian()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lfast/dic/dict/models/database/SentenseModel;->persian:Ljava/lang/String;

    return-object p0
.end method

.method public final setEnglish(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lfast/dic/dict/models/database/SentenseModel;->english:Ljava/lang/String;

    return-void
.end method

.method public final setEnglish_sentence_id(Ljava/lang/Integer;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lfast/dic/dict/models/database/SentenseModel;->english_sentence_id:Ljava/lang/Integer;

    return-void
.end method

.method public final setPersian(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lfast/dic/dict/models/database/SentenseModel;->persian:Ljava/lang/String;

    return-void
.end method
