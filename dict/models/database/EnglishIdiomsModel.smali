.class public final Lfast/dic/dict/models/database/EnglishIdiomsModel;
.super Ljava/lang/Object;
.source "EnglishSearchResultModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008\"\u0004\u0008\u0010\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lfast/dic/dict/models/database/EnglishIdiomsModel;",
        "",
        "<init>",
        "()V",
        "idioms",
        "",
        "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
        "getIdioms",
        "()Ljava/util/List;",
        "setIdioms",
        "(Ljava/util/List;)V",
        "collocations",
        "getCollocations",
        "setCollocations",
        "phrasalVerbs",
        "getPhrasalVerbs",
        "setPhrasalVerbs",
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
.field private collocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
            ">;"
        }
    .end annotation
.end field

.field private idioms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
            ">;"
        }
    .end annotation
.end field

.field private phrasalVerbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCollocations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishIdiomsModel;->collocations:Ljava/util/List;

    return-object p0
.end method

.method public final getIdioms()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishIdiomsModel;->idioms:Ljava/util/List;

    return-object p0
.end method

.method public final getPhrasalVerbs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishIdiomsModel;->phrasalVerbs:Ljava/util/List;

    return-object p0
.end method

.method public final setCollocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
            ">;)V"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishIdiomsModel;->collocations:Ljava/util/List;

    return-void
.end method

.method public final setIdioms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishIdiomsModel;->idioms:Ljava/util/List;

    return-void
.end method

.method public final setPhrasalVerbs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/EnglishIdiomGroupModel;",
            ">;)V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishIdiomsModel;->phrasalVerbs:Ljava/util/List;

    return-void
.end method
