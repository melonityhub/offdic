package fast.dic.dict.presentation.favorite_folders_screen;

import android.content.Context;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.utils.SwipeToDeleteCallback;
import fast.dic.dict.utils.ViewExtKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RecyclerViewBinder.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JG\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\f¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000f\u0012\u0004\u0012\u00020\u00100\u000b2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0012¨\u0006\u0013"}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/RecyclerViewBinder;", "", "<init>", "()V", "bind", "Landroidx/recyclerview/widget/ItemTouchHelper;", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", Names.CONTEXT, "Landroid/content/Context;", "onSwiped", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", U3.i.L, "", "onLoadMore", "Lkotlin/Function0;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class RecyclerViewBinder {
    public static final RecyclerViewBinder INSTANCE = new RecyclerViewBinder();

    private RecyclerViewBinder() {
    }

    public final ItemTouchHelper bind(RecyclerView recyclerView, final Context context, final Function1<? super Integer, Unit> onSwiped, final Function0<Unit> onLoadMore) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(onSwiped, "onSwiped");
        Intrinsics.checkNotNullParameter(onLoadMore, "onLoadMore");
        ViewExtKt.addDivider(recyclerView);
        recyclerView.setHasFixedSize(true);
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new SwipeToDeleteCallback(context) { // from class: fast.dic.dict.presentation.favorite_folders_screen.RecyclerViewBinder$bind$swipeCallback$1
            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public void onSwiped(RecyclerView.ViewHolder viewHolder, int direction) {
                Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
                int absoluteAdapterPosition = viewHolder.getAbsoluteAdapterPosition();
                if (absoluteAdapterPosition >= 0) {
                    onSwiped.invoke(Integer.valueOf(absoluteAdapterPosition));
                }
            }
        });
        itemTouchHelper.attachToRecyclerView(recyclerView);
        recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: fast.dic.dict.presentation.favorite_folders_screen.RecyclerViewBinder.bind.1
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView2, int dx, int dy) {
                Intrinsics.checkNotNullParameter(recyclerView2, "recyclerView");
                super.onScrolled(recyclerView2, dx, dy);
                RecyclerView.Adapter adapter = recyclerView2.getAdapter();
                int itemCount = adapter != null ? adapter.getItemCount() : 0;
                RecyclerView.LayoutManager layoutManager = recyclerView2.getLayoutManager();
                LinearLayoutManager linearLayoutManager = layoutManager instanceof LinearLayoutManager ? (LinearLayoutManager) layoutManager : null;
                if (linearLayoutManager == null || linearLayoutManager.findLastCompletelyVisibleItemPosition() != itemCount - 1) {
                    return;
                }
                onLoadMore.invoke();
            }
        });
        return itemTouchHelper;
    }
}
