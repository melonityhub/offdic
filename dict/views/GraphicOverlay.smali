.class public final Lfast/dic/dict/views/GraphicOverlay;
.super Landroid/view/View;
.source "GraphicOverlay.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/views/GraphicOverlay$Graphic;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGraphicOverlay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphicOverlay.kt\nfast/dic/dict/views/GraphicOverlay\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,211:1\n1#2:212\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001(B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u000cJ\u000e\u0010!\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u000cJ\u001e\u0010\"\u001a\u00020\u001e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u001bJ\u0008\u0010$\u001a\u00020\u001eH\u0002J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\'H\u0014R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u001e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0013R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lfast/dic/dict/views/GraphicOverlay;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "lock",
        "",
        "graphics",
        "",
        "Lfast/dic/dict/views/GraphicOverlay$Graphic;",
        "transformationMatrix",
        "Landroid/graphics/Matrix;",
        "value",
        "",
        "imageWidth",
        "getImageWidth",
        "()I",
        "imageHeight",
        "getImageHeight",
        "scaleFactor",
        "",
        "postScaleWidthOffset",
        "postScaleHeightOffset",
        "isImageFlipped",
        "",
        "needUpdateTransformation",
        "clear",
        "",
        "add",
        "graphic",
        "remove",
        "setImageSourceInfo",
        "isFlipped",
        "updateTransformationIfNeeded",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "Graphic",
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
.field private final graphics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/views/GraphicOverlay$Graphic;",
            ">;"
        }
    .end annotation
.end field

.field private imageHeight:I

.field private imageWidth:I

.field private isImageFlipped:Z

.field private final lock:Ljava/lang/Object;

.field private needUpdateTransformation:Z

.field private postScaleHeightOffset:F

.field private postScaleWidthOffset:F

.field private scaleFactor:F

.field private final transformationMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/views/GraphicOverlay;->lock:Ljava/lang/Object;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lfast/dic/dict/views/GraphicOverlay;->graphics:Ljava/util/List;

    .line 40
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/views/GraphicOverlay;->transformationMatrix:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 48
    iput p1, p0, Lfast/dic/dict/views/GraphicOverlay;->scaleFactor:F

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lfast/dic/dict/views/GraphicOverlay;->needUpdateTransformation:Z

    .line 207
    new-instance p1, Lfast/dic/dict/views/GraphicOverlay$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lfast/dic/dict/views/GraphicOverlay$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/views/GraphicOverlay;)V

    invoke-virtual {p0, p1}, Lfast/dic/dict/views/GraphicOverlay;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/views/GraphicOverlay;Landroid/view/View;IIIIIIII)V
    .locals 0

    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Lfast/dic/dict/views/GraphicOverlay;->needUpdateTransformation:Z

    return-void
.end method

.method public static final synthetic access$getPostScaleHeightOffset$p(Lfast/dic/dict/views/GraphicOverlay;)F
    .locals 0

    .line 34
    iget p0, p0, Lfast/dic/dict/views/GraphicOverlay;->postScaleHeightOffset:F

    return p0
.end method

.method public static final synthetic access$getPostScaleWidthOffset$p(Lfast/dic/dict/views/GraphicOverlay;)F
    .locals 0

    .line 34
    iget p0, p0, Lfast/dic/dict/views/GraphicOverlay;->postScaleWidthOffset:F

    return p0
.end method

.method public static final synthetic access$getScaleFactor$p(Lfast/dic/dict/views/GraphicOverlay;)F
    .locals 0

    .line 34
    iget p0, p0, Lfast/dic/dict/views/GraphicOverlay;->scaleFactor:F

    return p0
.end method

.method public static final synthetic access$getTransformationMatrix$p(Lfast/dic/dict/views/GraphicOverlay;)Landroid/graphics/Matrix;
    .locals 0

    .line 34
    iget-object p0, p0, Lfast/dic/dict/views/GraphicOverlay;->transformationMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static final synthetic access$isImageFlipped$p(Lfast/dic/dict/views/GraphicOverlay;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lfast/dic/dict/views/GraphicOverlay;->isImageFlipped:Z

    return p0
.end method

.method private final updateTransformationIfNeeded()V
    .locals 5

    .line 170
    iget-boolean v0, p0, Lfast/dic/dict/views/GraphicOverlay;->needUpdateTransformation:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lfast/dic/dict/views/GraphicOverlay;->imageWidth:I

    if-lez v0, :cond_3

    iget v0, p0, Lfast/dic/dict/views/GraphicOverlay;->imageHeight:I

    if-gtz v0, :cond_0

    goto/16 :goto_1

    .line 173
    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 174
    iget v1, p0, Lfast/dic/dict/views/GraphicOverlay;->imageWidth:I

    int-to-float v1, v1

    iget v2, p0, Lfast/dic/dict/views/GraphicOverlay;->imageHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    .line 175
    iput v2, p0, Lfast/dic/dict/views/GraphicOverlay;->postScaleWidthOffset:F

    .line 176
    iput v2, p0, Lfast/dic/dict/views/GraphicOverlay;->postScaleHeightOffset:F

    cmpl-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lfast/dic/dict/views/GraphicOverlay;->imageWidth:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Lfast/dic/dict/views/GraphicOverlay;->scaleFactor:F

    .line 180
    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lfast/dic/dict/views/GraphicOverlay;->postScaleHeightOffset:F

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lfast/dic/dict/views/GraphicOverlay;->imageHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    iput v0, p0, Lfast/dic/dict/views/GraphicOverlay;->scaleFactor:F

    .line 184
    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lfast/dic/dict/views/GraphicOverlay;->postScaleWidthOffset:F

    .line 186
    :goto_0
    iget-object v0, p0, Lfast/dic/dict/views/GraphicOverlay;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 187
    iget-object v0, p0, Lfast/dic/dict/views/GraphicOverlay;->transformationMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lfast/dic/dict/views/GraphicOverlay;->scaleFactor:F

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 188
    iget-object v0, p0, Lfast/dic/dict/views/GraphicOverlay;->transformationMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lfast/dic/dict/views/GraphicOverlay;->postScaleWidthOffset:F

    neg-float v1, v1

    iget v3, p0, Lfast/dic/dict/views/GraphicOverlay;->postScaleHeightOffset:F

    neg-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 189
    iget-boolean v0, p0, Lfast/dic/dict/views/GraphicOverlay;->isImageFlipped:Z

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lfast/dic/dict/views/GraphicOverlay;->transformationMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_2
    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lfast/dic/dict/views/GraphicOverlay;->needUpdateTransformation:Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final add(Lfast/dic/dict/views/GraphicOverlay$Graphic;)V
    .locals 1

    const-string v0, "graphic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lfast/dic/dict/views/GraphicOverlay;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfast/dic/dict/views/GraphicOverlay;->graphics:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final clear()V
    .locals 2

    .line 135
    iget-object v0, p0, Lfast/dic/dict/views/GraphicOverlay;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfast/dic/dict/views/GraphicOverlay;->graphics:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 136
    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->postInvalidate()V

    return-void

    :catchall_0
    move-exception p0

    .line 135
    monitor-exit v0

    throw p0
.end method

.method public final getImageHeight()I
    .locals 0

    .line 43
    iget p0, p0, Lfast/dic/dict/views/GraphicOverlay;->imageHeight:I

    return p0
.end method

.method public final getImageWidth()I
    .locals 0

    .line 41
    iget p0, p0, Lfast/dic/dict/views/GraphicOverlay;->imageWidth:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 198
    iget-object v0, p0, Lfast/dic/dict/views/GraphicOverlay;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-direct {p0}, Lfast/dic/dict/views/GraphicOverlay;->updateTransformationIfNeeded()V

    .line 200
    iget-object p0, p0, Lfast/dic/dict/views/GraphicOverlay;->graphics:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/views/GraphicOverlay$Graphic;

    .line 201
    invoke-virtual {v1, p1}, Lfast/dic/dict/views/GraphicOverlay$Graphic;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 203
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final remove(Lfast/dic/dict/views/GraphicOverlay$Graphic;)V
    .locals 2

    const-string v0, "graphic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lfast/dic/dict/views/GraphicOverlay;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfast/dic/dict/views/GraphicOverlay;->graphics:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 147
    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->postInvalidate()V

    return-void

    :catchall_0
    move-exception p0

    .line 146
    monitor-exit v0

    throw p0
.end method

.method public final setImageSourceInfo(IIZ)V
    .locals 1

    .line 160
    iget-object v0, p0, Lfast/dic/dict/views/GraphicOverlay;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iput p1, p0, Lfast/dic/dict/views/GraphicOverlay;->imageWidth:I

    .line 162
    iput p2, p0, Lfast/dic/dict/views/GraphicOverlay;->imageHeight:I

    .line 163
    iput-boolean p3, p0, Lfast/dic/dict/views/GraphicOverlay;->isImageFlipped:Z

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Lfast/dic/dict/views/GraphicOverlay;->needUpdateTransformation:Z

    .line 165
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit v0

    .line 166
    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->postInvalidate()V

    return-void

    :catchall_0
    move-exception p0

    .line 160
    monitor-exit v0

    throw p0
.end method
