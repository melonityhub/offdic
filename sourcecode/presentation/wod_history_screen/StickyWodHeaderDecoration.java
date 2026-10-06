package fast.dic.dict.presentation.wod_history_screen;

import android.graphics.Canvas;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.aps.shared.metrics.model.ApsMetricsDataMap;
import com.ironsource.L6;
import com.mbridge.msdk.MBridgeConstans;
import fast.dic.dict.databinding.WodHeaderItemLayoutBinding;
import fast.dic.dict.models.WodHistoryMonthDto;
import fast.dic.dict.utils.IntExtKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StickyHeaderDecoration.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001!B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J \u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\tH\u0002J\u0018\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u0013H\u0002J \u0010\u0019\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u001b\u001a\u00020\u0013H\u0002J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\tH\u0002J\u0018\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", L6.G1, "Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;", "isCurrentLangPersian", "", "<init>", "(Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;Z)V", "stickyHeaderHeight", "", "onDrawOver", "", ApsMetricsDataMap.APSMETRICS_FIELD_CUSTOM, "Landroid/graphics/Canvas;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", "state", "Landroidx/recyclerview/widget/RecyclerView$State;", "getHeaderViewForItem", "Landroid/view/View;", "itemPosition", "getMonth", "", "drawHeader", "header", "moveHeader", "currentHeader", "nextHeader", "getChildInContact", "contactPoint", "fixLayoutSize", "Landroid/view/ViewGroup;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "ViewHolder", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class StickyWodHeaderDecoration extends RecyclerView.ItemDecoration {
    private final WodMonthHistoryAdapter adapter;
    private final boolean isCurrentLangPersian;
    private int stickyHeaderHeight;

    public StickyWodHeaderDecoration(WodMonthHistoryAdapter adapter, boolean z) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.adapter = adapter;
        this.isCurrentLangPersian = z;
        this.stickyHeaderHeight = 80;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDrawOver(Canvas c, RecyclerView parent, RecyclerView.State state) {
        int childAdapterPosition;
        Intrinsics.checkNotNullParameter(c, "c");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        super.onDrawOver(c, parent, state);
        View childAt = parent.getChildAt(0);
        if (childAt == null || (childAdapterPosition = parent.getChildAdapterPosition(childAt)) == -1) {
            return;
        }
        View headerViewForItem = getHeaderViewForItem(childAdapterPosition, parent);
        fixLayoutSize(parent, headerViewForItem);
        drawHeader(c, headerViewForItem);
    }

    private final View getHeaderViewForItem(int itemPosition, RecyclerView parent) {
        WodHeaderItemLayoutBinding wodHeaderItemLayoutBindingInflate = WodHeaderItemLayoutBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(wodHeaderItemLayoutBindingInflate, "inflate(...)");
        ViewHolder viewHolder = new ViewHolder(wodHeaderItemLayoutBindingInflate);
        viewHolder.setBind(getMonth(itemPosition));
        View itemView = viewHolder.itemView;
        Intrinsics.checkNotNullExpressionValue(itemView, "itemView");
        return itemView;
    }

    private final String getMonth(int itemPosition) {
        WodHistoryMonthDto wodHistoryMonthDto = this.adapter.getCurrentList().get(itemPosition);
        if (wodHistoryMonthDto == null) {
            return "";
        }
        if (wodHistoryMonthDto.getWord().length() == 0) {
            return wodHistoryMonthDto.getMonth();
        }
        return IntExtKt.getMonthName(Integer.parseInt(wodHistoryMonthDto.getMonth()), this.isCurrentLangPersian);
    }

    private final void drawHeader(Canvas c, View header) {
        c.save();
        c.translate(0.0f, 0.0f);
        header.draw(c);
        c.restore();
    }

    private final void moveHeader(Canvas c, View currentHeader, View nextHeader) {
        c.save();
        c.translate(0.0f, nextHeader.getTop() - currentHeader.getHeight());
        currentHeader.draw(c);
        c.restore();
    }

    private final View getChildInContact(RecyclerView parent, int contactPoint) {
        int childCount = parent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = parent.getChildAt(i);
            if (childAt.getBottom() > contactPoint && childAt.getTop() <= contactPoint) {
                return childAt;
            }
        }
        return null;
    }

    private final void fixLayoutSize(ViewGroup parent, View view) {
        view.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(parent.getWidth(), 1073741824), parent.getPaddingLeft() + parent.getPaddingRight(), view.getLayoutParams().width), ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(parent.getHeight(), 0), parent.getPaddingTop() + parent.getPaddingBottom(), view.getLayoutParams().height));
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        this.stickyHeaderHeight = measuredHeight;
        Unit unit = Unit.INSTANCE;
        view.layout(0, 0, measuredWidth, measuredHeight);
    }

    /* JADX INFO: compiled from: StickyHeaderDecoration.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/wod_history_screen/StickyWodHeaderDecoration$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;", "<init>", "(Lfast/dic/dict/databinding/WodHeaderItemLayoutBinding;)V", "setBind", "", "date", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final WodHeaderItemLayoutBinding binding;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(WodHeaderItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
        }

        public final void setBind(String date) {
            Intrinsics.checkNotNullParameter(date, "date");
            this.binding.setDate(date);
            this.binding.wordTitle.setText(date);
            this.itemView.setTag("header");
        }
    }
}
