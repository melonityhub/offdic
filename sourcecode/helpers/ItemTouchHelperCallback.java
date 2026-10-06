package fast.dic.dict.helpers;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.L6;
import fast.dic.dict.interfaces.ItemTouchHelperAdapter;
import fast.dic.dict.interfaces.ItemTouchHelperViewHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ItemTouchHelperCallback.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\t\u0010\nJ\b\u0010\f\u001a\u00020\u0005H\u0016J\b\u0010\r\u001a\u00020\u0005H\u0016J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J \u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0013H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u000fH\u0016J\u001a\u0010\u001a\u001a\u00020\u00182\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001b\u001a\u00020\u000fH\u0016J\u0018\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lfast/dic/dict/helpers/ItemTouchHelperCallback;", "Landroidx/recyclerview/widget/ItemTouchHelper$Callback;", L6.G1, "Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;", "enableEditing", "", "changeAllPositions", "disableSelection", "disableSlideAnimation", "<init>", "(Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;ZZZZ)V", "mAdapter", "isLongPressDragEnabled", "isItemViewSwipeEnabled", "getMovementFlags", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "onMove", "source", TypedValues.AttributesType.S_TARGET, "onSwiped", "", "i", "onSelectedChanged", "actionState", "clearView", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class ItemTouchHelperCallback extends ItemTouchHelper.Callback {
    private final boolean changeAllPositions;
    private final boolean disableSelection;
    private final boolean disableSlideAnimation;
    private final boolean enableEditing;
    private final ItemTouchHelperAdapter mAdapter;

    public ItemTouchHelperCallback(ItemTouchHelperAdapter adapter, boolean z, boolean z2, boolean z3, boolean z4) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.enableEditing = z;
        this.changeAllPositions = z2;
        this.disableSelection = z3;
        this.disableSlideAnimation = z4;
        this.mAdapter = adapter;
    }

    public /* synthetic */ ItemTouchHelperCallback(ItemTouchHelperAdapter itemTouchHelperAdapter, boolean z, boolean z2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(itemTouchHelperAdapter, (i & 2) != 0 ? false : z, (i & 4) != 0 ? false : z2, (i & 8) != 0 ? false : z3, (i & 16) != 0 ? false : z4);
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean isLongPressDragEnabled() {
        return this.enableEditing;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    /* JADX INFO: renamed from: isItemViewSwipeEnabled, reason: from getter */
    public boolean getEnableEditing() {
        return this.enableEditing;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (this.enableEditing) {
            return ItemTouchHelper.Callback.makeMovementFlags(3, this.disableSlideAnimation ? 0 : 48);
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder source, RecyclerView.ViewHolder target) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(target, "target");
        if (!this.changeAllPositions) {
            if (source.getItemViewType() != target.getItemViewType()) {
                return false;
            }
            if (source.getAbsoluteAdapterPosition() == 0 && source.getAbsoluteAdapterPosition() == 1) {
                return false;
            }
        }
        this.mAdapter.onItemMove(source.getAbsoluteAdapterPosition(), target.getAbsoluteAdapterPosition());
        return true;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int i) {
        int absoluteAdapterPosition;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (!this.disableSlideAnimation && (absoluteAdapterPosition = viewHolder.getAbsoluteAdapterPosition()) >= 0) {
            this.mAdapter.onItemDismiss(absoluteAdapterPosition);
            this.mAdapter.onSwiped(absoluteAdapterPosition);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int actionState) {
        if (this.disableSelection && actionState != 0) {
            ItemTouchHelperViewHolder itemTouchHelperViewHolder = viewHolder instanceof ItemTouchHelperViewHolder ? (ItemTouchHelperViewHolder) viewHolder : null;
            if (itemTouchHelperViewHolder != null) {
                itemTouchHelperViewHolder.onItemSelected();
            }
        }
        super.onSelectedChanged(viewHolder, actionState);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        super.clearView(recyclerView, viewHolder);
        ItemTouchHelperViewHolder itemTouchHelperViewHolder = viewHolder instanceof ItemTouchHelperViewHolder ? (ItemTouchHelperViewHolder) viewHolder : null;
        if (itemTouchHelperViewHolder != null) {
            itemTouchHelperViewHolder.onItemClear();
        }
    }
}
