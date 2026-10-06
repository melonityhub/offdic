package fast.dic.dict.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.yandex.div.core.dagger.Names;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SiriVisualView.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0014\u0010\u0016\u001a\u00020\u00172\f\b\u0001\u0010\u0018\u001a\u00020\u0019:\u0002\b\u001aJ\u0014\u0010\u001b\u001a\u00020\u00172\f\b\u0001\u0010\u0018\u001a\u00020\u0019:\u0002\b\u001aJ\u000e\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0015J\u000e\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\tJ\u000e\u0010 \u001a\u00020\u00172\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010!\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#H\u0014J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#H\u0002R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lfast/dic/dict/views/SiriVisualView;", "Landroid/view/View;", Names.CONTEXT, "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", TypedValues.CycleType.S_WAVE_PHASE, "", "amplitude", "frequency", "idleAmplitude", "numberOfWaves", "phaseShift", "waveLineWidth", "density", "mPrimaryPaintColor", "Landroid/graphics/Paint;", "mSecondaryPaintColor", "isStraightLine", "", "updatePrimaryViewColor", "", "color", "", "Landroidx/annotation/ColorInt;", "updateSecondaryViewColor", "updateSpeaking", "isSpeaking", "updateAmplitude", "amply", "updateSpeed", "onDraw", "canvas", "Landroid/graphics/Canvas;", "drawWave", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SiriVisualView extends View {
    private float amplitude;
    private float density;
    private float frequency;
    private float idleAmplitude;
    private boolean isStraightLine;
    private Paint mPrimaryPaintColor;
    private Paint mSecondaryPaintColor;
    private float numberOfWaves;
    private float phase;
    private float phaseShift;
    private float waveLineWidth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SiriVisualView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.amplitude = 1.5f;
        this.frequency = 1.2f;
        this.idleAmplitude = 0.05f;
        this.numberOfWaves = 3.0f;
        this.phaseShift = -0.1f;
        this.waveLineWidth = 2.0f;
        this.density = 5.0f;
        this.mPrimaryPaintColor = new Paint();
        this.mSecondaryPaintColor = new Paint();
    }

    public /* synthetic */ SiriVisualView(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    public final void updatePrimaryViewColor(int color) {
        this.mPrimaryPaintColor.setColor(color);
    }

    public final void updateSecondaryViewColor(int color) {
        this.mSecondaryPaintColor.setColor(color);
    }

    public final void updateSpeaking(boolean isSpeaking) {
        this.isStraightLine = isSpeaking;
    }

    public final void updateAmplitude(float amply) {
        this.amplitude = Math.max(amply, this.idleAmplitude);
    }

    public final void updateSpeed(float phase) {
        this.phaseShift = phase;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        drawWave(canvas);
    }

    private final void drawWave(Canvas canvas) {
        Path path;
        Canvas canvas2 = canvas;
        float f = 2.0f;
        if (!this.isStraightLine) {
            int progressionLastElement = ProgressionUtilKt.getProgressionLastElement(5, -5, -5);
            if (progressionLastElement <= 5) {
                int i = 5;
                while (true) {
                    canvas2.drawLine(i, getHeight() / 2.0f, getWidth(), getHeight() / 2.0f, this.mPrimaryPaintColor);
                    if (i == progressionLastElement) {
                        break;
                    }
                    i -= 5;
                    canvas2 = canvas;
                }
            }
        } else {
            int i2 = 0;
            while (true) {
                float f2 = i2;
                if (f2 > this.numberOfWaves) {
                    break;
                }
                this.mPrimaryPaintColor.setStrokeWidth(this.waveLineWidth);
                this.mSecondaryPaintColor.setStrokeWidth(this.waveLineWidth);
                float height = getHeight() / f;
                float width = getWidth();
                float f3 = width / f;
                float f4 = height - 4.0f;
                float f5 = 1.0f;
                float f6 = (((1.0f - (f2 / this.numberOfWaves)) * 1.5f) - 0.5f) * this.amplitude;
                Path path2 = new Path();
                float f7 = 0.0f;
                while (f7 <= this.density + width) {
                    float f8 = f;
                    float f9 = f4;
                    Path path3 = path2;
                    float fSin = (float) ((((double) (((float) ((-Math.pow(((double) (f5 / f3)) * ((double) (f7 - f3)), 2.0d)) + 1.0d)) * f9 * f6)) * Math.sin((((double) (f7 / width)) * 6.283185307179586d * ((double) this.frequency)) + ((double) this.phase))) + ((double) height));
                    if (f7 == 0.0f) {
                        path = path3;
                        path.moveTo(f7, fSin);
                    } else {
                        path = path3;
                        path.lineTo(f7, fSin);
                    }
                    f7 += this.density;
                    path2 = path;
                    f = f8;
                    f4 = f9;
                    f5 = 1.0f;
                }
                float f10 = f;
                Path path4 = path2;
                this.mPrimaryPaintColor.setStyle(Paint.Style.STROKE);
                this.mPrimaryPaintColor.setAntiAlias(true);
                this.mSecondaryPaintColor.setAntiAlias(true);
                this.mSecondaryPaintColor.setStyle(Paint.Style.STROKE);
                if (i2 == 0) {
                    canvas2.drawPath(path4, this.mPrimaryPaintColor);
                } else {
                    canvas2.drawPath(path4, this.mSecondaryPaintColor);
                }
                i2++;
                f = f10;
            }
        }
        this.phase += this.phaseShift;
        invalidate();
    }
}
