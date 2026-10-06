package fast.dic.dict.presentation.favorite_folders_screen;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.utils.SwipeToDeleteCallback;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RecyclerViewBinder.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\b"}, d2 = {"fast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder$bind$swipeCallback$1", "Lfast/dic/dict/utils/SwipeToDeleteCallback;", "onSwiped", "", "viewHolder", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "direction", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class RecyclerViewBinder$bind$swipeCallback$1 extends SwipeToDeleteCallback {
    final /* synthetic */ Function1<Integer, Unit> $onSwiped;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    RecyclerViewBinder$bind$swipeCallback$1(Context context) {
        super(context);
        onSwiped = function1;
    }

    @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
    public void onSwiped(RecyclerView.ViewHolder viewHolder, int direction) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        int absoluteAdapterPosition = viewHolder.getAbsoluteAdapterPosition();
        if (absoluteAdapterPosition >= 0) {
            onSwiped.invoke(Integer.valueOf(absoluteAdapterPosition));
        }
    }
}
