.class public abstract Lfast/dic/dict/views/GraphicOverlay$Graphic;
.super Ljava/lang/Object;
.source "GraphicOverlay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/views/GraphicOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Graphic"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J:\u0010\n\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0004J4\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0004J\u000e\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\u000cJ\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u000cJ\u000e\u0010 \u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u000cJ\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0019\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006$"
    }
    d2 = {
        "Lfast/dic/dict/views/GraphicOverlay$Graphic;",
        "",
        "overlay",
        "Lfast/dic/dict/views/GraphicOverlay;",
        "<init>",
        "(Lfast/dic/dict/views/GraphicOverlay;)V",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "drawRect",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "paint",
        "Landroid/graphics/Paint;",
        "drawText",
        "text",
        "",
        "x",
        "y",
        "scale",
        "imagePixel",
        "applicationContext",
        "Landroid/content/Context;",
        "getApplicationContext",
        "()Landroid/content/Context;",
        "isImageFlipped",
        "",
        "translateX",
        "translateY",
        "getTransformationMatrix",
        "Landroid/graphics/Matrix;",
        "postInvalidate",
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
.field private final overlay:Lfast/dic/dict/views/GraphicOverlay;


# direct methods
.method public constructor <init>(Lfast/dic/dict/views/GraphicOverlay;)V
    .locals 1

    const-string v0, "overlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/views/GraphicOverlay$Graphic;->overlay:Lfast/dic/dict/views/GraphicOverlay;

    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method protected final drawRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 0

    const-string p0, "canvas"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-static {p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected final drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 0

    const-string p0, "canvas"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 97
    iget-object p0, p0, Lfast/dic/dict/views/GraphicOverlay$Graphic;->overlay:Lfast/dic/dict/views/GraphicOverlay;

    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getApplicationContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTransformationMatrix()Landroid/graphics/Matrix;
    .locals 0

    .line 125
    iget-object p0, p0, Lfast/dic/dict/views/GraphicOverlay$Graphic;->overlay:Lfast/dic/dict/views/GraphicOverlay;

    invoke-static {p0}, Lfast/dic/dict/views/GraphicOverlay;->access$getTransformationMatrix$p(Lfast/dic/dict/views/GraphicOverlay;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public final isImageFlipped()Z
    .locals 0

    .line 100
    iget-object p0, p0, Lfast/dic/dict/views/GraphicOverlay$Graphic;->overlay:Lfast/dic/dict/views/GraphicOverlay;

    invoke-static {p0}, Lfast/dic/dict/views/GraphicOverlay;->access$isImageFlipped$p(Lfast/dic/dict/views/GraphicOverlay;)Z

    move-result p0

    return p0
.end method

.method public final postInvalidate()V
    .locals 0

    .line 129
    iget-object p0, p0, Lfast/dic/dict/views/GraphicOverlay$Graphic;->overlay:Lfast/dic/dict/views/GraphicOverlay;

    invoke-virtual {p0}, Lfast/dic/dict/views/GraphicOverlay;->postInvalidate()V

    return-void
.end method

.method public final scale(F)F
    .locals 0

    .line 92
    iget-object p0, p0, Lfast/dic/dict/views/GraphicOverlay$Graphic;->overlay:Lfast/dic/dict/views/GraphicOverlay;

    invoke-static {p0}, Lfast/dic/dict/views/GraphicOverlay;->access$getScaleFactor$p(Lfast/dic/dict/views/GraphicOverlay;)F

    move-result p0

    mul-float/2addr p1, p0

    return p1
.end method

.method public final translateX(F)F
    .locals 1

    .line 107
    iget-object v0, p0, Lfast/dic/dict/views/GraphicOverlay$Graphic;->overlay:Lfast/dic/dict/views/GraphicOverlay;

    invoke-static {v0}, Lfast/dic/dict/views/GraphicOverlay;->access$isImageFlipped$p(Lfast/dic/dict/views/GraphicOverlay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lfast/dic/dict/views/GraphicOverlay$Graphic;->overlay:Lfast/dic/dict/views/GraphicOverlay;

    invoke-virtual {v0}, Lfast/dic/dict/views/GraphicOverlay;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Lfast/dic/dict/views/GraphicOverlay$Graphic;->scale(F)F

    move-result p1

    iget-object p0, p0, Lfast/dic/dict/views/GraphicOverlay$Graphic;->overlay:Lfast/dic/dict/views/GraphicOverlay;

    invoke-static {p0}, Lfast/dic/dict/views/GraphicOverlay;->access$getPostScaleWidthOffset$p(Lfast/dic/dict/views/GraphicOverlay;)F

    move-result p0

    sub-float/2addr p1, p0

    sub-float/2addr v0, p1

    return v0

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/views/GraphicOverlay$Graphic;->scale(F)F

    move-result p1

    iget-object p0, p0, Lfast/dic/dict/views/GraphicOverlay$Graphic;->overlay:Lfast/dic/dict/views/GraphicOverlay;

    invoke-static {p0}, Lfast/dic/dict/views/GraphicOverlay;->access$getPostScaleWidthOffset$p(Lfast/dic/dict/views/GraphicOverlay;)F

    move-result p0

    sub-float/2addr p1, p0

    return p1
.end method

.method public final translateY(F)F
    .locals 0

    .line 118
    invoke-virtual {p0, p1}, Lfast/dic/dict/views/GraphicOverlay$Graphic;->scale(F)F

    move-result p1

    iget-object p0, p0, Lfast/dic/dict/views/GraphicOverlay$Graphic;->overlay:Lfast/dic/dict/views/GraphicOverlay;

    invoke-static {p0}, Lfast/dic/dict/views/GraphicOverlay;->access$getPostScaleHeightOffset$p(Lfast/dic/dict/views/GraphicOverlay;)F

    move-result p0

    sub-float/2addr p1, p0

    return p1
.end method
