.class public final Lfast/dic/dict/models/PositionModel;
.super Ljava/lang/Object;
.source "CloudWordModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/models/PositionModel;",
        "",
        "x",
        "",
        "y",
        "<init>",
        "(II)V",
        "getX",
        "()I",
        "setX",
        "(I)V",
        "getY",
        "setY",
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
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfast/dic/dict/models/PositionModel;->x:I

    iput p2, p0, Lfast/dic/dict/models/PositionModel;->y:I

    return-void
.end method


# virtual methods
.method public final getX()I
    .locals 0

    .line 5
    iget p0, p0, Lfast/dic/dict/models/PositionModel;->x:I

    return p0
.end method

.method public final getY()I
    .locals 0

    .line 5
    iget p0, p0, Lfast/dic/dict/models/PositionModel;->y:I

    return p0
.end method

.method public final setX(I)V
    .locals 0

    .line 5
    iput p1, p0, Lfast/dic/dict/models/PositionModel;->x:I

    return-void
.end method

.method public final setY(I)V
    .locals 0

    .line 5
    iput p1, p0, Lfast/dic/dict/models/PositionModel;->y:I

    return-void
.end method
