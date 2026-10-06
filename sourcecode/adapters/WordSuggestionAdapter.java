package fast.dic.dict.adapters;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import fast.dic.dict.databinding.HistoryEnItemLayoutBinding;
import fast.dic.dict.databinding.HistoryPeItemLayoutBinding;
import fast.dic.dict.databinding.NotFoundItemLayoutBinding;
import fast.dic.dict.databinding.WordSuggestionItemLayoutBinding;
import fast.dic.dict.databinding.WsTranslatorItemLayoutBinding;
import fast.dic.dict.databinding.WsTranslatorNoSubscriptionItemLayoutBinding;
import fast.dic.dict.databinding.WsTranslatorNotLoginItemLayoutBinding;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.presentation.history_screen.HistoryAdapter;
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

/* JADX INFO: compiled from: WordSuggestionListAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0007\u0017\u0018\u0019\u001a\u001b\u001c\u001dB\r\b\u0007\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\tH\u0016J\u0018\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\tH\u0016J\u0010\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\tH\u0016R.\u0010\u0007\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u001e"}, d2 = {"Lfast/dic/dict/adapters/WordSuggestionAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/models/database/ListModel;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "<init>", "()V", "Ljavax/inject/Inject;", "onSelectedAction", "Lkotlin/Function2;", "", "", "getOnSelectedAction", "()Lkotlin/jvm/functions/Function2;", "setOnSelectedAction", "(Lkotlin/jvm/functions/Function2;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", U3.i.L, "getItemViewType", "WordViewHolder", "TranslatorViewHolder", "TranslatorNotLoginViewHolder", "TranslatorNoSubscriptionsViewHolder", "NotFoundViewHolder", "DiffCallback", "WordSuggestedViewType", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class WordSuggestionAdapter extends ListAdapter<ListModel, RecyclerView.ViewHolder> {
    private Function2<? super ListModel, ? super Integer, Unit> onSelectedAction;

    @Inject
    public WordSuggestionAdapter() {
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
        if (viewType == WordSuggestedViewType.WORD.getValue()) {
            WordSuggestionItemLayoutBinding wordSuggestionItemLayoutBindingInflate = WordSuggestionItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(wordSuggestionItemLayoutBindingInflate, "inflate(...)");
            return new WordViewHolder(this, wordSuggestionItemLayoutBindingInflate);
        }
        if (viewType == WordSuggestedViewType.HISTORY_EN_ROW.getValue()) {
            HistoryEnItemLayoutBinding historyEnItemLayoutBindingInflate = HistoryEnItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(historyEnItemLayoutBindingInflate, "inflate(...)");
            return new HistoryAdapter.EnViewHolder(historyEnItemLayoutBindingInflate);
        }
        if (viewType == WordSuggestedViewType.HISTORY_PE_ROW.getValue()) {
            HistoryPeItemLayoutBinding historyPeItemLayoutBindingInflate = HistoryPeItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(historyPeItemLayoutBindingInflate, "inflate(...)");
            return new HistoryAdapter.PeViewHolder(historyPeItemLayoutBindingInflate);
        }
        if (viewType == WordSuggestedViewType.TRANSLATOR.getValue()) {
            WsTranslatorItemLayoutBinding wsTranslatorItemLayoutBindingInflate = WsTranslatorItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(wsTranslatorItemLayoutBindingInflate, "inflate(...)");
            return new TranslatorViewHolder(this, wsTranslatorItemLayoutBindingInflate);
        }
        if (viewType == WordSuggestedViewType.TRANSLATOR_NOT_LOGIN.getValue()) {
            WsTranslatorNotLoginItemLayoutBinding wsTranslatorNotLoginItemLayoutBindingInflate = WsTranslatorNotLoginItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(wsTranslatorNotLoginItemLayoutBindingInflate, "inflate(...)");
            return new TranslatorNotLoginViewHolder(this, wsTranslatorNotLoginItemLayoutBindingInflate);
        }
        if (viewType == WordSuggestedViewType.TRANSLATOR_NO_SUBSCRIPTION.getValue()) {
            WsTranslatorNoSubscriptionItemLayoutBinding wsTranslatorNoSubscriptionItemLayoutBindingInflate = WsTranslatorNoSubscriptionItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(wsTranslatorNoSubscriptionItemLayoutBindingInflate, "inflate(...)");
            return new TranslatorNoSubscriptionsViewHolder(this, wsTranslatorNoSubscriptionItemLayoutBindingInflate);
        }
        NotFoundItemLayoutBinding notFoundItemLayoutBindingInflate = NotFoundItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
        Intrinsics.checkNotNullExpressionValue(notFoundItemLayoutBindingInflate, "inflate(...)");
        return new NotFoundViewHolder(this, notFoundItemLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof WordViewHolder) {
            WordViewHolder wordViewHolder = (WordViewHolder) holder;
            ListModel item = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
            wordViewHolder.setBind(item);
            wordViewHolder.setOnSelectedListener(new Function2() { // from class: fast.dic.dict.adapters.WordSuggestionAdapter$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return WordSuggestionAdapter.onBindViewHolder$lambda$0(this.f$0, (ListModel) obj, ((Integer) obj2).intValue());
                }
            });
            return;
        }
        if (holder instanceof TranslatorViewHolder) {
            TranslatorViewHolder translatorViewHolder = (TranslatorViewHolder) holder;
            ListModel item2 = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item2, "getItem(...)");
            translatorViewHolder.setBind(item2);
            translatorViewHolder.setOnSelectedListener(new Function2() { // from class: fast.dic.dict.adapters.WordSuggestionAdapter$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return WordSuggestionAdapter.onBindViewHolder$lambda$1(this.f$0, (ListModel) obj, ((Integer) obj2).intValue());
                }
            });
            return;
        }
        if (holder instanceof TranslatorNotLoginViewHolder) {
            TranslatorNotLoginViewHolder translatorNotLoginViewHolder = (TranslatorNotLoginViewHolder) holder;
            ListModel item3 = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item3, "getItem(...)");
            translatorNotLoginViewHolder.setBind(item3);
            translatorNotLoginViewHolder.setOnSelectedListener(new Function2() { // from class: fast.dic.dict.adapters.WordSuggestionAdapter$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return WordSuggestionAdapter.onBindViewHolder$lambda$2(this.f$0, (ListModel) obj, ((Integer) obj2).intValue());
                }
            });
            return;
        }
        if (holder instanceof TranslatorNoSubscriptionsViewHolder) {
            TranslatorNoSubscriptionsViewHolder translatorNoSubscriptionsViewHolder = (TranslatorNoSubscriptionsViewHolder) holder;
            ListModel item4 = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item4, "getItem(...)");
            translatorNoSubscriptionsViewHolder.setBind(item4);
            translatorNoSubscriptionsViewHolder.setOnSelectedListener(new Function2() { // from class: fast.dic.dict.adapters.WordSuggestionAdapter$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return WordSuggestionAdapter.onBindViewHolder$lambda$3(this.f$0, (ListModel) obj, ((Integer) obj2).intValue());
                }
            });
            return;
        }
        if (holder instanceof HistoryAdapter.EnViewHolder) {
            HistoryAdapter.EnViewHolder enViewHolder = (HistoryAdapter.EnViewHolder) holder;
            ListModel item5 = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item5, "getItem(...)");
            enViewHolder.setBind(item5);
            enViewHolder.changeBackground();
            enViewHolder.setOnSelectedListener(new Function2() { // from class: fast.dic.dict.adapters.WordSuggestionAdapter$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return WordSuggestionAdapter.onBindViewHolder$lambda$4(this.f$0, (ListModel) obj, ((Integer) obj2).intValue());
                }
            });
            return;
        }
        if (holder instanceof HistoryAdapter.PeViewHolder) {
            HistoryAdapter.PeViewHolder peViewHolder = (HistoryAdapter.PeViewHolder) holder;
            ListModel item6 = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item6, "getItem(...)");
            peViewHolder.setBind(item6);
            peViewHolder.changeBackground();
            peViewHolder.setOnSelectedListener(new Function2() { // from class: fast.dic.dict.adapters.WordSuggestionAdapter$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return WordSuggestionAdapter.onBindViewHolder$lambda$5(this.f$0, (ListModel) obj, ((Integer) obj2).intValue());
                }
            });
            return;
        }
        boolean z = holder instanceof NotFoundViewHolder;
    }

    static final Unit onBindViewHolder$lambda$0(WordSuggestionAdapter wordSuggestionAdapter, ListModel item, int i) {
        Intrinsics.checkNotNullParameter(item, "item");
        Function2<? super ListModel, ? super Integer, Unit> function2 = wordSuggestionAdapter.onSelectedAction;
        if (function2 != null) {
            function2.invoke(item, Integer.valueOf(i));
        }
        return Unit.INSTANCE;
    }

    static final Unit onBindViewHolder$lambda$1(WordSuggestionAdapter wordSuggestionAdapter, ListModel item, int i) {
        Intrinsics.checkNotNullParameter(item, "item");
        Function2<? super ListModel, ? super Integer, Unit> function2 = wordSuggestionAdapter.onSelectedAction;
        if (function2 != null) {
            function2.invoke(item, Integer.valueOf(i));
        }
        return Unit.INSTANCE;
    }

    static final Unit onBindViewHolder$lambda$2(WordSuggestionAdapter wordSuggestionAdapter, ListModel item, int i) {
        Intrinsics.checkNotNullParameter(item, "item");
        Function2<? super ListModel, ? super Integer, Unit> function2 = wordSuggestionAdapter.onSelectedAction;
        if (function2 != null) {
            function2.invoke(item, Integer.valueOf(i));
        }
        return Unit.INSTANCE;
    }

    static final Unit onBindViewHolder$lambda$3(WordSuggestionAdapter wordSuggestionAdapter, ListModel item, int i) {
        Intrinsics.checkNotNullParameter(item, "item");
        Function2<? super ListModel, ? super Integer, Unit> function2 = wordSuggestionAdapter.onSelectedAction;
        if (function2 != null) {
            function2.invoke(item, Integer.valueOf(i));
        }
        return Unit.INSTANCE;
    }

    static final Unit onBindViewHolder$lambda$4(WordSuggestionAdapter wordSuggestionAdapter, ListModel item, int i) {
        Intrinsics.checkNotNullParameter(item, "item");
        Function2<? super ListModel, ? super Integer, Unit> function2 = wordSuggestionAdapter.onSelectedAction;
        if (function2 != null) {
            function2.invoke(item, Integer.valueOf(i));
        }
        return Unit.INSTANCE;
    }

    static final Unit onBindViewHolder$lambda$5(WordSuggestionAdapter wordSuggestionAdapter, ListModel item, int i) {
        Intrinsics.checkNotNullParameter(item, "item");
        Function2<? super ListModel, ? super Integer, Unit> function2 = wordSuggestionAdapter.onSelectedAction;
        if (function2 != null) {
            function2.invoke(item, Integer.valueOf(i));
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        ListModel item = getItem(position);
        if (Intrinsics.areEqual((Object) item.isSuggestion(), (Object) true)) {
            return WordSuggestedViewType.NOT_FOUND.getValue();
        }
        if (Intrinsics.areEqual((Object) item.isTranslator(), (Object) true)) {
            if (!item.isLoggedIn()) {
                return WordSuggestedViewType.TRANSLATOR_NOT_LOGIN.getValue();
            }
            if (Intrinsics.areEqual((Object) item.getHasSubscription(), (Object) true)) {
                return WordSuggestedViewType.TRANSLATOR.getValue();
            }
            return WordSuggestedViewType.TRANSLATOR_NO_SUBSCRIPTION.getValue();
        }
        if (Intrinsics.areEqual((Object) item.isHistory(), (Object) true)) {
            Integer category = item.getCategory();
            int rawValue = Category.English.getRawValue();
            if (category != null && category.intValue() == rawValue) {
                return WordSuggestedViewType.HISTORY_EN_ROW.getValue();
            }
            return WordSuggestedViewType.HISTORY_PE_ROW.getValue();
        }
        return WordSuggestedViewType.WORD.getValue();
    }

    /* JADX INFO: compiled from: WordSuggestionListAdapter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R.\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;", "<init>", "(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;)V", "onSelectedListener", "Lkotlin/Function2;", "Lfast/dic/dict/models/database/ListModel;", "", "", "getOnSelectedListener", "()Lkotlin/jvm/functions/Function2;", "setOnSelectedListener", "(Lkotlin/jvm/functions/Function2;)V", "setBind", "model", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class WordViewHolder extends RecyclerView.ViewHolder {
        private final WordSuggestionItemLayoutBinding binding;
        private Function2<? super ListModel, ? super Integer, Unit> onSelectedListener;
        final /* synthetic */ WordSuggestionAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WordViewHolder(WordSuggestionAdapter wordSuggestionAdapter, WordSuggestionItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = wordSuggestionAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.adapters.WordSuggestionAdapter$WordViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WordSuggestionAdapter.WordViewHolder._init_$lambda$0(this.f$0, view);
                }
            });
        }

        public final Function2<ListModel, Integer, Unit> getOnSelectedListener() {
            return this.onSelectedListener;
        }

        public final void setOnSelectedListener(Function2<? super ListModel, ? super Integer, Unit> function2) {
            this.onSelectedListener = function2;
        }

        static final void _init_$lambda$0(WordViewHolder wordViewHolder, View view) {
            Function2<? super ListModel, ? super Integer, Unit> function2 = wordViewHolder.onSelectedListener;
            if (function2 != null) {
                ListModel model = wordViewHolder.binding.getModel();
                Intrinsics.checkNotNull(model);
                function2.invoke(model, Integer.valueOf(wordViewHolder.getAbsoluteAdapterPosition()));
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
    }

    /* JADX INFO: compiled from: WordSuggestionListAdapter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R.\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/WsTranslatorItemLayoutBinding;", "<init>", "(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/WsTranslatorItemLayoutBinding;)V", "onSelectedListener", "Lkotlin/Function2;", "Lfast/dic/dict/models/database/ListModel;", "", "", "getOnSelectedListener", "()Lkotlin/jvm/functions/Function2;", "setOnSelectedListener", "(Lkotlin/jvm/functions/Function2;)V", "setBind", "model", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class TranslatorViewHolder extends RecyclerView.ViewHolder {
        private final WsTranslatorItemLayoutBinding binding;
        private Function2<? super ListModel, ? super Integer, Unit> onSelectedListener;
        final /* synthetic */ WordSuggestionAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TranslatorViewHolder(WordSuggestionAdapter wordSuggestionAdapter, WsTranslatorItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = wordSuggestionAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.adapters.WordSuggestionAdapter$TranslatorViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WordSuggestionAdapter.TranslatorViewHolder._init_$lambda$0(this.f$0, view);
                }
            });
        }

        public final Function2<ListModel, Integer, Unit> getOnSelectedListener() {
            return this.onSelectedListener;
        }

        public final void setOnSelectedListener(Function2<? super ListModel, ? super Integer, Unit> function2) {
            this.onSelectedListener = function2;
        }

        static final void _init_$lambda$0(TranslatorViewHolder translatorViewHolder, View view) {
            Function2<? super ListModel, ? super Integer, Unit> function2 = translatorViewHolder.onSelectedListener;
            if (function2 != null) {
                ListModel model = translatorViewHolder.binding.getModel();
                Intrinsics.checkNotNull(model);
                function2.invoke(model, Integer.valueOf(translatorViewHolder.getAbsoluteAdapterPosition()));
            }
        }

        public final void setBind(ListModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
        }
    }

    /* JADX INFO: compiled from: WordSuggestionListAdapter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R.\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;", "<init>", "(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;)V", "onSelectedListener", "Lkotlin/Function2;", "Lfast/dic/dict/models/database/ListModel;", "", "", "getOnSelectedListener", "()Lkotlin/jvm/functions/Function2;", "setOnSelectedListener", "(Lkotlin/jvm/functions/Function2;)V", "setBind", "model", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class TranslatorNotLoginViewHolder extends RecyclerView.ViewHolder {
        private final WsTranslatorNotLoginItemLayoutBinding binding;
        private Function2<? super ListModel, ? super Integer, Unit> onSelectedListener;
        final /* synthetic */ WordSuggestionAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TranslatorNotLoginViewHolder(WordSuggestionAdapter wordSuggestionAdapter, WsTranslatorNotLoginItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = wordSuggestionAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.adapters.WordSuggestionAdapter$TranslatorNotLoginViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WordSuggestionAdapter.TranslatorNotLoginViewHolder._init_$lambda$0(this.f$0, view);
                }
            });
        }

        public final Function2<ListModel, Integer, Unit> getOnSelectedListener() {
            return this.onSelectedListener;
        }

        public final void setOnSelectedListener(Function2<? super ListModel, ? super Integer, Unit> function2) {
            this.onSelectedListener = function2;
        }

        static final void _init_$lambda$0(TranslatorNotLoginViewHolder translatorNotLoginViewHolder, View view) {
            Function2<? super ListModel, ? super Integer, Unit> function2 = translatorNotLoginViewHolder.onSelectedListener;
            if (function2 != null) {
                ListModel model = translatorNotLoginViewHolder.binding.getModel();
                Intrinsics.checkNotNull(model);
                function2.invoke(model, Integer.valueOf(translatorNotLoginViewHolder.getAbsoluteAdapterPosition()));
            }
        }

        public final void setBind(ListModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
        }
    }

    /* JADX INFO: compiled from: WordSuggestionListAdapter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R.\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNoSubscriptionsViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;", "<init>", "(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/WsTranslatorNoSubscriptionItemLayoutBinding;)V", "onSelectedListener", "Lkotlin/Function2;", "Lfast/dic/dict/models/database/ListModel;", "", "", "getOnSelectedListener", "()Lkotlin/jvm/functions/Function2;", "setOnSelectedListener", "(Lkotlin/jvm/functions/Function2;)V", "setBind", "model", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class TranslatorNoSubscriptionsViewHolder extends RecyclerView.ViewHolder {
        private final WsTranslatorNoSubscriptionItemLayoutBinding binding;
        private Function2<? super ListModel, ? super Integer, Unit> onSelectedListener;
        final /* synthetic */ WordSuggestionAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TranslatorNoSubscriptionsViewHolder(WordSuggestionAdapter wordSuggestionAdapter, WsTranslatorNoSubscriptionItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = wordSuggestionAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.adapters.WordSuggestionAdapter$TranslatorNoSubscriptionsViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WordSuggestionAdapter.TranslatorNoSubscriptionsViewHolder._init_$lambda$0(this.f$0, view);
                }
            });
        }

        public final Function2<ListModel, Integer, Unit> getOnSelectedListener() {
            return this.onSelectedListener;
        }

        public final void setOnSelectedListener(Function2<? super ListModel, ? super Integer, Unit> function2) {
            this.onSelectedListener = function2;
        }

        static final void _init_$lambda$0(TranslatorNoSubscriptionsViewHolder translatorNoSubscriptionsViewHolder, View view) {
            Function2<? super ListModel, ? super Integer, Unit> function2 = translatorNoSubscriptionsViewHolder.onSelectedListener;
            if (function2 != null) {
                ListModel model = translatorNoSubscriptionsViewHolder.binding.getModel();
                Intrinsics.checkNotNull(model);
                function2.invoke(model, Integer.valueOf(translatorNoSubscriptionsViewHolder.getAbsoluteAdapterPosition()));
            }
        }

        public final void setBind(ListModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
        }
    }

    /* JADX INFO: compiled from: WordSuggestionListAdapter.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lfast/dic/dict/adapters/WordSuggestionAdapter$NotFoundViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/NotFoundItemLayoutBinding;", "<init>", "(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/NotFoundItemLayoutBinding;)V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class NotFoundViewHolder extends RecyclerView.ViewHolder {
        final /* synthetic */ WordSuggestionAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NotFoundViewHolder(WordSuggestionAdapter wordSuggestionAdapter, NotFoundItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = wordSuggestionAdapter;
        }
    }

    /* JADX INFO: compiled from: WordSuggestionListAdapter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lfast/dic/dict/adapters/WordSuggestionAdapter$DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lfast/dic/dict/models/database/ListModel;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallback extends DiffUtil.ItemCallback<ListModel> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(ListModel oldItem, ListModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getWord() + oldItem.getDocumentId(), newItem.getWord() + newItem.getDocumentId());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(ListModel oldItem, ListModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getWord() + oldItem.getDocumentId(), newItem.getWord() + newItem.getDocumentId());
        }
    }

    /* JADX INFO: compiled from: WordSuggestionListAdapter.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;", "", "value", "", "<init>", "(Ljava/lang/String;II)V", "getValue", "()I", "TRANSLATOR", "TRANSLATOR_NOT_LOGIN", "TRANSLATOR_NO_SUBSCRIPTION", "HISTORY_EN_ROW", "HISTORY_PE_ROW", "WORD", "NOT_FOUND", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public enum WordSuggestedViewType {
        TRANSLATOR(0),
        TRANSLATOR_NOT_LOGIN(5),
        TRANSLATOR_NO_SUBSCRIPTION(6),
        HISTORY_EN_ROW(1),
        HISTORY_PE_ROW(2),
        WORD(3),
        NOT_FOUND(4);

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final int value;

        public static EnumEntries<WordSuggestedViewType> getEntries() {
            return $ENTRIES;
        }

        WordSuggestedViewType(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }
}
