package fast.dic.dict.utils;

import android.view.View;
import com.ironsource.U3;
import com.mbridge.msdk.MBridgeConstans;
import kotlin.Metadata;

/* JADX INFO: compiled from: RecyclerItemClickListener.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH&J\u001a\u0010\n\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH&¨\u0006\u000b"}, d2 = {"Lfast/dic/dict/utils/OnItemClickListener;", "", "<init>", "()V", "onItemClick", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/view/View;", U3.i.L, "", "onItemLongClick", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class OnItemClickListener {
    public abstract void onItemClick(View view, int position);

    public abstract void onItemLongClick(View view, int position);
}
