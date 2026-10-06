.class public final Lfast/dic/dict/models/CloudWordModel;
.super Ljava/lang/Object;
.source "CloudWordModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lfast/dic/dict/models/CloudWordModel;",
        "",
        "word",
        "",
        "fontSize",
        "",
        "position",
        "Lfast/dic/dict/models/PositionModel;",
        "<init>",
        "(Ljava/lang/String;FLfast/dic/dict/models/PositionModel;)V",
        "getWord",
        "()Ljava/lang/String;",
        "setWord",
        "(Ljava/lang/String;)V",
        "getFontSize",
        "()F",
        "setFontSize",
        "(F)V",
        "getPosition",
        "()Lfast/dic/dict/models/PositionModel;",
        "setPosition",
        "(Lfast/dic/dict/models/PositionModel;)V",
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
.field private fontSize:F

.field private position:Lfast/dic/dict/models/PositionModel;

.field private word:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;FLfast/dic/dict/models/PositionModel;)V
    .locals 1

    const-string/jumbo v0, "word"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/models/CloudWordModel;->word:Ljava/lang/String;

    iput p2, p0, Lfast/dic/dict/models/CloudWordModel;->fontSize:F

    iput-object p3, p0, Lfast/dic/dict/models/CloudWordModel;->position:Lfast/dic/dict/models/PositionModel;

    return-void
.end method


# virtual methods
.method public final getFontSize()F
    .locals 0

    .line 3
    iget p0, p0, Lfast/dic/dict/models/CloudWordModel;->fontSize:F

    return p0
.end method

.method public final getPosition()Lfast/dic/dict/models/PositionModel;
    .locals 0

    .line 3
    iget-object p0, p0, Lfast/dic/dict/models/CloudWordModel;->position:Lfast/dic/dict/models/PositionModel;

    return-object p0
.end method

.method public final getWord()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lfast/dic/dict/models/CloudWordModel;->word:Ljava/lang/String;

    return-object p0
.end method

.method public final setFontSize(F)V
    .locals 0

    .line 3
    iput p1, p0, Lfast/dic/dict/models/CloudWordModel;->fontSize:F

    return-void
.end method

.method public final setPosition(Lfast/dic/dict/models/PositionModel;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lfast/dic/dict/models/CloudWordModel;->position:Lfast/dic/dict/models/PositionModel;

    return-void
.end method

.method public final setWord(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lfast/dic/dict/models/CloudWordModel;->word:Ljava/lang/String;

    return-void
.end method
