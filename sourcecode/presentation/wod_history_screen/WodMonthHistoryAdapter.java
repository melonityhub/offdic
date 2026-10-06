package fast.dic.dict.presentation.wod_history_screen;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import fast.dic.dict.databinding.WodHeaderItemLayoutBinding;
import fast.dic.dict.databinding.WodHistoryRowItemLayoutBinding;
import fast.dic.dict.models.WodHistoryMonthDto;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WodMonthHistoryAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002 !B\r\b\u0007\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u001bH\u0016J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001bH\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\t\"\u0004\b\n\u0010\u000bR5\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0004\u0012\u00020\u00120\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\""}, d2 = {"Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/models/WodHistoryMonthDto;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "<init>", "()V", "Ljavax/inject/Inject;", "isPersianLanguage", "", "()Z", "setPersianLanguage", "(Z)V", "onItemClick", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "word", "", "getOnItemClick", "()Lkotlin/jvm/functions/Function1;", "setOnItemClick", "(Lkotlin/jvm/functions/Function1;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "holder", U3.i.L, "getItemViewType", "ViewHolder", "DiffCallback", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class WodMonthHistoryAdapter extends ListAdapter<WodHistoryMonthDto, RecyclerView.ViewHolder> {
    private boolean isPersianLanguage;
    private Function1<? super String, Unit> onItemClick;

    @Inject
    public WodMonthHistoryAdapter() {
        super(new DiffCallback());
        this.onItemClick = new Function1() { // from class: fast.dic.dict.presentation.wod_history_screen.WodMonthHistoryAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WodMonthHistoryAdapter.onItemClick$lambda$0((String) obj);
            }
        };
    }

    /* JADX INFO: renamed from: isPersianLanguage, reason: from getter */
    public final boolean getIsPersianLanguage() {
        return this.isPersianLanguage;
    }

    public final void setPersianLanguage(boolean z) {
        this.isPersianLanguage = z;
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
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (viewType == 1) {
            WodHeaderItemLayoutBinding wodHeaderItemLayoutBindingInflate = WodHeaderItemLayoutBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
            Intrinsics.checkNotNullExpressionValue(wodHeaderItemLayoutBindingInflate, "inflate(...)");
            return new StickyWodHeaderDecoration.ViewHolder(wodHeaderItemLayoutBindingInflate);
        }
        WodHistoryRowItemLayoutBinding wodHistoryRowItemLayoutBindingInflate = WodHistoryRowItemLayoutBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(wodHistoryRowItemLayoutBindingInflate, "inflate(...)");
        return new ViewHolder(this, wodHistoryRowItemLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof ViewHolder) {
            WodHistoryMonthDto item = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
            ((ViewHolder) holder).setBind(item);
        } else if (holder instanceof StickyWodHeaderDecoration.ViewHolder) {
            ((StickyWodHeaderDecoration.ViewHolder) holder).setBind(getItem(position).getMonth());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return getItem(position).getWord().length() == 0 ? 1 : 0;
    }

    /* JADX INFO: compiled from: WodMonthHistoryAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;Lfast/dic/dict/databinding/WodHistoryRowItemLayoutBinding;)V", "setBind", "", "model", "Lfast/dic/dict/models/WodHistoryMonthDto;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final WodHistoryRowItemLayoutBinding binding;
        final /* synthetic */ WodMonthHistoryAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(final WodMonthHistoryAdapter wodMonthHistoryAdapter, WodHistoryRowItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = wodMonthHistoryAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.wod_history_screen.WodMonthHistoryAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WodMonthHistoryAdapter.ViewHolder._init_$lambda$0(wodMonthHistoryAdapter, this, view);
                }
            });
        }

        static final void _init_$lambda$0(WodMonthHistoryAdapter wodMonthHistoryAdapter, ViewHolder viewHolder, View view) {
            Function1<String, Unit> onItemClick = wodMonthHistoryAdapter.getOnItemClick();
            String word = viewHolder.binding.getWord();
            Intrinsics.checkNotNull(word);
            onItemClick.invoke(word);
        }

        public final void setBind(WodHistoryMonthDto model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setWord(model.getWord());
            boolean isPersianLanguage = this.this$0.getIsPersianLanguage();
            WodHistoryRowItemLayoutBinding wodHistoryRowItemLayoutBinding = this.binding;
            if (isPersianLanguage) {
                wodHistoryRowItemLayoutBinding.setDate(model.getDateJalali());
            } else {
                wodHistoryRowItemLayoutBinding.setDate(model.getPublishDate());
            }
        }
    }

    /* JADX INFO: compiled from: WodMonthHistoryAdapter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter$DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lfast/dic/dict/models/WodHistoryMonthDto;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallback extends DiffUtil.ItemCallback<WodHistoryMonthDto> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(WodHistoryMonthDto oldItem, WodHistoryMonthDto newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getWord(), newItem.getWord());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(WodHistoryMonthDto oldItem, WodHistoryMonthDto newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getWord(), newItem.getWord());
        }
    }
}
