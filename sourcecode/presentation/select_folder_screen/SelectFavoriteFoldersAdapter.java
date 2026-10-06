package fast.dic.dict.presentation.select_folder_screen;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import fast.dic.dict.databinding.EditFavoriteDirectoriesItemLayoutBinding;
import fast.dic.dict.databinding.FavoriteDirectoriesItemLayoutBinding;
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

/* JADX INFO: compiled from: SelectFavoriteFoldersAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0004789:B\r\b\u0007\u001a\u0002\b\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011J\u0006\u0010'\u001a\u00020\u001bJ\u0006\u0010(\u001a\u00020\u001bJ\u0018\u0010)\u001a\u00020\u00032\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0016J\u0018\u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u00020-H\u0016J\u0010\u00101\u001a\u00020-2\u0006\u00100\u001a\u00020-H\u0016J\u0018\u00102\u001a\u00020\u001b2\u0006\u00103\u001a\u00020-2\u0006\u00104\u001a\u00020-H\u0016J\u0010\u00105\u001a\u00020\u001b2\u0006\u00100\u001a\u00020-H\u0016J\u0010\u00106\u001a\u00020\u001b2\u0006\u00100\u001a\u00020-H\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R7\u0010\u0016\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0002¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u001b0\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR&\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u001b0\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u001d\"\u0004\b\"\u0010\u001fR&\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u001b0\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u001d\"\u0004\b%\u0010\u001f¨\u0006;"}, d2 = {"Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/models/database/FolderModel;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lfast/dic/dict/interfaces/ItemTouchHelperAdapter;", "<init>", "()V", "Ljavax/inject/Inject;", "editMode", "", "selectedId", "", "getSelectedId", "()Ljava/lang/String;", "setSelectedId", "(Ljava/lang/String;)V", "reorderedList", "", "getReorderedList", "()Ljava/util/List;", "setReorderedList", "(Ljava/util/List;)V", "onSelectedListener", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "model", "", "getOnSelectedListener", "()Lkotlin/jvm/functions/Function1;", "setOnSelectedListener", "(Lkotlin/jvm/functions/Function1;)V", "onEditListener", "getOnEditListener", "setOnEditListener", "onDeleteListener", "getOnDeleteListener", "setOnDeleteListener", "getNewReorderedList", "enableEditMode", "disableEditMode", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "holder", U3.i.L, "getItemViewType", "onItemMove", "fromPosition", "toPosition", "onItemDismiss", "onSwiped", "FavoriteFolderViewHolder", "EditFavoriteFolderViewHolder", "DiffCallback", "FavoriteFoldersViewType", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SelectFavoriteFoldersAdapter extends ListAdapter<FolderModel, RecyclerView.ViewHolder> implements ItemTouchHelperAdapter {
    private boolean editMode;
    private Function1<? super FolderModel, Unit> onDeleteListener;
    private Function1<? super FolderModel, Unit> onEditListener;
    private Function1<? super FolderModel, Unit> onSelectedListener;
    private List<FolderModel> reorderedList;
    private String selectedId;

    @Override // fast.dic.dict.interfaces.ItemTouchHelperAdapter
    public void onItemDismiss(int position) {
    }

    @Override // fast.dic.dict.interfaces.ItemTouchHelperAdapter
    public void onSwiped(int position) {
    }

    @Inject
    public SelectFavoriteFoldersAdapter() {
        super(new DiffCallback());
        this.reorderedList = CollectionsKt.emptyList();
        this.onSelectedListener = new Function1() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFoldersAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Unit.INSTANCE;
            }
        };
        this.onEditListener = new Function1() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFoldersAdapter$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectFavoriteFoldersAdapter.onEditListener$lambda$0((FolderModel) obj);
            }
        };
        this.onDeleteListener = new Function1() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFoldersAdapter$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectFavoriteFoldersAdapter.onDeleteListener$lambda$0((FolderModel) obj);
            }
        };
    }

    public final String getSelectedId() {
        return this.selectedId;
    }

    public final void setSelectedId(String str) {
        this.selectedId = str;
    }

    public final List<FolderModel> getReorderedList() {
        return this.reorderedList;
    }

    public final void setReorderedList(List<FolderModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.reorderedList = list;
    }

    public final Function1<FolderModel, Unit> getOnSelectedListener() {
        return this.onSelectedListener;
    }

    public final void setOnSelectedListener(Function1<? super FolderModel, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onSelectedListener = function1;
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
        EditFavoriteDirectoriesItemLayoutBinding editFavoriteDirectoriesItemLayoutBindingInflate = EditFavoriteDirectoriesItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
        Intrinsics.checkNotNullExpressionValue(editFavoriteDirectoriesItemLayoutBindingInflate, "inflate(...)");
        return new EditFavoriteFolderViewHolder(this, editFavoriteDirectoriesItemLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        FolderModel item = getItem(position);
        if (holder instanceof FavoriteFolderViewHolder) {
            FavoriteFolderViewHolder favoriteFolderViewHolder = (FavoriteFolderViewHolder) holder;
            Intrinsics.checkNotNull(item);
            favoriteFolderViewHolder.setBind(item);
            favoriteFolderViewHolder.setSelected(Intrinsics.areEqual(getItem(position).getDocumentId(), this.selectedId));
            return;
        }
        if (holder instanceof EditFavoriteFolderViewHolder) {
            EditFavoriteFolderViewHolder editFavoriteFolderViewHolder = (EditFavoriteFolderViewHolder) holder;
            Intrinsics.checkNotNull(item);
            editFavoriteFolderViewHolder.setBind(item);
            editFavoriteFolderViewHolder.setSelected(Intrinsics.areEqual(getItem(position).getDocumentId(), this.selectedId));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        if (this.editMode) {
            return FavoriteFoldersViewType.EDIT_MODE.getValue();
        }
        return FavoriteFoldersViewType.FAVORITE.getValue();
    }

    /* JADX INFO: compiled from: SelectFavoriteFoldersAdapter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;Lfast/dic/dict/databinding/FavoriteDirectoriesItemLayoutBinding;)V", "setBind", "", "model", "Lfast/dic/dict/models/database/FolderModel;", "setSelected", "state", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class FavoriteFolderViewHolder extends RecyclerView.ViewHolder {
        private final FavoriteDirectoriesItemLayoutBinding binding;
        final /* synthetic */ SelectFavoriteFoldersAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FavoriteFolderViewHolder(final SelectFavoriteFoldersAdapter selectFavoriteFoldersAdapter, FavoriteDirectoriesItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = selectFavoriteFoldersAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFoldersAdapter$FavoriteFolderViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelectFavoriteFoldersAdapter.FavoriteFolderViewHolder._init_$lambda$0(selectFavoriteFoldersAdapter, this, view);
                }
            });
        }

        static final void _init_$lambda$0(SelectFavoriteFoldersAdapter selectFavoriteFoldersAdapter, FavoriteFolderViewHolder favoriteFolderViewHolder, View view) {
            String selectedId = selectFavoriteFoldersAdapter.getSelectedId();
            FolderModel model = favoriteFolderViewHolder.binding.getModel();
            if (Intrinsics.areEqual(selectedId, model != null ? model.getDocumentId() : null)) {
                selectFavoriteFoldersAdapter.setSelectedId(null);
                selectFavoriteFoldersAdapter.getOnSelectedListener().invoke(null);
            } else {
                FolderModel model2 = favoriteFolderViewHolder.binding.getModel();
                selectFavoriteFoldersAdapter.setSelectedId(model2 != null ? model2.getDocumentId() : null);
                Function1<FolderModel, Unit> onSelectedListener = selectFavoriteFoldersAdapter.getOnSelectedListener();
                FolderModel model3 = favoriteFolderViewHolder.binding.getModel();
                Intrinsics.checkNotNull(model3);
                onSelectedListener.invoke(model3);
            }
            selectFavoriteFoldersAdapter.notifyDataSetChanged();
        }

        public final void setBind(FolderModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
        }

        public final void setSelected(boolean state) {
            this.binding.setSelected(Boolean.valueOf(state));
        }
    }

    /* JADX INFO: compiled from: SelectFavoriteFoldersAdapter.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rJ\b\u0010\u000e\u001a\u00020\bH\u0016J\b\u0010\u000f\u001a\u00020\bH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$EditFavoriteFolderViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;", "binding", "Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;Lfast/dic/dict/databinding/EditFavoriteDirectoriesItemLayoutBinding;)V", "setBind", "", "model", "Lfast/dic/dict/models/database/FolderModel;", "setSelected", "state", "", "onItemSelected", "onItemClear", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class EditFavoriteFolderViewHolder extends RecyclerView.ViewHolder implements ItemTouchHelperViewHolder {
        private final EditFavoriteDirectoriesItemLayoutBinding binding;
        final /* synthetic */ SelectFavoriteFoldersAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EditFavoriteFolderViewHolder(final SelectFavoriteFoldersAdapter selectFavoriteFoldersAdapter, EditFavoriteDirectoriesItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = selectFavoriteFoldersAdapter;
            this.binding = binding;
            binding.setOnDeleteClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFoldersAdapter$EditFavoriteFolderViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelectFavoriteFoldersAdapter.EditFavoriteFolderViewHolder._init_$lambda$0(selectFavoriteFoldersAdapter, this, view);
                }
            });
            binding.setOnEditClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFoldersAdapter$EditFavoriteFolderViewHolder$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SelectFavoriteFoldersAdapter.EditFavoriteFolderViewHolder._init_$lambda$1(selectFavoriteFoldersAdapter, this, view);
                }
            });
        }

        static final void _init_$lambda$0(SelectFavoriteFoldersAdapter selectFavoriteFoldersAdapter, EditFavoriteFolderViewHolder editFavoriteFolderViewHolder, View view) {
            Function1<FolderModel, Unit> onDeleteListener = selectFavoriteFoldersAdapter.getOnDeleteListener();
            FolderModel model = editFavoriteFolderViewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            onDeleteListener.invoke(model);
        }

        static final void _init_$lambda$1(SelectFavoriteFoldersAdapter selectFavoriteFoldersAdapter, EditFavoriteFolderViewHolder editFavoriteFolderViewHolder, View view) {
            Function1<FolderModel, Unit> onEditListener = selectFavoriteFoldersAdapter.getOnEditListener();
            FolderModel model = editFavoriteFolderViewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            onEditListener.invoke(model);
        }

        public final void setBind(FolderModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
        }

        public final void setSelected(boolean state) {
            this.binding.setSelected(Boolean.valueOf(state));
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

    /* JADX INFO: compiled from: SelectFavoriteFoldersAdapter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lfast/dic/dict/models/database/FolderModel;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
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

    /* JADX INFO: compiled from: SelectFavoriteFoldersAdapter.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter$FavoriteFoldersViewType;", "", "value", "", "<init>", "(Ljava/lang/String;II)V", "getValue", "()I", "FAVORITE", "EDIT_MODE", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public enum FavoriteFoldersViewType {
        FAVORITE(0),
        EDIT_MODE(1);

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
        if (this.editMode) {
            if (this.reorderedList.isEmpty()) {
                List<FolderModel> currentList = getCurrentList();
                Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
                this.reorderedList = CollectionsKt.toList(currentList);
            }
            Collections.swap(this.reorderedList, fromPosition, toPosition);
            notifyItemMoved(fromPosition, toPosition);
        }
    }
}
