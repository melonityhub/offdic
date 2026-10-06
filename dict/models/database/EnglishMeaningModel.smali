.class public final Lfast/dic/dict/models/database/EnglishMeaningModel;
.super Ljava/lang/Object;
.source "EnglishSearchResultModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u00085\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u009d\u0001\u0012\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\u0010\u0008\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0003\u0012\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0011\u00105\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u000b\u00107\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u0010\u00108\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u000b\u00109\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u0010\u0010;\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010)J\u0010\u0010<\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010=\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001aJ\u0011\u0010>\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0003H\u00c6\u0003J\u0011\u0010?\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0003H\u00c6\u0003J\u00a4\u0001\u0010@\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0010\u0008\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00032\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010AJ\u0014\u0010B\u001a\u00020\r2\u0008\u0010C\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010D\u001a\u00020\u0006H\u00d6\u0081\u0004J\n\u0010E\u001a\u00020\u0008H\u00d6\u0081\u0004R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001e\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008\"\u0010\u001a\"\u0004\u0008#\u0010\u001cR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001f\"\u0004\u0008%\u0010!R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001f\"\u0004\u0008\'\u0010!R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010,\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008-\u0010\u001a\"\u0004\u0008.\u0010\u001cR\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\u0008/\u0010\u001a\"\u0004\u00080\u0010\u001cR\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u0010\u0016\"\u0004\u00082\u0010\u0018R\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0016\"\u0004\u00084\u0010\u0018\u00a8\u0006F"
    }
    d2 = {
        "Lfast/dic/dict/models/database/EnglishMeaningModel;",
        "",
        "pos",
        "",
        "Lfast/dic/dict/models/database/PosModel;",
        "detailId",
        "",
        "meaning",
        "",
        "formalInformal",
        "cefr",
        "descriptionHtml",
        "hasImage",
        "",
        "britishAmerican",
        "countableUncountable",
        "sentenses",
        "Lfast/dic/dict/models/database/SentenseModel;",
        "categories",
        "<init>",
        "(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V",
        "getPos",
        "()Ljava/util/List;",
        "setPos",
        "(Ljava/util/List;)V",
        "getDetailId",
        "()Ljava/lang/Integer;",
        "setDetailId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getMeaning",
        "()Ljava/lang/String;",
        "setMeaning",
        "(Ljava/lang/String;)V",
        "getFormalInformal",
        "setFormalInformal",
        "getCefr",
        "setCefr",
        "getDescriptionHtml",
        "setDescriptionHtml",
        "getHasImage",
        "()Ljava/lang/Boolean;",
        "setHasImage",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getBritishAmerican",
        "setBritishAmerican",
        "getCountableUncountable",
        "setCountableUncountable",
        "getSentenses",
        "setSentenses",
        "getCategories",
        "setCategories",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "copy",
        "(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Lfast/dic/dict/models/database/EnglishMeaningModel;",
        "equals",
        "other",
        "hashCode",
        "toString",
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
.field private britishAmerican:Ljava/lang/Integer;

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cefr:Ljava/lang/String;

.field private countableUncountable:Ljava/lang/Integer;

.field private descriptionHtml:Ljava/lang/String;

.field private detailId:Ljava/lang/Integer;

.field private formalInformal:Ljava/lang/Integer;

.field private hasImage:Ljava/lang/Boolean;

.field private meaning:Ljava/lang/String;

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
    .locals 14

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lfast/dic/dict/models/database/EnglishMeaningModel;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PosModel;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/SentenseModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->pos:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->detailId:Ljava/lang/Integer;

    .line 30
    iput-object p3, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->meaning:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->formalInformal:Ljava/lang/Integer;

    .line 32
    iput-object p5, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->cefr:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->descriptionHtml:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->hasImage:Ljava/lang/Boolean;

    .line 35
    iput-object p8, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->britishAmerican:Ljava/lang/Integer;

    .line 36
    iput-object p9, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->countableUncountable:Ljava/lang/Integer;

    .line 37
    iput-object p10, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->sentenses:Ljava/util/List;

    .line 38
    iput-object p11, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->categories:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    move-object p10, v0

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    move-object p11, v0

    .line 27
    :cond_a
    invoke-direct/range {p0 .. p11}, Lfast/dic/dict/models/database/EnglishMeaningModel;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/models/database/EnglishMeaningModel;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lfast/dic/dict/models/database/EnglishMeaningModel;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    iget-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->pos:Ljava/util/List;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    iget-object p2, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->detailId:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    iget-object p3, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->meaning:Ljava/lang/String;

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    iget-object p4, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->formalInformal:Ljava/lang/Integer;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    iget-object p5, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->cefr:Ljava/lang/String;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    iget-object p6, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->descriptionHtml:Ljava/lang/String;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    iget-object p7, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->hasImage:Ljava/lang/Boolean;

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    iget-object p8, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->britishAmerican:Ljava/lang/Integer;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    iget-object p9, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->countableUncountable:Ljava/lang/Integer;

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    iget-object p10, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->sentenses:Ljava/util/List;

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    iget-object p11, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->categories:Ljava/util/List;

    :cond_a
    move-object p12, p10

    move-object p13, p11

    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p13}, Lfast/dic/dict/models/database/EnglishMeaningModel;->copy(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Lfast/dic/dict/models/database/EnglishMeaningModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PosModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->pos:Ljava/util/List;

    return-object p0
.end method

.method public final component10()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/SentenseModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->sentenses:Ljava/util/List;

    return-object p0
.end method

.method public final component11()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->categories:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->detailId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->meaning:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->formalInformal:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->cefr:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->descriptionHtml:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->hasImage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->britishAmerican:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->countableUncountable:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Lfast/dic/dict/models/database/EnglishMeaningModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/PosModel;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/database/SentenseModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lfast/dic/dict/models/database/EnglishMeaningModel;"
        }
    .end annotation

    new-instance p0, Lfast/dic/dict/models/database/EnglishMeaningModel;

    invoke-direct/range {p0 .. p11}, Lfast/dic/dict/models/database/EnglishMeaningModel;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/models/database/EnglishMeaningModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/models/database/EnglishMeaningModel;

    iget-object v1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->pos:Ljava/util/List;

    iget-object v3, p1, Lfast/dic/dict/models/database/EnglishMeaningModel;->pos:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->detailId:Ljava/lang/Integer;

    iget-object v3, p1, Lfast/dic/dict/models/database/EnglishMeaningModel;->detailId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->meaning:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/models/database/EnglishMeaningModel;->meaning:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->formalInformal:Ljava/lang/Integer;

    iget-object v3, p1, Lfast/dic/dict/models/database/EnglishMeaningModel;->formalInformal:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->cefr:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/models/database/EnglishMeaningModel;->cefr:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->descriptionHtml:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/models/database/EnglishMeaningModel;->descriptionHtml:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->hasImage:Ljava/lang/Boolean;

    iget-object v3, p1, Lfast/dic/dict/models/database/EnglishMeaningModel;->hasImage:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->britishAmerican:Ljava/lang/Integer;

    iget-object v3, p1, Lfast/dic/dict/models/database/EnglishMeaningModel;->britishAmerican:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->countableUncountable:Ljava/lang/Integer;

    iget-object v3, p1, Lfast/dic/dict/models/database/EnglishMeaningModel;->countableUncountable:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->sentenses:Ljava/util/List;

    iget-object v3, p1, Lfast/dic/dict/models/database/EnglishMeaningModel;->sentenses:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->categories:Ljava/util/List;

    iget-object p1, p1, Lfast/dic/dict/models/database/EnglishMeaningModel;->categories:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getBritishAmerican()Ljava/lang/Integer;
    .locals 0

    .line 35
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->britishAmerican:Ljava/lang/Integer;

    return-object p0
.end method

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

    .line 38
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->categories:Ljava/util/List;

    return-object p0
.end method

.method public final getCefr()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->cefr:Ljava/lang/String;

    return-object p0
.end method

.method public final getCountableUncountable()Ljava/lang/Integer;
    .locals 0

    .line 36
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->countableUncountable:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getDescriptionHtml()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->descriptionHtml:Ljava/lang/String;

    return-object p0
.end method

.method public final getDetailId()Ljava/lang/Integer;
    .locals 0

    .line 29
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->detailId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getFormalInformal()Ljava/lang/Integer;
    .locals 0

    .line 31
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->formalInformal:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getHasImage()Ljava/lang/Boolean;
    .locals 0

    .line 34
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->hasImage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getMeaning()Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->meaning:Ljava/lang/String;

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

    .line 28
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->pos:Ljava/util/List;

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

    .line 37
    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->sentenses:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->pos:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->detailId:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->meaning:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->formalInformal:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->cefr:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->descriptionHtml:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->hasImage:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->britishAmerican:Ljava/lang/Integer;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->countableUncountable:Ljava/lang/Integer;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->sentenses:Ljava/util/List;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->categories:Ljava/util/List;

    if-nez p0, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    return v0
.end method

.method public final setBritishAmerican(Ljava/lang/Integer;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->britishAmerican:Ljava/lang/Integer;

    return-void
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

    .line 38
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->categories:Ljava/util/List;

    return-void
.end method

.method public final setCefr(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->cefr:Ljava/lang/String;

    return-void
.end method

.method public final setCountableUncountable(Ljava/lang/Integer;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->countableUncountable:Ljava/lang/Integer;

    return-void
.end method

.method public final setDescriptionHtml(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->descriptionHtml:Ljava/lang/String;

    return-void
.end method

.method public final setDetailId(Ljava/lang/Integer;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->detailId:Ljava/lang/Integer;

    return-void
.end method

.method public final setFormalInformal(Ljava/lang/Integer;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->formalInformal:Ljava/lang/Integer;

    return-void
.end method

.method public final setHasImage(Ljava/lang/Boolean;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->hasImage:Ljava/lang/Boolean;

    return-void
.end method

.method public final setMeaning(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->meaning:Ljava/lang/String;

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

    .line 28
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->pos:Ljava/util/List;

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

    .line 37
    iput-object p1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->sentenses:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->pos:Ljava/util/List;

    iget-object v1, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->detailId:Ljava/lang/Integer;

    iget-object v2, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->meaning:Ljava/lang/String;

    iget-object v3, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->formalInformal:Ljava/lang/Integer;

    iget-object v4, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->cefr:Ljava/lang/String;

    iget-object v5, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->descriptionHtml:Ljava/lang/String;

    iget-object v6, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->hasImage:Ljava/lang/Boolean;

    iget-object v7, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->britishAmerican:Ljava/lang/Integer;

    iget-object v8, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->countableUncountable:Ljava/lang/Integer;

    iget-object v9, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->sentenses:Ljava/util/List;

    iget-object p0, p0, Lfast/dic/dict/models/database/EnglishMeaningModel;->categories:Ljava/util/List;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "EnglishMeaningModel(pos="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", detailId="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meaning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", formalInformal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cefr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", descriptionHtml="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", britishAmerican="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countableUncountable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sentenses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", categories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
