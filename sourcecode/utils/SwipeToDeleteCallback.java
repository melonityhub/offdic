package fast.dic.dict.utils;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.aps.shared.metrics.model.ApsMetricsDataMap;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import io.appmetrica.analytics.impl.A2;
import io.sentry.rrweb.RRWebVideoEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SwipeToDeleteCallback.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J \u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0015H\u0016J@\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\u0017H\u0016J2\u0010\"\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\u001eH\u0002R\u0015\u0010\u0006\u001a\t\u0018\u00010\u0007¢\u0006\u0002\b\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lfast/dic/dict/utils/SwipeToDeleteCallback;", "Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;", Names.CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "deleteIcon", "Landroid/graphics/drawable/Drawable;", "Lorg/jspecify/annotations/Nullable;", "intrinsicWidth", "", "intrinsicHeight", A2.g, "Landroid/graphics/drawable/ColorDrawable;", "backgroundColor", "clearPaint", "Landroid/graphics/Paint;", "getMovementFlags", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onMove", "", TypedValues.AttributesType.S_TARGET, "onChildDraw", "", ApsMetricsDataMap.APSMETRICS_FIELD_CUSTOM, "Landroid/graphics/Canvas;", "dX", "", "dY", "actionState", "isCurrentlyActive", "clearCanvas", "left", RRWebVideoEvent.JsonKeys.TOP, "right", "bottom", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class SwipeToDeleteCallback extends ItemTouchHelper.SimpleCallback {
    private final ColorDrawable background;
    private final int backgroundColor;
    private final Paint clearPaint;
    private final Drawable deleteIcon;
    private final int intrinsicHeight;
    private final int intrinsicWidth;

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder target) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        Intrinsics.checkNotNullParameter(target, "target");
        return false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeToDeleteCallback(Context context) {
        super(0, 4);
        Intrinsics.checkNotNullParameter(context, "context");
        Drawable drawable = ContextCompat.getDrawable(context, R.drawable.delete_icon);
        this.deleteIcon = drawable;
        this.intrinsicWidth = drawable != null ? drawable.getIntrinsicWidth() : 25;
        this.intrinsicHeight = drawable != null ? drawable.getIntrinsicHeight() : 25;
        this.background = new ColorDrawable();
        this.backgroundColor = Color.parseColor("#f44336");
        Paint paint = new Paint();
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.clearPaint = paint;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.SimpleCallback, androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        return super.getMovementFlags(recyclerView, viewHolder);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onChildDraw(Canvas c, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float dX, float dY, int actionState, boolean isCurrentlyActive) {
        Intrinsics.checkNotNullParameter(c, "c");
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        View itemView = viewHolder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        int bottom = itemView.getBottom() - itemView.getTop();
        if (dX == 0.0f && !isCurrentlyActive) {
            clearCanvas(c, itemView.getRight() + dX, itemView.getTop(), itemView.getRight(), itemView.getBottom());
            super.onChildDraw(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
            return;
        }
        this.background.setColor(this.backgroundColor);
        this.background.setBounds(itemView.getRight() + ((int) dX), itemView.getTop(), itemView.getRight(), itemView.getBottom());
        this.background.draw(c);
        int top = itemView.getTop();
        int i = this.intrinsicHeight;
        int i2 = top + ((bottom - i) / 2);
        int i3 = (bottom - i) / 2;
        int right = (itemView.getRight() - i3) - this.intrinsicWidth;
        int right2 = itemView.getRight() - i3;
        int i4 = this.intrinsicHeight + i2;
        Drawable drawable = this.deleteIcon;
        if (drawable != null) {
            drawable.setBounds(right, i2, right2, i4);
        }
        Drawable drawable2 = this.deleteIcon;
        if (drawable2 != null) {
            drawable2.draw(c);
        }
        super.onChildDraw(c, recyclerView, viewHolder, dX, dY, actionState, isCurrentlyActive);
    }

    private final void clearCanvas(Canvas c, float left, float top, float right, float bottom) {
        if (c != null) {
            c.drawRect(left, top, right, bottom, this.clearPaint);
        }
    }
}
