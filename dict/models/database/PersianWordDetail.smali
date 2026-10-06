.class public final Lfast/dic/dict/models/database/PersianWordDetail;
.super Ljava/lang/Object;
.source "PersianSearchResultModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0007\"\u0004\u0008\u0013\u0010\tR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0007\"\u0004\u0008\u001d\u0010\tR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010$\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010%\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u000e\"\u0004\u0008(\u0010\u0010R\"\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u000e\"\u0004\u0008+\u0010\u0010\u00a8\u0006,"
    }
    d2 = {
        "Lfast/dic/dict/models/database/PersianWordDetail;",
        "",
        "<init>",
        "()V",
        "persianMeanings",
        "",
        "getPersianMeanings",
        "()Ljava/lang/String;",
        "setPersianMeanings",
        "(Ljava/lang/String;)V",
        "pos",
        "",
        "Lfast/dic/dict/models/database/PosModel;",
        "getPos",
        "()Ljava/util/List;",
        "setPos",
        "(Ljava/util/List;)V",
        "phonetics",
        "getPhonetics",
        "setPhonetics",
        "detailId",
        "",
        "getDetailId",
        "()Ljava/lang/Integer;",
        "setDetailId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "meaning",
        "getMeaning",
        "setMeaning",
        "hasImage",
        "",
        "getHasImage",
        "()Ljava/lang/Boolean;",
        "setHasImage",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "sentenses",
        "Lfast/dic/dict/models/database/SentenseModel;",
        "getSentenses",
        "setSentenses",
        "categories",
        "getCategories",
        "setCategories",
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
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private detailId:Ljava/lang/Integer;

.field private hasImage:Ljava/lang/Boolean;

.field private meaning:Ljava/lang/String;

.field private persianMeanings:Ljava/lang/String;

.field private phonetics:Ljava/lang/String;

.field private pos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PosModel;",
            ">;"
        }
    .end annotation
.end field

.field private sentenses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/SentenseModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCategories()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianWordDetail;->categories:Ljava/util/List;

    return-object p0
.end method

.method public final getDetailId()Ljava/lang/Integer;
    .locals 0

    .line 15
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianWordDetail;->detailId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getHasImage()Ljava/lang/Boolean;
    .locals 0

    .line 17
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianWordDetail;->hasImage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getMeaning()Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianWordDetail;->meaning:Ljava/lang/String;

    return-object p0
.end method

.method public final getPersianMeanings()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianWordDetail;->persianMeanings:Ljava/lang/String;

    return-object p0
.end method

.method public final getPhonetics()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianWordDetail;->phonetics:Ljava/lang/String;

    return-object p0
.end method

.method public final getPos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PosModel;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianWordDetail;->pos:Ljava/util/List;

    return-object p0
.end method

.method public final getSentenses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/SentenseModel;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object p0, p0, Lfast/dic/dict/models/database/PersianWordDetail;->sentenses:Ljava/util/List;

    return-object p0
.end method

.method public final setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianWordDetail;->categories:Ljava/util/List;

    return-void
.end method

.method public final setDetailId(Ljava/lang/Integer;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianWordDetail;->detailId:Ljava/lang/Integer;

    return-void
.end method

.method public final setHasImage(Ljava/lang/Boolean;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianWordDetail;->hasImage:Ljava/lang/Boolean;

    return-void
.end method

.method public final setMeaning(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianWordDetail;->meaning:Ljava/lang/String;

    return-void
.end method

.method public final setPersianMeanings(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianWordDetail;->persianMeanings:Ljava/lang/String;

    return-void
.end method

.method public final setPhonetics(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianWordDetail;->phonetics:Ljava/lang/String;

    return-void
.end method

.method public final setPos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PosModel;",
            ">;)V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianWordDetail;->pos:Ljava/util/List;

    return-void
.end method

.method public final setSentenses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/SentenseModel;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lfast/dic/dict/models/database/PersianWordDetail;->sentenses:Ljava/util/List;

    return-void
.end method
