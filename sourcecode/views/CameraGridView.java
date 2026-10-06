package fast.dic.dict.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CameraGridView.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0014R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lfast/dic/dict/views/CameraGridView;", "Landroid/view/View;", Names.CONTEXT, "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "paint", "Landroid/graphics/Paint;", "onDraw", "", "canvas", "Landroid/graphics/Canvas;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class CameraGridView extends View {
    private final Paint paint;

    public CameraGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.paint = new Paint();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        int width = getWidth();
        int height = getHeight();
        this.paint.setAntiAlias(true);
        this.paint.setStrokeWidth(2.0f);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setColor(ColorUtils.setAlphaComponent(ContextCompat.getColor(getContext(), R.color.white), 127));
        float f = width / 3;
        float f2 = height;
        canvas.drawLine(f, 0.0f, f, f2, this.paint);
        float f3 = (width * 2) / 3;
        canvas.drawLine(f3, 0.0f, f3, f2, this.paint);
        float f4 = height / 3;
        float f5 = width;
        canvas.drawLine(0.0f, f4, f5, f4, this.paint);
        float f6 = (height * 2) / 3;
        canvas.drawLine(0.0f, f6, f5, f6, this.paint);
    }
}
