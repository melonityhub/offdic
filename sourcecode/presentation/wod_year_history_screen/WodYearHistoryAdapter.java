package fast.dic.dict.presentation.wod_year_history_screen;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import fast.dic.dict.databinding.WodHistoryYearRowItemLayoutBinding;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WodYearHistoryAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0019\u001aB\r\b\u0007\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\u0011\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001c\u0010\u0016\u001a\u00020\f2\n\u0010\u0017\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0015H\u0016R5\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "", "Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;", "<init>", "()V", "Ljavax/inject/Inject;", "onItemClick", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "year", "", "getOnItemClick", "()Lkotlin/jvm/functions/Function1;", "setOnItemClick", "(Lkotlin/jvm/functions/Function1;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "holder", U3.i.L, "ViewHolder", "DiffCallback", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class WodYearHistoryAdapter extends ListAdapter<String, ViewHolder> {
    private Function1<? super String, Unit> onItemClick;

    @Inject
    public WodYearHistoryAdapter() {
        super(new DiffCallback());
        this.onItemClick = new Function1() { // from class: fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WodYearHistoryAdapter.onItemClick$lambda$0((String) obj);
            }
        };
    }

    static final Unit onItemClick$lambda$0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public final Function1<String, Unit> getOnItemClick() {
        return this.onItemClick;
    }

    public final void setOnItemClick(Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onItemClick = function1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        WodHistoryYearRowItemLayoutBinding wodHistoryYearRowItemLayoutBindingInflate = WodHistoryYearRowItemLayoutBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(wodHistoryYearRowItemLayoutBindingInflate, "inflate(...)");
        return new ViewHolder(this, wodHistoryYearRowItemLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        String item = getItem(position);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
        holder.setBind(item);
    }

    /* JADX INFO: compiled from: WodYearHistoryAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;Lfast/dic/dict/databinding/WodHistoryYearRowItemLayoutBinding;)V", "setBind", "", "model", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final WodHistoryYearRowItemLayoutBinding binding;
        final /* synthetic */ WodYearHistoryAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(final WodYearHistoryAdapter wodYearHistoryAdapter, WodHistoryYearRowItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = wodYearHistoryAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WodYearHistoryAdapter.ViewHolder._init_$lambda$0(wodYearHistoryAdapter, this, view);
                }
            });
        }

        static final void _init_$lambda$0(WodYearHistoryAdapter wodYearHistoryAdapter, ViewHolder viewHolder, View view) {
            Function1<String, Unit> onItemClick = wodYearHistoryAdapter.getOnItemClick();
            String year = viewHolder.binding.getYear();
            Intrinsics.checkNotNull(year);
            onItemClick.invoke(year);
        }

        public final void setBind(String model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setYear(model);
        }
    }

    /* JADX INFO: compiled from: WodYearHistoryAdapter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter$DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallback extends DiffUtil.ItemCallback<String> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(String oldItem, String newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(String oldItem, String newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }
}
