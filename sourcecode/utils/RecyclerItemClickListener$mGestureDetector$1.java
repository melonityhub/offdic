package fast.dic.dict.utils;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RecyclerItemClickListener.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\b"}, d2 = {"fast/dic/dict/utils/RecyclerItemClickListener$mGestureDetector$1", "Landroid/view/GestureDetector$SimpleOnGestureListener;", "onSingleTapUp", "", "e", "Landroid/view/MotionEvent;", "onLongPress", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class RecyclerItemClickListener$mGestureDetector$1 extends GestureDetector.SimpleOnGestureListener {
    final /* synthetic */ RecyclerItemClickListener this$0;

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        return true;
    }

    RecyclerItemClickListener$mGestureDetector$1() {
        this = recyclerItemClickListener;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent e) {
        Intrinsics.checkNotNullParameter(e, "e");
        View viewFindChildViewUnder = recyclerView.findChildViewUnder(e.getX(), e.getY());
        if (viewFindChildViewUnder == null || this.mListener == null) {
            return;
        }
        this.mListener.onItemLongClick(viewFindChildViewUnder, recyclerView.getChildAdapterPosition(viewFindChildViewUnder));
    }
}
