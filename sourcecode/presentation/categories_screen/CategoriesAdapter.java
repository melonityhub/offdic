package fast.dic.dict.presentation.categories_screen;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import fast.dic.dict.databinding.CategoryEllipsisRowItemLayoutBinding;
import fast.dic.dict.databinding.WodDirectoriesItemLayoutBinding;
import fast.dic.dict.models.WordCategoryModel;
import fast.dic.dict.utils.FDParseUserExtensionKt;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CategoriesAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003)*+B\r\b\u0007\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u00032\u0006\u0010'\u001a\u00020$H\u0016J\u0010\u0010(\u001a\u00020$2\u0006\u0010'\u001a\u00020$H\u0016R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\t\"\u0004\b\n\u0010\u000bR \u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012RJ\u0010\u0013\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u00020\u000e0\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\t\"\u0004\b\u001f\u0010\u000b¨\u0006,"}, d2 = {"Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/models/WordCategoryModel;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "<init>", "()V", "Ljavax/inject/Inject;", "isCurrentLanguagePersian", "", "()Z", "setCurrentLanguagePersian", "(Z)V", "onWodClickListener", "Lkotlin/Function0;", "", "getOnWodClickListener", "()Lkotlin/jvm/functions/Function0;", "setOnWodClickListener", "(Lkotlin/jvm/functions/Function0;)V", "onItemClicked", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "cat", "locked", "getOnItemClicked", "()Lkotlin/jvm/functions/Function2;", "setOnItemClicked", "(Lkotlin/jvm/functions/Function2;)V", "hasSubscription", "getHasSubscription", "setHasSubscription", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "holder", U3.i.L, "getItemViewType", "EllipsizeViewHolder", "WODFolderViewHolder", "DiffCallback", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class CategoriesAdapter extends ListAdapter<WordCategoryModel, RecyclerView.ViewHolder> {
    private boolean hasSubscription;
    private boolean isCurrentLanguagePersian;
    private Function2<? super WordCategoryModel, ? super Boolean, Unit> onItemClicked;
    private Function0<Unit> onWodClickListener;

    @Inject
    public CategoriesAdapter() {
        super(new DiffCallback());
        this.onWodClickListener = new Function0() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.onItemClicked = new Function2() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesAdapter$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return CategoriesAdapter.onItemClicked$lambda$0((WordCategoryModel) obj, ((Boolean) obj2).booleanValue());
            }
        };
        this.hasSubscription = FDParseUserExtensionKt.hasSubscription();
    }

    /* JADX INFO: renamed from: isCurrentLanguagePersian, reason: from getter */
    public final boolean getIsCurrentLanguagePersian() {
        return this.isCurrentLanguagePersian;
    }

    public final void setCurrentLanguagePersian(boolean z) {
        this.isCurrentLanguagePersian = z;
    }

    public final Function0<Unit> getOnWodClickListener() {
        return this.onWodClickListener;
    }

    public final void setOnWodClickListener(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onWodClickListener = function0;
    }

    static final Unit onItemClicked$lambda$0(WordCategoryModel wordCategoryModel, boolean z) {
        Intrinsics.checkNotNullParameter(wordCategoryModel, "<unused var>");
        return Unit.INSTANCE;
    }

    public final Function2<WordCategoryModel, Boolean, Unit> getOnItemClicked() {
        return this.onItemClicked;
    }

    public final void setOnItemClicked(Function2<? super WordCategoryModel, ? super Boolean, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onItemClicked = function2;
    }

    public final boolean getHasSubscription() {
        return this.hasSubscription;
    }

    public final void setHasSubscription(boolean z) {
        this.hasSubscription = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
        if (viewType == 0) {
            CategoryEllipsisRowItemLayoutBinding categoryEllipsisRowItemLayoutBindingInflate = CategoryEllipsisRowItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(categoryEllipsisRowItemLayoutBindingInflate, "inflate(...)");
            return new EllipsizeViewHolder(this, categoryEllipsisRowItemLayoutBindingInflate);
        }
        WodDirectoriesItemLayoutBinding wodDirectoriesItemLayoutBindingInflate = WodDirectoriesItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
        Intrinsics.checkNotNullExpressionValue(wodDirectoriesItemLayoutBindingInflate, "inflate(...)");
        return new WODFolderViewHolder(this, wodDirectoriesItemLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof WODFolderViewHolder) {
            WordCategoryModel item = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
            ((WODFolderViewHolder) holder).setBind(item);
        } else if (holder instanceof EllipsizeViewHolder) {
            WordCategoryModel item2 = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item2, "getItem(...)");
            ((EllipsizeViewHolder) holder).setBind(item2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return getItem(position).isWod() ? 1 : 0;
    }

    /* JADX INFO: compiled from: CategoriesAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;)V", "setBind", "", "model", "Lfast/dic/dict/models/WordCategoryModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class EllipsizeViewHolder extends RecyclerView.ViewHolder {
        private final CategoryEllipsisRowItemLayoutBinding binding;
        final /* synthetic */ CategoriesAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EllipsizeViewHolder(final CategoriesAdapter categoriesAdapter, CategoryEllipsisRowItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = categoriesAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesAdapter$EllipsizeViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CategoriesAdapter.EllipsizeViewHolder._init_$lambda$0(categoriesAdapter, this, view);
                }
            });
        }

        static final void _init_$lambda$0(CategoriesAdapter categoriesAdapter, EllipsizeViewHolder ellipsizeViewHolder, View view) {
            Function2<WordCategoryModel, Boolean, Unit> onItemClicked = categoriesAdapter.getOnItemClicked();
            WordCategoryModel model = ellipsizeViewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            Boolean locked = ellipsizeViewHolder.binding.getLocked();
            Intrinsics.checkNotNull(locked);
            onItemClicked.invoke(model, locked);
        }

        public final void setBind(WordCategoryModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
            this.binding.setLocked(Boolean.valueOf(!this.this$0.getHasSubscription()));
            this.binding.setIsPersianLanguage(Boolean.valueOf(this.this$0.getIsCurrentLanguagePersian()));
        }
    }

    /* JADX INFO: compiled from: CategoriesAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;)V", "setBind", "", "model", "Lfast/dic/dict/models/WordCategoryModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class WODFolderViewHolder extends RecyclerView.ViewHolder {
        private final WodDirectoriesItemLayoutBinding binding;
        final /* synthetic */ CategoriesAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WODFolderViewHolder(final CategoriesAdapter categoriesAdapter, WodDirectoriesItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = categoriesAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesAdapter$WODFolderViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    categoriesAdapter.getOnWodClickListener().invoke();
                }
            });
        }

        public final void setBind(WordCategoryModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setCount(model.getCount());
            this.binding.setIsPersianLanguage(Boolean.valueOf(this.this$0.getIsCurrentLanguagePersian()));
        }
    }

    /* JADX INFO: compiled from: CategoriesAdapter.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J*\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0017b\u0010\b\n\u0012\f\b\u000b\u0012\b\b\fJ\u0004\b\b(\f¨\u0006\r"}, d2 = {"Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lfast/dic/dict/models/WordCategoryModel;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "Landroid/annotation/SuppressLint;", "value", "DiffUtilEquals", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallback extends DiffUtil.ItemCallback<WordCategoryModel> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(WordCategoryModel oldItem, WordCategoryModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(WordCategoryModel oldItem, WordCategoryModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }
}
