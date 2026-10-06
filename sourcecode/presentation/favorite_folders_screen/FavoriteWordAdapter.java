package fast.dic.dict.presentation.favorite_folders_screen;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import fast.dic.dict.databinding.EditModeFavoriteWordItemLayoutBinding;
import fast.dic.dict.databinding.FavoriteWordItemLayoutBinding;
import fast.dic.dict.interfaces.ItemTouchHelperAdapter;
import fast.dic.dict.interfaces.ItemTouchHelperViewHolder;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.StringExtKt;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FavoriteWordAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0003\u001f !B\r\b\u0007\u001a\u0002\b\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\nH\u0016J\u0018\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\nH\u0016J\u0010\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\nH\u0016J\u0018\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001d\u001a\u00020\nH\u0016J\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\nH\u0016R.\u0010\b\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR.\u0010\u0010\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000f¨\u0006\""}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/models/database/ListModel;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;", "<init>", "()V", "Ljavax/inject/Inject;", "onDeletedAction", "Lkotlin/Function2;", "", "", "getOnDeletedAction", "()Lkotlin/jvm/functions/Function2;", "setOnDeletedAction", "(Lkotlin/jvm/functions/Function2;)V", "onSelectedAction", "getOnSelectedAction", "setOnSelectedAction", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", U3.i.L, "onItemDismiss", "onItemMove", "fromPosition", "toPosition", "onSwiped", "EditModeViewHolder", "ViewHolder", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FavoriteWordAdapter extends ListAdapter<ListModel, RecyclerView.ViewHolder> implements ItemTouchHelperAdapter {
    private static final FavoriteWordAdapter$Companion$DiffCallback$1 DiffCallback = new DiffUtil.ItemCallback<ListModel>() { // from class: fast.dic.dict.presentation.favorite_folders_screen.FavoriteWordAdapter$Companion$DiffCallback$1
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(ListModel oldItem, ListModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem.getWordId(), newItem.getWordId());
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(ListModel oldItem, ListModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    };
    private Function2<? super ListModel, ? super Integer, Unit> onDeletedAction;
    private Function2<? super ListModel, ? super Integer, Unit> onSelectedAction;

    @Override // fast.dic.dict.interfaces.ItemTouchHelperAdapter
    public void onItemMove(int fromPosition, int toPosition) {
    }

    @Override // fast.dic.dict.interfaces.ItemTouchHelperAdapter
    public void onSwiped(int position) {
    }

    @Inject
    public FavoriteWordAdapter() {
        super(DiffCallback);
    }

    public final Function2<ListModel, Integer, Unit> getOnDeletedAction() {
        return this.onDeletedAction;
    }

    public final void setOnDeletedAction(Function2<? super ListModel, ? super Integer, Unit> function2) {
        this.onDeletedAction = function2;
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
        FavoriteWordItemLayoutBinding favoriteWordItemLayoutBindingInflate = FavoriteWordItemLayoutBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(favoriteWordItemLayoutBindingInflate, "inflate(...)");
        return new ViewHolder(this, favoriteWordItemLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof EditModeViewHolder) {
            ListModel item = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
            ((EditModeViewHolder) holder).setBind(item);
        } else if (holder instanceof ViewHolder) {
            ListModel item2 = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item2, "getItem(...)");
            ((ViewHolder) holder).setBind(item2);
        }
    }

    @Override // fast.dic.dict.interfaces.ItemTouchHelperAdapter
    public void onItemDismiss(int position) {
        if (position < 0 || position >= getCurrentList().size()) {
            return;
        }
        try {
            notifyItemChanged(position);
        } catch (Exception unused) {
        }
        Function2<? super ListModel, ? super Integer, Unit> function2 = this.onDeletedAction;
        if (function2 != null) {
            ListModel listModel = getCurrentList().get(position);
            Intrinsics.checkNotNullExpressionValue(listModel, "get(...)");
            function2.invoke(listModel, Integer.valueOf(position));
        }
    }

    /* JADX INFO: compiled from: FavoriteWordAdapter.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$EditModeViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;", "binding", "Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;Lfast/dic/dict/databinding/EditModeFavoriteWordItemLayoutBinding;)V", "onItemSelected", "", "onItemClear", "setBind", "model", "Lfast/dic/dict/models/database/ListModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class EditModeViewHolder extends RecyclerView.ViewHolder implements ItemTouchHelperViewHolder {
        private final EditModeFavoriteWordItemLayoutBinding binding;
        final /* synthetic */ FavoriteWordAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EditModeViewHolder(final FavoriteWordAdapter favoriteWordAdapter, EditModeFavoriteWordItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = favoriteWordAdapter;
            this.binding = binding;
            binding.setOnDeleteListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_folders_screen.FavoriteWordAdapter$EditModeViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FavoriteWordAdapter.EditModeViewHolder._init_$lambda$0(this.f$0, favoriteWordAdapter, view);
                }
            });
            binding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_folders_screen.FavoriteWordAdapter$EditModeViewHolder$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FavoriteWordAdapter.EditModeViewHolder._init_$lambda$1(this.f$0, favoriteWordAdapter, view);
                }
            });
        }

        static final void _init_$lambda$0(EditModeViewHolder editModeViewHolder, FavoriteWordAdapter favoriteWordAdapter, View view) {
            Function2<ListModel, Integer, Unit> onDeletedAction;
            int bindingAdapterPosition = editModeViewHolder.getBindingAdapterPosition();
            if (bindingAdapterPosition == -1 || editModeViewHolder.binding.getModel() == null || (onDeletedAction = favoriteWordAdapter.getOnDeletedAction()) == null) {
                return;
            }
            ListModel model = editModeViewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            onDeletedAction.invoke(model, Integer.valueOf(bindingAdapterPosition));
        }

        static final void _init_$lambda$1(EditModeViewHolder editModeViewHolder, FavoriteWordAdapter favoriteWordAdapter, View view) {
            Function2<ListModel, Integer, Unit> onSelectedAction;
            int bindingAdapterPosition = editModeViewHolder.getBindingAdapterPosition();
            if (bindingAdapterPosition == -1 || editModeViewHolder.binding.getModel() == null || (onSelectedAction = favoriteWordAdapter.getOnSelectedAction()) == null) {
                return;
            }
            ListModel model = editModeViewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            onSelectedAction.invoke(model, Integer.valueOf(bindingAdapterPosition));
        }

        @Override // fast.dic.dict.interfaces.ItemTouchHelperViewHolder
        public void onItemSelected() {
            this.itemView.setAlpha(0.7f);
        }

        @Override // fast.dic.dict.interfaces.ItemTouchHelperViewHolder
        public void onItemClear() {
            this.itemView.setAlpha(1.0f);
        }

        public final void setBind(ListModel model) {
            String strRemoveHtmlTags;
            Intrinsics.checkNotNullParameter(model, "model");
            String word = model.getWord();
            String strRemoveLines = null;
            String strRemoveLines2 = word != null ? StringExtKt.removeLines(word) : null;
            String meaning = model.getMeaning();
            if (meaning != null && (strRemoveHtmlTags = StringExtKt.removeHtmlTags(meaning)) != null) {
                strRemoveLines = StringExtKt.removeLines(strRemoveHtmlTags);
            }
            ListModel listModelCopy$default = ListModel.copy$default(model, false, false, null, 0, null, null, null, null, null, null, false, null, null, false, strRemoveLines, null, null, null, strRemoveLines2, null, 0, 1818623, null);
            boolean zIsEnglish = FDLanguageWord.INSTANCE.isEnglish(listModelCopy$default.getWord());
            this.binding.setIsWordEnglish(Boolean.valueOf(zIsEnglish));
            this.binding.setIsMeaningEnglish(Boolean.valueOf(!zIsEnglish));
            this.binding.setModel(listModelCopy$default);
        }
    }

    /* JADX INFO: compiled from: FavoriteWordAdapter.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;", "binding", "Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;)V", "onItemSelected", "", "onItemClear", "setBind", "model", "Lfast/dic/dict/models/database/ListModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder implements ItemTouchHelperViewHolder {
        private final FavoriteWordItemLayoutBinding binding;
        final /* synthetic */ FavoriteWordAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(final FavoriteWordAdapter favoriteWordAdapter, FavoriteWordItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = favoriteWordAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_folders_screen.FavoriteWordAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FavoriteWordAdapter.ViewHolder._init_$lambda$0(this.f$0, favoriteWordAdapter, view);
                }
            });
        }

        static final void _init_$lambda$0(ViewHolder viewHolder, FavoriteWordAdapter favoriteWordAdapter, View view) {
            Function2<ListModel, Integer, Unit> onSelectedAction;
            int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
            if (bindingAdapterPosition == -1 || viewHolder.binding.getModel() == null || (onSelectedAction = favoriteWordAdapter.getOnSelectedAction()) == null) {
                return;
            }
            ListModel model = viewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            onSelectedAction.invoke(model, Integer.valueOf(bindingAdapterPosition));
        }

        @Override // fast.dic.dict.interfaces.ItemTouchHelperViewHolder
        public void onItemSelected() {
            this.itemView.setAlpha(0.7f);
        }

        @Override // fast.dic.dict.interfaces.ItemTouchHelperViewHolder
        public void onItemClear() {
            this.itemView.setAlpha(1.0f);
        }

        public final void setBind(ListModel model) {
            String strRemoveHtmlTags;
            Intrinsics.checkNotNullParameter(model, "model");
            String word = model.getWord();
            String strRemoveLines = null;
            String strRemoveLines2 = word != null ? StringExtKt.removeLines(word) : null;
            String meaning = model.getMeaning();
            if (meaning != null && (strRemoveHtmlTags = StringExtKt.removeHtmlTags(meaning)) != null) {
                strRemoveLines = StringExtKt.removeLines(strRemoveHtmlTags);
            }
            ListModel listModelCopy$default = ListModel.copy$default(model, false, false, null, 0, null, null, null, null, null, null, false, null, null, false, strRemoveLines, null, null, null, strRemoveLines2, null, 0, 1818623, null);
            boolean zIsEnglish = FDLanguageWord.INSTANCE.isEnglish(listModelCopy$default.getWord());
            this.binding.setIsWordEnglish(Boolean.valueOf(zIsEnglish));
            this.binding.setIsMeaningEnglish(Boolean.valueOf(!zIsEnglish));
            this.binding.setModel(listModelCopy$default);
        }
    }
}
