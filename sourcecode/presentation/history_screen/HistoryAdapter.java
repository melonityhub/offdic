package fast.dic.dict.presentation.history_screen;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import fast.dic.dict.R;
import fast.dic.dict.databinding.HistoryEnItemLayoutBinding;
import fast.dic.dict.databinding.HistoryPeItemLayoutBinding;
import fast.dic.dict.databinding.LastItemHisotryLayoutBinding;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.utils.Category;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.StringExtKt;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HistoryAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0005\u0017\u0018\u0019\u001a\u001bB\r\b\u0007\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\tH\u0016J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\tH\u0016J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\tH\u0016R.\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u001c"}, d2 = {"Lfast/dic/dict/presentation/history_screen/HistoryAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/models/database/ListModel;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "<init>", "()V", "Ljavax/inject/Inject;", "onSelectedAction", "Lkotlin/Function2;", "", "", "getOnSelectedAction", "()Lkotlin/jvm/functions/Function2;", "setOnSelectedAction", "(Lkotlin/jvm/functions/Function2;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", U3.i.L, "getItemViewType", "EnViewHolder", "PeViewHolder", "HistoryLastItemViewHolder", "DiffCallback", "HistoryViewType", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class HistoryAdapter extends ListAdapter<ListModel, RecyclerView.ViewHolder> {
    private Function2<? super ListModel, ? super Integer, Unit> onSelectedAction;

    @Inject
    public HistoryAdapter() {
        super(new DiffCallback());
    }

    public final Function2<ListModel, Integer, Unit> getOnSelectedAction() {
        return this.onSelectedAction;
    }

    public final void setOnSelectedAction(Function2<? super ListModel, ? super Integer, Unit> function2) {
        this.onSelectedAction = function2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
        if (viewType == HistoryViewType.EN_ROW.getValue()) {
            HistoryEnItemLayoutBinding historyEnItemLayoutBindingInflate = HistoryEnItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(historyEnItemLayoutBindingInflate, "inflate(...)");
            return new EnViewHolder(historyEnItemLayoutBindingInflate);
        }
        if (viewType == HistoryViewType.PE_ROW.getValue()) {
            HistoryPeItemLayoutBinding historyPeItemLayoutBindingInflate = HistoryPeItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(historyPeItemLayoutBindingInflate, "inflate(...)");
            return new PeViewHolder(historyPeItemLayoutBindingInflate);
        }
        LastItemHisotryLayoutBinding lastItemHisotryLayoutBindingInflate = LastItemHisotryLayoutBinding.inflate(layoutInflaterFrom, parent, false);
        Intrinsics.checkNotNullExpressionValue(lastItemHisotryLayoutBindingInflate, "inflate(...)");
        return new HistoryLastItemViewHolder(lastItemHisotryLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof EnViewHolder) {
            EnViewHolder enViewHolder = (EnViewHolder) holder;
            enViewHolder.setOnSelectedListener(new Function2() { // from class: fast.dic.dict.presentation.history_screen.HistoryAdapter$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return HistoryAdapter.onBindViewHolder$lambda$0(this.f$0, (ListModel) obj, ((Integer) obj2).intValue());
                }
            });
            ListModel item = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
            enViewHolder.setBind(item);
            return;
        }
        if (holder instanceof PeViewHolder) {
            PeViewHolder peViewHolder = (PeViewHolder) holder;
            peViewHolder.setOnSelectedListener(new Function2() { // from class: fast.dic.dict.presentation.history_screen.HistoryAdapter$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return HistoryAdapter.onBindViewHolder$lambda$1(this.f$0, (ListModel) obj, ((Integer) obj2).intValue());
                }
            });
            ListModel item2 = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item2, "getItem(...)");
            peViewHolder.setBind(item2);
        }
    }

    static final Unit onBindViewHolder$lambda$0(HistoryAdapter historyAdapter, ListModel item, int i) {
        Intrinsics.checkNotNullParameter(item, "item");
        Function2<? super ListModel, ? super Integer, Unit> function2 = historyAdapter.onSelectedAction;
        if (function2 != null) {
            function2.invoke(item, Integer.valueOf(i));
        }
        return Unit.INSTANCE;
    }

    static final Unit onBindViewHolder$lambda$1(HistoryAdapter historyAdapter, ListModel item, int i) {
        Intrinsics.checkNotNullParameter(item, "item");
        Function2<? super ListModel, ? super Integer, Unit> function2 = historyAdapter.onSelectedAction;
        if (function2 != null) {
            function2.invoke(item, Integer.valueOf(i));
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        if (position == 0) {
            return HistoryViewType.BANNER.getValue();
        }
        Integer category = getCurrentList().get(position).getCategory();
        int rawValue = Category.English.getRawValue();
        if (category != null && category.intValue() == rawValue) {
            return HistoryViewType.EN_ROW.getValue();
        }
        return HistoryViewType.PE_ROW.getValue();
    }

    /* JADX INFO: compiled from: HistoryAdapter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\bJ\u0006\u0010\u0011\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R.\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/presentation/history_screen/HistoryAdapter$EnViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/HistoryEnItemLayoutBinding;", "<init>", "(Lfast/dic/dict/databinding/HistoryEnItemLayoutBinding;)V", "onSelectedListener", "Lkotlin/Function2;", "Lfast/dic/dict/models/database/ListModel;", "", "", "getOnSelectedListener", "()Lkotlin/jvm/functions/Function2;", "setOnSelectedListener", "(Lkotlin/jvm/functions/Function2;)V", "setBind", "model", "changeBackground", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class EnViewHolder extends RecyclerView.ViewHolder {
        private final HistoryEnItemLayoutBinding binding;
        private Function2<? super ListModel, ? super Integer, Unit> onSelectedListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EnViewHolder(HistoryEnItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.history_screen.HistoryAdapter$EnViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HistoryAdapter.EnViewHolder._init_$lambda$0(this.f$0, view);
                }
            });
        }

        public final Function2<ListModel, Integer, Unit> getOnSelectedListener() {
            return this.onSelectedListener;
        }

        public final void setOnSelectedListener(Function2<? super ListModel, ? super Integer, Unit> function2) {
            this.onSelectedListener = function2;
        }

        static final void _init_$lambda$0(EnViewHolder enViewHolder, View view) {
            Function2<? super ListModel, ? super Integer, Unit> function2 = enViewHolder.onSelectedListener;
            if (function2 != null) {
                ListModel model = enViewHolder.binding.getModel();
                Intrinsics.checkNotNull(model);
                function2.invoke(model, Integer.valueOf(enViewHolder.getAbsoluteAdapterPosition()));
            }
        }

        public final void setBind(ListModel model) {
            String strRemoveHtmlTags;
            Intrinsics.checkNotNullParameter(model, "model");
            boolean zIsEnglish = FDLanguageWord.INSTANCE.isEnglish(model.getWord());
            String word = model.getWord();
            String strRemoveLines = null;
            model.setWord(word != null ? StringExtKt.removeLines(word) : null);
            String meaning = model.getMeaning();
            if (meaning != null && (strRemoveHtmlTags = StringExtKt.removeHtmlTags(meaning)) != null) {
                strRemoveLines = StringExtKt.removeLines(strRemoveHtmlTags);
            }
            model.setMeaning(strRemoveLines);
            this.binding.setIsWordEnglish(Boolean.valueOf(zIsEnglish));
            this.binding.setIsMeaningEnglish(Boolean.valueOf(!zIsEnglish));
            this.binding.setModel(model);
        }

        public final void changeBackground() {
            this.binding.getRoot().setBackground(ContextCompat.getDrawable(this.binding.getRoot().getContext(), R.drawable.ws_history_background_ripple_color));
        }
    }

    /* JADX INFO: compiled from: HistoryAdapter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\bJ\u0006\u0010\u0011\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R.\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/presentation/history_screen/HistoryAdapter$PeViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;", "<init>", "(Lfast/dic/dict/databinding/HistoryPeItemLayoutBinding;)V", "onSelectedListener", "Lkotlin/Function2;", "Lfast/dic/dict/models/database/ListModel;", "", "", "getOnSelectedListener", "()Lkotlin/jvm/functions/Function2;", "setOnSelectedListener", "(Lkotlin/jvm/functions/Function2;)V", "setBind", "model", "changeBackground", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class PeViewHolder extends RecyclerView.ViewHolder {
        private final HistoryPeItemLayoutBinding binding;
        private Function2<? super ListModel, ? super Integer, Unit> onSelectedListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PeViewHolder(HistoryPeItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.history_screen.HistoryAdapter$PeViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HistoryAdapter.PeViewHolder._init_$lambda$0(this.f$0, view);
                }
            });
        }

        public final Function2<ListModel, Integer, Unit> getOnSelectedListener() {
            return this.onSelectedListener;
        }

        public final void setOnSelectedListener(Function2<? super ListModel, ? super Integer, Unit> function2) {
            this.onSelectedListener = function2;
        }

        static final void _init_$lambda$0(PeViewHolder peViewHolder, View view) {
            Function2<? super ListModel, ? super Integer, Unit> function2 = peViewHolder.onSelectedListener;
            if (function2 != null) {
                ListModel model = peViewHolder.binding.getModel();
                Intrinsics.checkNotNull(model);
                function2.invoke(model, Integer.valueOf(peViewHolder.getAbsoluteAdapterPosition()));
            }
        }

        public final void setBind(ListModel model) {
            String strRemoveHtmlTags;
            Intrinsics.checkNotNullParameter(model, "model");
            boolean zIsEnglish = FDLanguageWord.INSTANCE.isEnglish(model.getWord());
            String word = model.getWord();
            String strRemoveLines = null;
            model.setWord(word != null ? StringExtKt.removeLines(word) : null);
            String meaning = model.getMeaning();
            if (meaning != null && (strRemoveHtmlTags = StringExtKt.removeHtmlTags(meaning)) != null) {
                strRemoveLines = StringExtKt.removeLines(strRemoveHtmlTags);
            }
            model.setMeaning(strRemoveLines);
            this.binding.setIsWordEnglish(Boolean.valueOf(zIsEnglish));
            this.binding.setIsMeaningEnglish(Boolean.valueOf(!zIsEnglish));
            this.binding.setModel(model);
        }

        public final void changeBackground() {
            this.binding.getRoot().setBackground(ContextCompat.getDrawable(this.binding.getRoot().getContext(), R.drawable.ws_history_background_ripple_color));
        }
    }

    /* JADX INFO: compiled from: HistoryAdapter.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryLastItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/LastItemHisotryLayoutBinding;", "<init>", "(Lfast/dic/dict/databinding/LastItemHisotryLayoutBinding;)V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class HistoryLastItemViewHolder extends RecyclerView.ViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HistoryLastItemViewHolder(LastItemHisotryLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
        }
    }

    /* JADX INFO: compiled from: HistoryAdapter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/history_screen/HistoryAdapter$DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lfast/dic/dict/models/database/ListModel;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallback extends DiffUtil.ItemCallback<ListModel> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(ListModel oldItem, ListModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getDocumentId(), newItem.getDocumentId());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(ListModel oldItem, ListModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }

    /* JADX INFO: compiled from: HistoryAdapter.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lfast/dic/dict/presentation/history_screen/HistoryAdapter$HistoryViewType;", "", "value", "", "<init>", "(Ljava/lang/String;II)V", "getValue", "()I", "BANNER", "EN_ROW", "PE_ROW", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public enum HistoryViewType {
        BANNER(0),
        EN_ROW(1),
        PE_ROW(2);

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final int value;

        public static EnumEntries<HistoryViewType> getEntries() {
            return $ENTRIES;
        }

        HistoryViewType(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }
}
