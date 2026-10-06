package fast.dic.dict.utils;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.MBridgeConstans;
import com.yandex.div.core.dagger.Names;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RecyclerItemClickListener.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0018\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0010H\u0016J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\rH\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lfast/dic/dict/utils/RecyclerItemClickListener;", "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;", Names.CONTEXT, "Landroid/content/Context;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "mListener", "Lfast/dic/dict/utils/OnItemClickListener;", "<init>", "(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lfast/dic/dict/utils/OnItemClickListener;)V", "mGestureDetector", "Landroid/view/GestureDetector;", "onInterceptTouchEvent", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "e", "Landroid/view/MotionEvent;", "onTouchEvent", "", "motionEvent", "onRequestDisallowInterceptTouchEvent", "disallowIntercept", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public class RecyclerItemClickListener implements RecyclerView.OnItemTouchListener {
    private final GestureDetector mGestureDetector;
    private final OnItemClickListener mListener;

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public void onTouchEvent(RecyclerView view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
    }

    public RecyclerItemClickListener(Context context, final RecyclerView recyclerView, OnItemClickListener onItemClickListener) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.mListener = onItemClickListener;
        this.mGestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: fast.dic.dict.utils.RecyclerItemClickListener$mGestureDetector$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent e) {
                Intrinsics.checkNotNullParameter(e, "e");
                return true;
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
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
    public boolean onInterceptTouchEvent(RecyclerView view, MotionEvent e) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(e, "e");
        View viewFindChildViewUnder = view.findChildViewUnder(e.getX(), e.getY());
        if (viewFindChildViewUnder == null || this.mListener == null || !this.mGestureDetector.onTouchEvent(e)) {
            return false;
        }
        this.mListener.onItemClick(viewFindChildViewUnder, view.getChildAdapterPosition(viewFindChildViewUnder));
        return false;
    }
}
