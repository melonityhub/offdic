package fast.dic.dict.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.yandex.div.core.dagger.Names;
import io.sentry.Session;
import io.sentry.protocol.SentryStackFrame;
import io.sentry.rrweb.RRWebVideoEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GraphicOverlay.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001(B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\fJ\u000e\u0010!\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\fJ\u001e\u0010\"\u001a\u00020\u001e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u001bJ\b\u0010$\u001a\u00020\u001eH\u0002J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020'H\u0014R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0010@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lfast/dic/dict/views/GraphicOverlay;", "Landroid/view/View;", Names.CONTEXT, "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", SentryStackFrame.JsonKeys.LOCK, "", "graphics", "", "Lfast/dic/dict/views/GraphicOverlay$Graphic;", "transformationMatrix", "Landroid/graphics/Matrix;", "value", "", "imageWidth", "getImageWidth", "()I", "imageHeight", "getImageHeight", "scaleFactor", "", "postScaleWidthOffset", "postScaleHeightOffset", "isImageFlipped", "", "needUpdateTransformation", "clear", "", "add", "graphic", "remove", "setImageSourceInfo", "isFlipped", "updateTransformationIfNeeded", "onDraw", "canvas", "Landroid/graphics/Canvas;", "Graphic", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class GraphicOverlay extends View {
    private final List<Graphic> graphics;
    private int imageHeight;
    private int imageWidth;
    private boolean isImageFlipped;
    private final Object lock;
    private boolean needUpdateTransformation;
    private float postScaleHeightOffset;
    private float postScaleWidthOffset;
    private float scaleFactor;
    private final Matrix transformationMatrix;

    public GraphicOverlay(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.lock = new Object();
        this.graphics = new ArrayList();
        this.transformationMatrix = new Matrix();
        this.scaleFactor = 1.0f;
        this.needUpdateTransformation = true;
        addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: fast.dic.dict.views.GraphicOverlay$$ExternalSyntheticLambda0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.f$0.needUpdateTransformation = true;
            }
        });
    }

    public final int getImageWidth() {
        return this.imageWidth;
    }

    public final int getImageHeight() {
        return this.imageHeight;
    }

    /* JADX INFO: compiled from: GraphicOverlay.kt */
    @Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J:\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0004J4\u0010\u0012\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0004J\u000e\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\fJ\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\fJ\u000e\u0010 \u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\fJ\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0019\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c¨\u0006$"}, d2 = {"Lfast/dic/dict/views/GraphicOverlay$Graphic;", "", "overlay", "Lfast/dic/dict/views/GraphicOverlay;", "<init>", "(Lfast/dic/dict/views/GraphicOverlay;)V", "draw", "", "canvas", "Landroid/graphics/Canvas;", "drawRect", "left", "", RRWebVideoEvent.JsonKeys.TOP, "right", "bottom", "paint", "Landroid/graphics/Paint;", "drawText", "text", "", "x", "y", "scale", "imagePixel", "applicationContext", "Landroid/content/Context;", "getApplicationContext", "()Landroid/content/Context;", "isImageFlipped", "", "translateX", "translateY", "getTransformationMatrix", "Landroid/graphics/Matrix;", "postInvalidate", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static abstract class Graphic {
        private final GraphicOverlay overlay;

        public abstract void draw(Canvas canvas);

        public Graphic(GraphicOverlay overlay) {
            Intrinsics.checkNotNullParameter(overlay, "overlay");
            this.overlay = overlay;
        }

        protected final void drawRect(Canvas canvas, float left, float top, float right, float bottom, Paint paint) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNull(paint);
            canvas.drawRect(left, top, right, bottom, paint);
        }

        protected final void drawText(Canvas canvas, String text, float x, float y, Paint paint) {
            Intrinsics.checkNotNullParameter(canvas, "canvas");
            Intrinsics.checkNotNull(text);
            Intrinsics.checkNotNull(paint);
            canvas.drawText(text, x, y, paint);
        }

        public final float scale(float imagePixel) {
            return imagePixel * this.overlay.scaleFactor;
        }

        public final Context getApplicationContext() {
            Context applicationContext = this.overlay.getContext().getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            return applicationContext;
        }

        public final boolean isImageFlipped() {
            return this.overlay.isImageFlipped;
        }

        public final float translateX(float x) {
            return this.overlay.isImageFlipped ? this.overlay.getWidth() - (scale(x) - this.overlay.postScaleWidthOffset) : scale(x) - this.overlay.postScaleWidthOffset;
        }

        public final float translateY(float y) {
            return scale(y) - this.overlay.postScaleHeightOffset;
        }

        public final Matrix getTransformationMatrix() {
            return this.overlay.transformationMatrix;
        }

        public final void postInvalidate() {
            this.overlay.postInvalidate();
        }
    }

    public final void clear() {
        synchronized (this.lock) {
            this.graphics.clear();
            Unit unit = Unit.INSTANCE;
        }
        postInvalidate();
    }

    public final void add(Graphic graphic) {
        Intrinsics.checkNotNullParameter(graphic, "graphic");
        synchronized (this.lock) {
            this.graphics.add(graphic);
        }
    }

    public final void remove(Graphic graphic) {
        Intrinsics.checkNotNullParameter(graphic, "graphic");
        synchronized (this.lock) {
            this.graphics.remove(graphic);
        }
        postInvalidate();
    }

    public final void setImageSourceInfo(int imageWidth, int imageHeight, boolean isFlipped) {
        synchronized (this.lock) {
            this.imageWidth = imageWidth;
            this.imageHeight = imageHeight;
            this.isImageFlipped = isFlipped;
            this.needUpdateTransformation = true;
            Unit unit = Unit.INSTANCE;
        }
        postInvalidate();
    }

    private final void updateTransformationIfNeeded() {
        if (!this.needUpdateTransformation || this.imageWidth <= 0 || this.imageHeight <= 0) {
            return;
        }
        float width = getWidth() / getHeight();
        float f = this.imageWidth / this.imageHeight;
        this.postScaleWidthOffset = 0.0f;
        this.postScaleHeightOffset = 0.0f;
        if (width > f) {
            this.scaleFactor = getWidth() / this.imageWidth;
            this.postScaleHeightOffset = ((getWidth() / f) - getHeight()) / 2.0f;
        } else {
            this.scaleFactor = getHeight() / this.imageHeight;
            this.postScaleWidthOffset = ((getHeight() * f) - getWidth()) / 2.0f;
        }
        this.transformationMatrix.reset();
        Matrix matrix = this.transformationMatrix;
        float f2 = this.scaleFactor;
        matrix.setScale(f2, f2);
        this.transformationMatrix.postTranslate(-this.postScaleWidthOffset, -this.postScaleHeightOffset);
        if (this.isImageFlipped) {
            this.transformationMatrix.postScale(-1.0f, 1.0f, getWidth() / 2.0f, getHeight() / 2.0f);
        }
        this.needUpdateTransformation = false;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        synchronized (this.lock) {
            updateTransformationIfNeeded();
            Iterator<Graphic> it = this.graphics.iterator();
            while (it.hasNext()) {
                it.next().draw(canvas);
            }
            Unit unit = Unit.INSTANCE;
        }
    }
}
