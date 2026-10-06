package fast.dic.dict.views;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.ViewCompat;
import com.creageek.segmentedbutton.ExtentionsKt;
import com.google.mlkit.vision.text.Text;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TextGraphic.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 %2\u00020\u0001:\u0001%Bi\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000e\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J2\u0010\u001f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010 \u001a\u0004\u0018\u00010\u00142\u0006\u0010!\u001a\u00020\u00072\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u000eH\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\nH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lfast/dic/dict/views/TextGraphic;", "Lfast/dic/dict/views/GraphicOverlay$Graphic;", "overlay", "Lfast/dic/dict/views/GraphicOverlay;", "element", "Lcom/google/mlkit/vision/text/Text$Element;", "backgroundColor", "", "textColor", "boundingBox", "Landroid/graphics/Rect;", "text", "", "translatedLine", "", "lines", "Lcom/google/mlkit/vision/text/Text$Line;", "<init>", "(Lfast/dic/dict/views/GraphicOverlay;Lcom/google/mlkit/vision/text/Text$Element;IILandroid/graphics/Rect;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "rectPaint", "Landroid/graphics/Paint;", "textPaint", "Landroid/text/TextPaint;", "draw", "", "canvas", "Landroid/graphics/Canvas;", "generateStaticLayout", "Landroid/text/StaticLayout;", "rect", "Landroid/graphics/RectF;", "calculateMaxTextSize", "paint", "maxWidth", "needRotate", "", TypedValues.AttributesType.S_FRAME, "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class TextGraphic extends GraphicOverlay.Graphic {
    private static final float STROKE_WIDTH = 4.0f;
    private final Rect boundingBox;
    private final Text.Element element;
    private final Paint rectPaint;
    private final String text;
    private final TextPaint textPaint;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextGraphic(GraphicOverlay overlay, Text.Element element, int i, int i2, Rect rect, String str, List<String> list, List<? extends Text.Line> lines) {
        RectF rectF;
        super(overlay);
        Intrinsics.checkNotNullParameter(overlay, "overlay");
        Intrinsics.checkNotNullParameter(lines, "lines");
        this.element = element;
        this.boundingBox = rect;
        this.text = str;
        if (element != null) {
            rectF = new RectF(element.getBoundingBox());
        } else {
            Intrinsics.checkNotNull(rect);
            rectF = new RectF(rect);
        }
        Paint paint = new Paint();
        this.rectPaint = paint;
        paint.setColor(i);
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeWidth(STROKE_WIDTH);
        float fCalculateMaxTextSize = calculateMaxTextSize(list != null ? (String) CollectionsKt.firstOrNull((List) list) : null, paint, (int) rectF.width(), lines);
        TextPaint textPaint = new TextPaint();
        this.textPaint = textPaint;
        textPaint.setColor(i2);
        textPaint.setTextSize(fCalculateMaxTextSize);
        postInvalidate();
    }

    public /* synthetic */ TextGraphic(GraphicOverlay graphicOverlay, Text.Element element, int i, int i2, Rect rect, String str, List list, List list2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(graphicOverlay, (i3 & 2) != 0 ? null : element, (i3 & 4) != 0 ? -1 : i, (i3 & 8) != 0 ? ViewCompat.MEASURED_STATE_MASK : i2, (i3 & 16) != 0 ? null : rect, (i3 & 32) != 0 ? null : str, (i3 & 64) != 0 ? null : list, list2);
    }

    @Override // fast.dic.dict.views.GraphicOverlay.Graphic
    public void draw(Canvas canvas) {
        RectF rectF;
        RectF rectF2;
        String text;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.element != null) {
            rectF = new RectF(this.element.getBoundingBox());
        } else {
            Rect rect = this.boundingBox;
            Intrinsics.checkNotNull(rect);
            rectF = new RectF(rect);
        }
        if (this.element != null) {
            rectF2 = new RectF(this.element.getBoundingBox());
        } else {
            Rect rect2 = this.boundingBox;
            Intrinsics.checkNotNull(rect2);
            rectF2 = new RectF(rect2);
        }
        float px = ExtentionsKt.toPx(2.0f);
        float px2 = ExtentionsKt.toPx(2.0f);
        float px3 = ExtentionsKt.toPx(STROKE_WIDTH);
        float px4 = ExtentionsKt.toPx(STROKE_WIDTH);
        rectF2.top -= px;
        rectF2.left -= px2;
        rectF2.right += px3;
        rectF2.bottom += px4;
        float[] fArr = {ExtentionsKt.toPx(8.0f), ExtentionsKt.toPx(8.0f), ExtentionsKt.toPx(8.0f), ExtentionsKt.toPx(8.0f), ExtentionsKt.toPx(8.0f), ExtentionsKt.toPx(8.0f), ExtentionsKt.toPx(8.0f), ExtentionsKt.toPx(8.0f)};
        Path path = new Path();
        path.addRoundRect(rectF2, fArr, Path.Direction.CW);
        canvas.drawPath(path, this.rectPaint);
        Rect rect3 = new Rect();
        rectF2.roundOut(rect3);
        if (needRotate(rect3)) {
            canvas.rotate(90.0f, rectF2.left, rectF2.top);
        }
        Text.Element element = this.element;
        if (element == null || (text = element.getText()) == null) {
            text = this.text;
            Intrinsics.checkNotNull(text);
        }
        StaticLayout staticLayoutGenerateStaticLayout = generateStaticLayout(text, rectF);
        canvas.save();
        Rect rect4 = new Rect();
        rectF.roundOut(rect4);
        canvas.translate(rect4.left, rect4.top);
        staticLayoutGenerateStaticLayout.draw(canvas);
        canvas.restore();
        if (needRotate(rect4)) {
            canvas.rotate(-90.0f, rectF.left, rectF.top);
        }
    }

    private final StaticLayout generateStaticLayout(String text, RectF rect) {
        int iWidth = (int) rect.width();
        StaticLayout staticLayoutBuild = StaticLayout.Builder.obtain(text, 0, text.length(), this.textPaint, iWidth).setAlignment(Layout.Alignment.ALIGN_NORMAL).setTextDirection(TextDirectionHeuristics.RTL).setLineSpacing(0.0f, 1.0f).setIncludePad(false).setEllipsize(TextUtils.TruncateAt.END).build();
        Intrinsics.checkNotNull(staticLayoutBuild);
        return staticLayoutBuild;
    }

    private final int calculateMaxTextSize(String text, Paint paint, int maxWidth, List<? extends Text.Line> lines) {
        List<Text.Element> elements;
        Text.Element element;
        if (text == null || paint == null) {
            return 0;
        }
        Rect rect = new Rect();
        float f = 1.0f;
        float f2 = 1.0f;
        while (f == 1.0f) {
            paint.getTextBounds(text, 0, text.length(), rect);
            if (rect.width() < maxWidth) {
                f2 += 1.0f;
                paint.setTextSize(f2);
            } else {
                f = f2 - 1.0f;
            }
        }
        float px = ExtentionsKt.toPx(1.0f);
        Text.Line line = (Text.Line) CollectionsKt.firstOrNull((List) lines);
        Rect boundingBox = (line == null || (elements = line.getElements()) == null || (element = (Text.Element) CollectionsKt.firstOrNull((List) elements)) == null) ? null : element.getBoundingBox();
        return (int) (Math.min(boundingBox != null ? boundingBox.height() : (int) f, (int) f) - px);
    }

    private final boolean needRotate(Rect frame) {
        return frame.height() > frame.width() * 2;
    }
}
