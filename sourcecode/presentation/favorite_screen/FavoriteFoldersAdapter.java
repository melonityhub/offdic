package fast.dic.dict.presentation.favorite_screen;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import fast.dic.dict.R;
import fast.dic.dict.databinding.EditFavoriteDirectoriesItemLayoutBinding;
import fast.dic.dict.databinding.FavoriteDirectoriesItemLayoutBinding;
import fast.dic.dict.databinding.HistoryDirectoriesItemLayoutBinding;
import fast.dic.dict.databinding.WordCategoryDirectoriesItemLayoutBinding;
import fast.dic.dict.interfaces.ItemTouchHelperAdapter;
import fast.dic.dict.interfaces.ItemTouchHelperViewHolder;
import fast.dic.dict.models.database.FolderModel;
import java.util.Collections;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FavoriteFoldersAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0010\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0006123456B\r\b\u0007\u001a\u0002\b\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00020\tJ\u0006\u0010!\u001a\u00020\u0015J\u0006\u0010\"\u001a\u00020\u0015J\u0018\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0016J\u0018\u0010(\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020'H\u0016J\u0010\u0010+\u001a\u00020'2\u0006\u0010*\u001a\u00020'H\u0016J\u0018\u0010,\u001a\u00020\u00152\u0006\u0010-\u001a\u00020'2\u0006\u0010.\u001a\u00020'H\u0016J\u0010\u0010/\u001a\u00020\u00152\u0006\u0010*\u001a\u00020'H\u0016J\u0010\u00100\u001a\u00020\u00152\u0006\u0010*\u001a\u00020'H\u0016R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R5\u0010\u0010\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u00150\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R&\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00150\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0017\"\u0004\b\u001c\u0010\u0019R&\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00150\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0017\"\u0004\b\u001f\u0010\u0019¨\u00067"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/models/database/FolderModel;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;", "<init>", "()V", "Ljavax/inject/Inject;", "reorderedList", "", "getReorderedList", "()Ljava/util/List;", "setReorderedList", "(Ljava/util/List;)V", "editMode", "", "onItemClickListener", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "model", "", "getOnItemClickListener", "()Lkotlin/jvm/functions/Function1;", "setOnItemClickListener", "(Lkotlin/jvm/functions/Function1;)V", "onEditListener", "getOnEditListener", "setOnEditListener", "onDeleteListener", "getOnDeleteListener", "setOnDeleteListener", "getNewReorderedList", "enableEditMode", "disableEditMode", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "holder", U3.i.L, "getItemViewType", "onItemMove", "fromPosition", "toPosition", "onItemDismiss", "onSwiped", "FavoriteFolderViewHolder", "EditFavoriteFolderViewHolder", "HistoryFolderViewHolder", "WordCategoryFolderViewHolder", "DiffCallback", "FavoriteFoldersViewType", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FavoriteFoldersAdapter extends ListAdapter<FolderModel, RecyclerView.ViewHolder> implements ItemTouchHelperAdapter {
    private boolean editMode;
    private Function1<? super FolderModel, Unit> onDeleteListener;
    private Function1<? super FolderModel, Unit> onEditListener;
    private Function1<? super FolderModel, Unit> onItemClickListener;
    private List<FolderModel> reorderedList;

    @Override // fast.dic.dict.interfaces.ItemTouchHelperAdapter
    public void onItemDismiss(int position) {
    }

    @Override // fast.dic.dict.interfaces.ItemTouchHelperAdapter
    public void onSwiped(int position) {
    }

    @Inject
    public FavoriteFoldersAdapter() {
        super(new DiffCallback());
        this.reorderedList = CollectionsKt.emptyList();
        this.onItemClickListener = new Function1() { // from class: fast.dic.dict.presentation.favorite_screen.FavoriteFoldersAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FavoriteFoldersAdapter.onItemClickListener$lambda$0((FolderModel) obj);
            }
        };
        this.onEditListener = new Function1() { // from class: fast.dic.dict.presentation.favorite_screen.FavoriteFoldersAdapter$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FavoriteFoldersAdapter.onEditListener$lambda$0((FolderModel) obj);
            }
        };
        this.onDeleteListener = new Function1() { // from class: fast.dic.dict.presentation.favorite_screen.FavoriteFoldersAdapter$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FavoriteFoldersAdapter.onDeleteListener$lambda$0((FolderModel) obj);
            }
        };
    }

    public final List<FolderModel> getReorderedList() {
        return this.reorderedList;
    }

    public final void setReorderedList(List<FolderModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.reorderedList = list;
    }

    static final Unit onItemClickListener$lambda$0(FolderModel it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public final Function1<FolderModel, Unit> getOnItemClickListener() {
        return this.onItemClickListener;
    }

    public final void setOnItemClickListener(Function1<? super FolderModel, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onItemClickListener = function1;
    }

    static final Unit onEditListener$lambda$0(FolderModel it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public final Function1<FolderModel, Unit> getOnEditListener() {
        return this.onEditListener;
    }

    public final void setOnEditListener(Function1<? super FolderModel, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onEditListener = function1;
    }

    static final Unit onDeleteListener$lambda$0(FolderModel it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public final Function1<FolderModel, Unit> getOnDeleteListener() {
        return this.onDeleteListener;
    }

    public final void setOnDeleteListener(Function1<? super FolderModel, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onDeleteListener = function1;
    }

    public final List<FolderModel> getNewReorderedList() {
        List<FolderModel> list = CollectionsKt.toList(this.reorderedList);
        this.reorderedList = CollectionsKt.emptyList();
        return list;
    }

    public final void enableEditMode() {
        this.editMode = true;
        notifyDataSetChanged();
    }

    public final void disableEditMode() {
        this.editMode = false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
        if (viewType == FavoriteFoldersViewType.FAVORITE.getValue()) {
            FavoriteDirectoriesItemLayoutBinding favoriteDirectoriesItemLayoutBindingInflate = FavoriteDirectoriesItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(favoriteDirectoriesItemLayoutBindingInflate, "inflate(...)");
            return new FavoriteFolderViewHolder(this, favoriteDirectoriesItemLayoutBindingInflate);
        }
        if (viewType == FavoriteFoldersViewType.EDIT_MODE.getValue()) {
            EditFavoriteDirectoriesItemLayoutBinding editFavoriteDirectoriesItemLayoutBindingInflate = EditFavoriteDirectoriesItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(editFavoriteDirectoriesItemLayoutBindingInflate, "inflate(...)");
            return new EditFavoriteFolderViewHolder(this, editFavoriteDirectoriesItemLayoutBindingInflate);
        }
        if (viewType == FavoriteFoldersViewType.HISTORY.getValue()) {
            HistoryDirectoriesItemLayoutBinding historyDirectoriesItemLayoutBindingInflate = HistoryDirectoriesItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(historyDirectoriesItemLayoutBindingInflate, "inflate(...)");
            return new HistoryFolderViewHolder(this, historyDirectoriesItemLayoutBindingInflate);
        }
        WordCategoryDirectoriesItemLayoutBinding wordCategoryDirectoriesItemLayoutBindingInflate = WordCategoryDirectoriesItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
        Intrinsics.checkNotNullExpressionValue(wordCategoryDirectoriesItemLayoutBindingInflate, "inflate(...)");
        return new WordCategoryFolderViewHolder(this, wordCategoryDirectoriesItemLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        FolderModel item = getItem(position);
        if (holder instanceof FavoriteFolderViewHolder) {
            Intrinsics.checkNotNull(item);
            ((FavoriteFolderViewHolder) holder).setBind(item);
            return;
        }
        if (holder instanceof HistoryFolderViewHolder) {
            item.setName(holder.itemView.getContext().getString(R.string.history_actionbar_title));
            Intrinsics.checkNotNull(item);
            ((HistoryFolderViewHolder) holder).setBind(item);
        } else if (holder instanceof EditFavoriteFolderViewHolder) {
            Intrinsics.checkNotNull(item);
            ((EditFavoriteFolderViewHolder) holder).setBind(item);
        } else if (holder instanceof WordCategoryFolderViewHolder) {
            item.setName(holder.itemView.getContext().getString(R.string.word_category_title));
            Intrinsics.checkNotNull(item);
            ((WordCategoryFolderViewHolder) holder).setBind(item);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        if (getItem(position).getIsHistory()) {
            return FavoriteFoldersViewType.HISTORY.getValue();
        }
        if (getItem(position).getIsWordCategory()) {
            return FavoriteFoldersViewType.WORD_CATEGORY.getValue();
        }
        if (this.editMode) {
            return FavoriteFoldersViewType.EDIT_MODE.getValue();
        }
        return FavoriteFoldersViewType.FAVORITE.getValue();
    }

    /* JADX INFO: compiled from: FavoriteFoldersAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFolderViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;)V", "setBind", "", "model", "Lfast/dic/dict/models/database/FolderModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class FavoriteFolderViewHolder extends RecyclerView.ViewHolder {
        private final FavoriteDirectoriesItemLayoutBinding binding;
        final /* synthetic */ FavoriteFoldersAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FavoriteFolderViewHolder(final FavoriteFoldersAdapter favoriteFoldersAdapter, FavoriteDirectoriesItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = favoriteFoldersAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_screen.FavoriteFoldersAdapter$FavoriteFolderViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FavoriteFoldersAdapter.FavoriteFolderViewHolder._init_$lambda$0(favoriteFoldersAdapter, this, view);
                }
            });
        }

        static final void _init_$lambda$0(FavoriteFoldersAdapter favoriteFoldersAdapter, FavoriteFolderViewHolder favoriteFolderViewHolder, View view) {
            Function1<FolderModel, Unit> onItemClickListener = favoriteFoldersAdapter.getOnItemClickListener();
            FolderModel model = favoriteFolderViewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            onItemClickListener.invoke(model);
        }

        public final void setBind(FolderModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
        }
    }

    /* JADX INFO: compiled from: FavoriteFoldersAdapter.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u000b\u001a\u00020\bH\u0016J\b\u0010\f\u001a\u00020\bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$EditFavoriteFolderViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;", "binding", "Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;)V", "setBind", "", "model", "Lfast/dic/dict/models/database/FolderModel;", "onItemSelected", "onItemClear", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class EditFavoriteFolderViewHolder extends RecyclerView.ViewHolder implements ItemTouchHelperViewHolder {
        private final EditFavoriteDirectoriesItemLayoutBinding binding;
        final /* synthetic */ FavoriteFoldersAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EditFavoriteFolderViewHolder(final FavoriteFoldersAdapter favoriteFoldersAdapter, EditFavoriteDirectoriesItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = favoriteFoldersAdapter;
            this.binding = binding;
            binding.setOnDeleteClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_screen.FavoriteFoldersAdapter$EditFavoriteFolderViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FavoriteFoldersAdapter.EditFavoriteFolderViewHolder._init_$lambda$0(favoriteFoldersAdapter, this, view);
                }
            });
            binding.setOnEditClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_screen.FavoriteFoldersAdapter$EditFavoriteFolderViewHolder$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FavoriteFoldersAdapter.EditFavoriteFolderViewHolder._init_$lambda$1(favoriteFoldersAdapter, this, view);
                }
            });
        }

        static final void _init_$lambda$0(FavoriteFoldersAdapter favoriteFoldersAdapter, EditFavoriteFolderViewHolder editFavoriteFolderViewHolder, View view) {
            Function1<FolderModel, Unit> onDeleteListener = favoriteFoldersAdapter.getOnDeleteListener();
            FolderModel model = editFavoriteFolderViewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            onDeleteListener.invoke(model);
        }

        static final void _init_$lambda$1(FavoriteFoldersAdapter favoriteFoldersAdapter, EditFavoriteFolderViewHolder editFavoriteFolderViewHolder, View view) {
            Function1<FolderModel, Unit> onEditListener = favoriteFoldersAdapter.getOnEditListener();
            FolderModel model = editFavoriteFolderViewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            onEditListener.invoke(model);
        }

        public final void setBind(FolderModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
        }

        @Override // fast.dic.dict.interfaces.ItemTouchHelperViewHolder
        public void onItemSelected() {
            this.itemView.setBackgroundColor(-3355444);
        }

        @Override // fast.dic.dict.interfaces.ItemTouchHelperViewHolder
        public void onItemClear() {
            this.itemView.setBackgroundColor(0);
        }
    }

    /* JADX INFO: compiled from: FavoriteFoldersAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$HistoryFolderViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/databinding/HistoryDirectoriesItemLayoutBinding;)V", "setBind", "", "model", "Lfast/dic/dict/models/database/FolderModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class HistoryFolderViewHolder extends RecyclerView.ViewHolder {
        private final HistoryDirectoriesItemLayoutBinding binding;
        final /* synthetic */ FavoriteFoldersAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HistoryFolderViewHolder(final FavoriteFoldersAdapter favoriteFoldersAdapter, HistoryDirectoriesItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = favoriteFoldersAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_screen.FavoriteFoldersAdapter$HistoryFolderViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FavoriteFoldersAdapter.HistoryFolderViewHolder._init_$lambda$0(favoriteFoldersAdapter, this, view);
                }
            });
        }

        static final void _init_$lambda$0(FavoriteFoldersAdapter favoriteFoldersAdapter, HistoryFolderViewHolder historyFolderViewHolder, View view) {
            if (favoriteFoldersAdapter.editMode) {
                return;
            }
            Function1<FolderModel, Unit> onItemClickListener = favoriteFoldersAdapter.getOnItemClickListener();
            FolderModel model = historyFolderViewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            onItemClickListener.invoke(model);
        }

        public final void setBind(FolderModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
        }
    }

    /* JADX INFO: compiled from: FavoriteFoldersAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$WordCategoryFolderViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/WordCategoryDirectoriesItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;Lfast/dic/dict/databinding/WordCategoryDirectoriesItemLayoutBinding;)V", "setBind", "", "model", "Lfast/dic/dict/models/database/FolderModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class WordCategoryFolderViewHolder extends RecyclerView.ViewHolder {
        private final WordCategoryDirectoriesItemLayoutBinding binding;
        final /* synthetic */ FavoriteFoldersAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WordCategoryFolderViewHolder(final FavoriteFoldersAdapter favoriteFoldersAdapter, WordCategoryDirectoriesItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = favoriteFoldersAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_screen.FavoriteFoldersAdapter$WordCategoryFolderViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FavoriteFoldersAdapter.WordCategoryFolderViewHolder._init_$lambda$0(favoriteFoldersAdapter, this, view);
                }
            });
        }

        static final void _init_$lambda$0(FavoriteFoldersAdapter favoriteFoldersAdapter, WordCategoryFolderViewHolder wordCategoryFolderViewHolder, View view) {
            if (favoriteFoldersAdapter.editMode) {
                return;
            }
            Function1<FolderModel, Unit> onItemClickListener = favoriteFoldersAdapter.getOnItemClickListener();
            FolderModel model = wordCategoryFolderViewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            onItemClickListener.invoke(model);
        }

        public final void setBind(FolderModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
        }
    }

    /* JADX INFO: compiled from: FavoriteFoldersAdapter.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J*\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0017b\u0010\b\n\u0012\f\b\u000b\u0012\b\b\fJ\u0004\b\b(\f¨\u0006\r"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lfast/dic/dict/models/database/FolderModel;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "Landroid/annotation/SuppressLint;", "value", "DiffUtilEquals", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallback extends DiffUtil.ItemCallback<FolderModel> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(FolderModel oldItem, FolderModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(FolderModel oldItem, FolderModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }

    /* JADX INFO: compiled from: FavoriteFoldersAdapter.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;", "", "value", "", "<init>", "(Ljava/lang/String;II)V", "getValue", "()I", "HISTORY", "WORD_CATEGORY", "FAVORITE", "EDIT_MODE", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public enum FavoriteFoldersViewType {
        HISTORY(0),
        WORD_CATEGORY(2),
        FAVORITE(1),
        EDIT_MODE(3);

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final int value;

        public static EnumEntries<FavoriteFoldersViewType> getEntries() {
            return $ENTRIES;
        }

        FavoriteFoldersViewType(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }

    @Override // fast.dic.dict.interfaces.ItemTouchHelperAdapter
    public void onItemMove(int fromPosition, int toPosition) {
        if (this.editMode || !(fromPosition == 0 || toPosition == 0 || fromPosition == 1 || toPosition == 1)) {
            if (this.reorderedList.isEmpty()) {
                List<FolderModel> currentList = getCurrentList();
                Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
                this.reorderedList = CollectionsKt.toList(currentList);
            }
            if (fromPosition < 0 || fromPosition >= this.reorderedList.size() || toPosition < 0 || toPosition >= this.reorderedList.size()) {
                return;
            }
            notifyItemMoved(fromPosition, toPosition);
            Collections.swap(this.reorderedList, fromPosition, toPosition);
        }
    }
}
