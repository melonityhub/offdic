package fast.dic.dict.interfaces;

import com.ironsource.U3;
import kotlin.Metadata;

/* JADX INFO: compiled from: ItemTouchHelperAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0005H&¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;", "", "onItemMove", "", "fromPosition", "", "toPosition", "onItemDismiss", U3.i.L, "onSwiped", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public interface ItemTouchHelperAdapter {
    void onItemDismiss(int position);

    void onItemMove(int fromPosition, int toPosition);

    void onSwiped(int position);
}
