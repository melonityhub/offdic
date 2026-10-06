.class public final Lfast/dic/dict/utils/ColorsExtKt;
.super Ljava/lang/Object;
.source "ColorsExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0001\u00a8\u0006\u0005"
    }
    d2 = {
        "toColor",
        "",
        "context",
        "Landroid/content/Context;",
        "getInverseColor",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getInverseColor(I)I
    .locals 3

    .line 33
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 34
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 35
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 36
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    rsub-int v0, v0, 0xff

    rsub-int v1, v1, 0xff

    rsub-int v2, v2, 0xff

    .line 37
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static final toColor(ILandroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, -0x1000000

    .line 29
    invoke-static {p1, p0, v0}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method
