.class public final Lfast/dic/dict/views/SiriVisualView;
.super Landroid/view/View;
.source "SiriVisualView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0014\u0010\u0016\u001a\u00020\u00172\u000c\u0008\u0001\u0010\u0018\u001a\u00020\u0019:\u0002\u0008\u001aJ\u0014\u0010\u001b\u001a\u00020\u00172\u000c\u0008\u0001\u0010\u0018\u001a\u00020\u0019:\u0002\u0008\u001aJ\u000e\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0015J\u000e\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\tJ\u000e\u0010 \u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#H\u0014J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#H\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lfast/dic/dict/views/SiriVisualView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "phase",
        "",
        "amplitude",
        "frequency",
        "idleAmplitude",
        "numberOfWaves",
        "phaseShift",
        "waveLineWidth",
        "density",
        "mPrimaryPaintColor",
        "Landroid/graphics/Paint;",
        "mSecondaryPaintColor",
        "isStraightLine",
        "",
        "updatePrimaryViewColor",
        "",
        "color",
        "",
        "Landroidx/annotation/ColorInt;",
        "updateSecondaryViewColor",
        "updateSpeaking",
        "isSpeaking",
        "updateAmplitude",
        "amply",
        "updateSpeed",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawWave",
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
.field private amplitude:F

.field private density:F

.field private frequency:F

.field private idleAmplitude:F

.field private isStraightLine:Z

.field private mPrimaryPaintColor:Landroid/graphics/Paint;

.field private mSecondaryPaintColor:Landroid/graphics/Paint;

.field private numberOfWaves:F

.field private phase:F

.field private phaseShift:F

.field private waveLineWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 17
    iput p1, p0, Lfast/dic/dict/views/SiriVisualView;->amplitude:F

    const p1, 0x3f99999a    # 1.2f

    .line 18
    iput p1, p0, Lfast/dic/dict/views/SiriVisualView;->frequency:F

    const p1, 0x3d4ccccd    # 0.05f

    .line 19
    iput p1, p0, Lfast/dic/dict/views/SiriVisualView;->idleAmplitude:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 20
    iput p1, p0, Lfast/dic/dict/views/SiriVisualView;->numberOfWaves:F

    const p1, -0x42333333    # -0.1f

    .line 21
    iput p1, p0, Lfast/dic/dict/views/SiriVisualView;->phaseShift:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 22
    iput p1, p0, Lfast/dic/dict/views/SiriVisualView;->waveLineWidth:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 23
    iput p1, p0, Lfast/dic/dict/views/SiriVisualView;->density:F

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/views/SiriVisualView;->mPrimaryPaintColor:Landroid/graphics/Paint;

    .line 25
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/views/SiriVisualView;->mSecondaryPaintColor:Landroid/graphics/Paint;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/views/SiriVisualView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final drawWave(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 62
    iget-boolean v2, v0, Lfast/dic/dict/views/SiriVisualView;->isStraightLine:Z

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    int-to-float v3, v2

    .line 64
    iget v4, v0, Lfast/dic/dict/views/SiriVisualView;->numberOfWaves:F

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_4

    .line 65
    iget-object v4, v0, Lfast/dic/dict/views/SiriVisualView;->mPrimaryPaintColor:Landroid/graphics/Paint;

    iget v5, v0, Lfast/dic/dict/views/SiriVisualView;->waveLineWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    iget-object v4, v0, Lfast/dic/dict/views/SiriVisualView;->mSecondaryPaintColor:Landroid/graphics/Paint;

    iget v5, v0, Lfast/dic/dict/views/SiriVisualView;->waveLineWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    invoke-virtual {v0}, Lfast/dic/dict/views/SiriVisualView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    .line 68
    invoke-virtual {v0}, Lfast/dic/dict/views/SiriVisualView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v6, v5, v7

    const/high16 v8, 0x40800000    # 4.0f

    sub-float v8, v4, v8

    .line 71
    iget v9, v0, Lfast/dic/dict/views/SiriVisualView;->numberOfWaves:F

    div-float/2addr v3, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v3, v9, v3

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v10

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v3, v10

    .line 72
    iget v10, v0, Lfast/dic/dict/views/SiriVisualView;->amplitude:F

    mul-float/2addr v3, v10

    .line 73
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    const/4 v11, 0x0

    move v12, v11

    .line 75
    :goto_1
    iget v13, v0, Lfast/dic/dict/views/SiriVisualView;->density:F

    add-float/2addr v13, v5

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_1

    div-float v13, v9, v6

    float-to-double v13, v13

    sub-float v15, v12, v6

    move/from16 v16, v7

    move/from16 v17, v8

    float-to-double v7, v15

    mul-double/2addr v13, v7

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .line 77
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    neg-double v7, v7

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v13

    double-to-float v7, v7

    mul-float v7, v7, v17

    mul-float/2addr v7, v3

    float-to-double v7, v7

    div-float v13, v12, v5

    float-to-double v13, v13

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v13, v13, v18

    .line 79
    iget v15, v0, Lfast/dic/dict/views/SiriVisualView;->frequency:F

    move-object/from16 v19, v10

    float-to-double v9, v15

    mul-double/2addr v13, v9

    iget v9, v0, Lfast/dic/dict/views/SiriVisualView;->phase:F

    float-to-double v9, v9

    add-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    float-to-double v9, v4

    add-double/2addr v7, v9

    double-to-float v7, v7

    cmpg-float v8, v12, v11

    if-nez v8, :cond_0

    move-object/from16 v8, v19

    .line 81
    invoke-virtual {v8, v12, v7}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    :cond_0
    move-object/from16 v8, v19

    .line 83
    invoke-virtual {v8, v12, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 85
    :goto_2
    iget v7, v0, Lfast/dic/dict/views/SiriVisualView;->density:F

    add-float/2addr v12, v7

    move-object v10, v8

    move/from16 v7, v16

    move/from16 v8, v17

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move/from16 v16, v7

    move-object v8, v10

    .line 87
    iget-object v3, v0, Lfast/dic/dict/views/SiriVisualView;->mPrimaryPaintColor:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v3, v0, Lfast/dic/dict/views/SiriVisualView;->mPrimaryPaintColor:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v3, v0, Lfast/dic/dict/views/SiriVisualView;->mSecondaryPaintColor:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v3, v0, Lfast/dic/dict/views/SiriVisualView;->mSecondaryPaintColor:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-nez v2, :cond_2

    .line 94
    iget-object v3, v0, Lfast/dic/dict/views/SiriVisualView;->mPrimaryPaintColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 96
    :cond_2
    iget-object v3, v0, Lfast/dic/dict/views/SiriVisualView;->mSecondaryPaintColor:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v16

    goto/16 :goto_0

    :cond_3
    move/from16 v16, v7

    const/4 v2, 0x5

    const/4 v3, -0x5

    .line 101
    invoke-static {v2, v3, v3}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v7

    if-gt v7, v2, :cond_4

    move v8, v2

    :goto_4
    int-to-float v2, v8

    .line 104
    invoke-virtual {v0}, Lfast/dic/dict/views/SiriVisualView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v16

    .line 105
    invoke-virtual {v0}, Lfast/dic/dict/views/SiriVisualView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 106
    invoke-virtual {v0}, Lfast/dic/dict/views/SiriVisualView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v16

    .line 107
    iget-object v6, v0, Lfast/dic/dict/views/SiriVisualView;->mPrimaryPaintColor:Landroid/graphics/Paint;

    .line 102
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    if-eq v8, v7, :cond_4

    add-int/lit8 v8, v8, -0x5

    move-object/from16 v1, p1

    goto :goto_4

    .line 111
    :cond_4
    iget v1, v0, Lfast/dic/dict/views/SiriVisualView;->phase:F

    iget v2, v0, Lfast/dic/dict/views/SiriVisualView;->phaseShift:F

    add-float/2addr v1, v2

    iput v1, v0, Lfast/dic/dict/views/SiriVisualView;->phase:F

    .line 112
    invoke-virtual {v0}, Lfast/dic/dict/views/SiriVisualView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-direct {p0, p1}, Lfast/dic/dict/views/SiriVisualView;->drawWave(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final updateAmplitude(F)V
    .locals 1

    .line 41
    iget v0, p0, Lfast/dic/dict/views/SiriVisualView;->idleAmplitude:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lfast/dic/dict/views/SiriVisualView;->amplitude:F

    return-void
.end method

.method public final updatePrimaryViewColor(I)V
    .locals 0

    .line 29
    iget-object p0, p0, Lfast/dic/dict/views/SiriVisualView;->mPrimaryPaintColor:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final updateSecondaryViewColor(I)V
    .locals 0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/views/SiriVisualView;->mSecondaryPaintColor:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final updateSpeaking(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lfast/dic/dict/views/SiriVisualView;->isStraightLine:Z

    return-void
.end method

.method public final updateSpeed(F)V
    .locals 0

    .line 45
    iput p1, p0, Lfast/dic/dict/views/SiriVisualView;->phaseShift:F

    return-void
.end method
