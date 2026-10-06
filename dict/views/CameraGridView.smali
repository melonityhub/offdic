.class public final Lfast/dic/dict/views/CameraGridView;
.super Landroid/view/View;
.source "CameraGridView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0014R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lfast/dic/dict/views/CameraGridView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "paint",
        "Landroid/graphics/Paint;",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
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
.field private final paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/views/CameraGridView;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lfast/dic/dict/views/CameraGridView;->getWidth()I

    move-result v0

    .line 20
    invoke-virtual {p0}, Lfast/dic/dict/views/CameraGridView;->getHeight()I

    move-result v7

    .line 23
    iget-object v2, p0, Lfast/dic/dict/views/CameraGridView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    iget-object v2, p0, Lfast/dic/dict/views/CameraGridView;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 25
    iget-object v2, p0, Lfast/dic/dict/views/CameraGridView;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object v2, p0, Lfast/dic/dict/views/CameraGridView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lfast/dic/dict/views/CameraGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lfast/dic/dict/R$color;->white:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const/16 v4, 0x7f

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    div-int/lit8 v2, v0, 0x3

    int-to-float v2, v2

    int-to-float v5, v7

    .line 34
    iget-object v6, p0, Lfast/dic/dict/views/CameraGridView;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    move v4, v2

    move-object v1, p1

    .line 29
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v1, v0, 0x2

    .line 37
    div-int/lit8 v1, v1, 0x3

    int-to-float v2, v1

    .line 41
    iget-object v6, p0, Lfast/dic/dict/views/CameraGridView;->paint:Landroid/graphics/Paint;

    move v4, v2

    move-object v1, p1

    .line 36
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 45
    div-int/lit8 v1, v7, 0x3

    int-to-float v3, v1

    int-to-float v4, v0

    .line 47
    iget-object v6, p0, Lfast/dic/dict/views/CameraGridView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move v5, v3

    move-object v1, p1

    .line 43
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v7, v7, 0x2

    .line 51
    div-int/lit8 v7, v7, 0x3

    int-to-float v3, v7

    .line 54
    iget-object v6, p0, Lfast/dic/dict/views/CameraGridView;->paint:Landroid/graphics/Paint;

    move v5, v3

    .line 49
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
