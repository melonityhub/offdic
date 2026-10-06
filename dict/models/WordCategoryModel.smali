.class public final Lfast/dic/dict/models/WordCategoryModel;
.super Ljava/lang/Object;
.source "WordCategoryModel.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\'\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bk\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010$\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010\'\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010)\u001a\u00020\nH\u00c6\u0003J\t\u0010*\u001a\u00020\nH\u00c6\u0003J\t\u0010+\u001a\u00020\nH\u00c6\u0003J\t\u0010,\u001a\u00020\nH\u00c6\u0003Jr\u0010-\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\nH\u00c6\u0001\u00a2\u0006\u0002\u0010.J\u0006\u0010/\u001a\u00020\u0003J\u0014\u00100\u001a\u00020\n2\u0008\u00101\u001a\u0004\u0018\u000102H\u00d6\u0083\u0004J\n\u00103\u001a\u00020\u0003H\u00d6\u0081\u0004J\n\u00104\u001a\u00020\u0005H\u00d6\u0081\u0004J\u0016\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0016\"\u0004\u0008\u001a\u0010\u0018R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\u0008\u001b\u0010\u0011\"\u0004\u0008\u001c\u0010\u0013R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0016\"\u0004\u0008\u001e\u0010\u0018R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\u000b\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u001f\"\u0004\u0008\"\u0010!R\u001a\u0010\u000c\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u001f\"\u0004\u0008\u001e\u0010!R\u001a\u0010\r\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u001f\"\u0004\u0008#\u0010!\u00ca\u0001\u0002\u0008;\u00a8\u0006:"
    }
    d2 = {
        "Lfast/dic/dict/models/WordCategoryModel;",
        "Landroid/os/Parcelable;",
        "count",
        "",
        "name",
        "",
        "icon",
        "id",
        "cefr",
        "isWod",
        "",
        "isPos",
        "isCefr",
        "isEllipsize",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZ)V",
        "getCount",
        "()Ljava/lang/Integer;",
        "setCount",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getIcon",
        "setIcon",
        "getId",
        "setId",
        "getCefr",
        "setCefr",
        "()Z",
        "setWod",
        "(Z)V",
        "setPos",
        "setEllipsize",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZ)Lfast/dic/dict/models/WordCategoryModel;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "app",
        "Lkotlinx/parcelize/Parcelize;"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lfast/dic/dict/models/WordCategoryModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cefr:Ljava/lang/String;

.field private count:Ljava/lang/Integer;

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/Integer;

.field private isCefr:Z

.field private isEllipsize:Z

.field private isPos:Z

.field private isWod:Z

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfast/dic/dict/models/WordCategoryModel$Creator;

    invoke-direct {v0}, Lfast/dic/dict/models/WordCategoryModel$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lfast/dic/dict/models/WordCategoryModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lfast/dic/dict/models/WordCategoryModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lfast/dic/dict/models/WordCategoryModel;->count:Ljava/lang/Integer;

    .line 9
    iput-object p2, p0, Lfast/dic/dict/models/WordCategoryModel;->name:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lfast/dic/dict/models/WordCategoryModel;->icon:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lfast/dic/dict/models/WordCategoryModel;->id:Ljava/lang/Integer;

    .line 12
    iput-object p5, p0, Lfast/dic/dict/models/WordCategoryModel;->cefr:Ljava/lang/String;

    .line 13
    iput-boolean p6, p0, Lfast/dic/dict/models/WordCategoryModel;->isWod:Z

    .line 14
    iput-boolean p7, p0, Lfast/dic/dict/models/WordCategoryModel;->isPos:Z

    .line 15
    iput-boolean p8, p0, Lfast/dic/dict/models/WordCategoryModel;->isCefr:Z

    .line 16
    iput-boolean p9, p0, Lfast/dic/dict/models/WordCategoryModel;->isEllipsize:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    const/4 v0, 0x0

    if-eqz p11, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    move p9, v0

    .line 7
    :cond_8
    invoke-direct/range {p0 .. p9}, Lfast/dic/dict/models/WordCategoryModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/models/WordCategoryModel;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZILjava/lang/Object;)Lfast/dic/dict/models/WordCategoryModel;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Lfast/dic/dict/models/WordCategoryModel;->count:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lfast/dic/dict/models/WordCategoryModel;->name:Ljava/lang/String;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget-object p3, p0, Lfast/dic/dict/models/WordCategoryModel;->icon:Ljava/lang/String;

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget-object p4, p0, Lfast/dic/dict/models/WordCategoryModel;->id:Ljava/lang/Integer;

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lfast/dic/dict/models/WordCategoryModel;->cefr:Ljava/lang/String;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-boolean p6, p0, Lfast/dic/dict/models/WordCategoryModel;->isWod:Z

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-boolean p7, p0, Lfast/dic/dict/models/WordCategoryModel;->isPos:Z

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-boolean p8, p0, Lfast/dic/dict/models/WordCategoryModel;->isCefr:Z

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget-boolean p9, p0, Lfast/dic/dict/models/WordCategoryModel;->isEllipsize:Z

    :cond_8
    move p10, p8

    move p11, p9

    move p8, p6

    move p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Lfast/dic/dict/models/WordCategoryModel;->copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZ)Lfast/dic/dict/models/WordCategoryModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/WordCategoryModel;->count:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/WordCategoryModel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/WordCategoryModel;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/WordCategoryModel;->id:Ljava/lang/Integer;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/models/WordCategoryModel;->cefr:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/models/WordCategoryModel;->isWod:Z

    return p0
.end method

.method public final component7()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/models/WordCategoryModel;->isPos:Z

    return p0
.end method

.method public final component8()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/models/WordCategoryModel;->isCefr:Z

    return p0
.end method

.method public final component9()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/models/WordCategoryModel;->isEllipsize:Z

    return p0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZ)Lfast/dic/dict/models/WordCategoryModel;
    .locals 0

    new-instance p0, Lfast/dic/dict/models/WordCategoryModel;

    invoke-direct/range {p0 .. p9}, Lfast/dic/dict/models/WordCategoryModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZZZZ)V

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/models/WordCategoryModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/models/WordCategoryModel;

    iget-object v1, p0, Lfast/dic/dict/models/WordCategoryModel;->count:Ljava/lang/Integer;

    iget-object v3, p1, Lfast/dic/dict/models/WordCategoryModel;->count:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/models/WordCategoryModel;->name:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/models/WordCategoryModel;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lfast/dic/dict/models/WordCategoryModel;->icon:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/models/WordCategoryModel;->icon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lfast/dic/dict/models/WordCategoryModel;->id:Ljava/lang/Integer;

    iget-object v3, p1, Lfast/dic/dict/models/WordCategoryModel;->id:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lfast/dic/dict/models/WordCategoryModel;->cefr:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/models/WordCategoryModel;->cefr:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lfast/dic/dict/models/WordCategoryModel;->isWod:Z

    iget-boolean v3, p1, Lfast/dic/dict/models/WordCategoryModel;->isWod:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lfast/dic/dict/models/WordCategoryModel;->isPos:Z

    iget-boolean v3, p1, Lfast/dic/dict/models/WordCategoryModel;->isPos:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lfast/dic/dict/models/WordCategoryModel;->isCefr:Z

    iget-boolean v3, p1, Lfast/dic/dict/models/WordCategoryModel;->isCefr:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean p0, p0, Lfast/dic/dict/models/WordCategoryModel;->isEllipsize:Z

    iget-boolean p1, p1, Lfast/dic/dict/models/WordCategoryModel;->isEllipsize:Z

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCefr()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lfast/dic/dict/models/WordCategoryModel;->cefr:Ljava/lang/String;

    return-object p0
.end method

.method public final getCount()Ljava/lang/Integer;
    .locals 0

    .line 8
    iget-object p0, p0, Lfast/dic/dict/models/WordCategoryModel;->count:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lfast/dic/dict/models/WordCategoryModel;->icon:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/Integer;
    .locals 0

    .line 11
    iget-object p0, p0, Lfast/dic/dict/models/WordCategoryModel;->id:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lfast/dic/dict/models/WordCategoryModel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lfast/dic/dict/models/WordCategoryModel;->count:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/WordCategoryModel;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/WordCategoryModel;->icon:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/WordCategoryModel;->id:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lfast/dic/dict/models/WordCategoryModel;->cefr:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lfast/dic/dict/models/WordCategoryModel;->isWod:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lfast/dic/dict/models/WordCategoryModel;->isPos:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lfast/dic/dict/models/WordCategoryModel;->isCefr:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lfast/dic/dict/models/WordCategoryModel;->isEllipsize:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final isCefr()Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lfast/dic/dict/models/WordCategoryModel;->isCefr:Z

    return p0
.end method

.method public final isEllipsize()Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lfast/dic/dict/models/WordCategoryModel;->isEllipsize:Z

    return p0
.end method

.method public final isPos()Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lfast/dic/dict/models/WordCategoryModel;->isPos:Z

    return p0
.end method

.method public final isWod()Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lfast/dic/dict/models/WordCategoryModel;->isWod:Z

    return p0
.end method

.method public final setCefr(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lfast/dic/dict/models/WordCategoryModel;->cefr:Ljava/lang/String;

    return-void
.end method

.method public final setCefr(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lfast/dic/dict/models/WordCategoryModel;->isCefr:Z

    return-void
.end method

.method public final setCount(Ljava/lang/Integer;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lfast/dic/dict/models/WordCategoryModel;->count:Ljava/lang/Integer;

    return-void
.end method

.method public final setEllipsize(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lfast/dic/dict/models/WordCategoryModel;->isEllipsize:Z

    return-void
.end method

.method public final setIcon(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lfast/dic/dict/models/WordCategoryModel;->icon:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/Integer;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lfast/dic/dict/models/WordCategoryModel;->id:Ljava/lang/Integer;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lfast/dic/dict/models/WordCategoryModel;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPos(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lfast/dic/dict/models/WordCategoryModel;->isPos:Z

    return-void
.end method

.method public final setWod(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lfast/dic/dict/models/WordCategoryModel;->isWod:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lfast/dic/dict/models/WordCategoryModel;->count:Ljava/lang/Integer;

    iget-object v1, p0, Lfast/dic/dict/models/WordCategoryModel;->name:Ljava/lang/String;

    iget-object v2, p0, Lfast/dic/dict/models/WordCategoryModel;->icon:Ljava/lang/String;

    iget-object v3, p0, Lfast/dic/dict/models/WordCategoryModel;->id:Ljava/lang/Integer;

    iget-object v4, p0, Lfast/dic/dict/models/WordCategoryModel;->cefr:Ljava/lang/String;

    iget-boolean v5, p0, Lfast/dic/dict/models/WordCategoryModel;->isWod:Z

    iget-boolean v6, p0, Lfast/dic/dict/models/WordCategoryModel;->isPos:Z

    iget-boolean v7, p0, Lfast/dic/dict/models/WordCategoryModel;->isCefr:Z

    iget-boolean p0, p0, Lfast/dic/dict/models/WordCategoryModel;->isEllipsize:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "WordCategoryModel(count="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", name="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cefr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isWod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCefr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEllipsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lfast/dic/dict/models/WordCategoryModel;->count:Ljava/lang/Integer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lfast/dic/dict/models/WordCategoryModel;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lfast/dic/dict/models/WordCategoryModel;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lfast/dic/dict/models/WordCategoryModel;->id:Ljava/lang/Integer;

    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object p2, p0, Lfast/dic/dict/models/WordCategoryModel;->cefr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lfast/dic/dict/models/WordCategoryModel;->isWod:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lfast/dic/dict/models/WordCategoryModel;->isPos:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lfast/dic/dict/models/WordCategoryModel;->isCefr:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lfast/dic/dict/models/WordCategoryModel;->isEllipsize:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
