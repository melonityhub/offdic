package fast.dic.dict.adapters;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import fast.dic.dict.databinding.CopyRightMoreRowLayoutBinding;
import fast.dic.dict.databinding.MoreRowLayoutBinding;
import fast.dic.dict.databinding.SubscriptionsMoreRowLayoutBinding;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MoreAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0005 !\"#$B\r\b\u0007\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\fH\u0016J\u0018\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\fH\u0016J\u0010\u0010\u001f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016RJ\u0010\u0007\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0013\u0012\u00110\f¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R \u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006%"}, d2 = {"Lfast/dic/dict/adapters/MoreAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/adapters/MoreRowModel;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "<init>", "()V", "Ljavax/inject/Inject;", "onItemClickListener", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "item", "", U3.i.L, "", "getOnItemClickListener", "()Lkotlin/jvm/functions/Function2;", "setOnItemClickListener", "(Lkotlin/jvm/functions/Function2;)V", "onSubscriptionClickListener", "Lkotlin/Function0;", "getOnSubscriptionClickListener", "()Lkotlin/jvm/functions/Function0;", "setOnSubscriptionClickListener", "(Lkotlin/jvm/functions/Function0;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", "getItemViewType", "ViewHolder", "SubscriptionsViewHolder", "CopyrightViewHolder", "ViewType", "DiffCallback", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class MoreAdapter extends ListAdapter<MoreRowModel, RecyclerView.ViewHolder> {
    private Function2<? super MoreRowModel, ? super Integer, Unit> onItemClickListener;
    private Function0<Unit> onSubscriptionClickListener;

    @Inject
    public MoreAdapter() {
        super(new DiffCallback());
        this.onItemClickListener = new Function2() { // from class: fast.dic.dict.adapters.MoreAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return MoreAdapter.onItemClickListener$lambda$0((MoreRowModel) obj, ((Integer) obj2).intValue());
            }
        };
        this.onSubscriptionClickListener = new Function0() { // from class: fast.dic.dict.adapters.MoreAdapter$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
    }

    static final Unit onItemClickListener$lambda$0(MoreRowModel moreRowModel, int i) {
        Intrinsics.checkNotNullParameter(moreRowModel, "<unused var>");
        return Unit.INSTANCE;
    }

    public final Function2<MoreRowModel, Integer, Unit> getOnItemClickListener() {
        return this.onItemClickListener;
    }

    public final void setOnItemClickListener(Function2<? super MoreRowModel, ? super Integer, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onItemClickListener = function2;
    }

    public final Function0<Unit> getOnSubscriptionClickListener() {
        return this.onSubscriptionClickListener;
    }

    public final void setOnSubscriptionClickListener(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onSubscriptionClickListener = function0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
        if (viewType == ViewType.SUB.getValue()) {
            SubscriptionsMoreRowLayoutBinding subscriptionsMoreRowLayoutBindingInflate = SubscriptionsMoreRowLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(subscriptionsMoreRowLayoutBindingInflate, "inflate(...)");
            return new SubscriptionsViewHolder(this, subscriptionsMoreRowLayoutBindingInflate);
        }
        if (viewType == ViewType.VERSION.getValue()) {
            CopyRightMoreRowLayoutBinding copyRightMoreRowLayoutBindingInflate = CopyRightMoreRowLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(copyRightMoreRowLayoutBindingInflate, "inflate(...)");
            return new CopyrightViewHolder(this, copyRightMoreRowLayoutBindingInflate);
        }
        MoreRowLayoutBinding moreRowLayoutBindingInflate = MoreRowLayoutBinding.inflate(layoutInflaterFrom, parent, false);
        Intrinsics.checkNotNullExpressionValue(moreRowLayoutBindingInflate, "inflate(...)");
        return new ViewHolder(this, moreRowLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        MoreRowModel item = getItem(position);
        if (holder instanceof ViewHolder) {
            Intrinsics.checkNotNull(item);
            ((ViewHolder) holder).setBind(item);
        } else if (holder instanceof CopyrightViewHolder) {
            ((CopyrightViewHolder) holder).setData(item.getTitle());
        } else if (holder instanceof SubscriptionsViewHolder) {
            Intrinsics.checkNotNull(item);
            ((SubscriptionsViewHolder) holder).setBind(item);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        if (getItem(position).getType() == MoreRowEnum.SUBSCRIPTIONS) {
            return ViewType.SUB.getValue();
        }
        if (getItem(position).getType() == MoreRowEnum.VERSION) {
            return ViewType.VERSION.getValue();
        }
        return ViewType.MORE.getValue();
    }

    /* JADX INFO: compiled from: MoreAdapter.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u000e"}, d2 = {"Lfast/dic/dict/adapters/MoreAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/MoreRowLayoutBinding;", "<init>", "(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/databinding/MoreRowLayoutBinding;)V", "model", "Lfast/dic/dict/adapters/MoreRowModel;", "getModel", "()Lfast/dic/dict/adapters/MoreRowModel;", "setModel", "(Lfast/dic/dict/adapters/MoreRowModel;)V", "setBind", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final MoreRowLayoutBinding binding;
        public MoreRowModel model;
        final /* synthetic */ MoreAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(final MoreAdapter moreAdapter, MoreRowLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = moreAdapter;
            this.binding = binding;
            binding.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.adapters.MoreAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MoreAdapter moreAdapter2 = moreAdapter;
                    MoreAdapter.ViewHolder viewHolder = this;
                    moreAdapter2.getOnItemClickListener().invoke(viewHolder.getModel(), Integer.valueOf(viewHolder.getBindingAdapterPosition()));
                }
            });
        }

        public final MoreRowModel getModel() {
            MoreRowModel moreRowModel = this.model;
            if (moreRowModel != null) {
                return moreRowModel;
            }
            Intrinsics.throwUninitializedPropertyAccessException("model");
            return null;
        }

        public final void setModel(MoreRowModel moreRowModel) {
            Intrinsics.checkNotNullParameter(moreRowModel, "<set-?>");
            this.model = moreRowModel;
        }

        public final void setBind(MoreRowModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            setModel(model);
            this.binding.setTitle(model.getTitle());
        }
    }

    /* JADX INFO: compiled from: MoreAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/adapters/MoreAdapter$SubscriptionsViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;", "<init>", "(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/databinding/SubscriptionsMoreRowLayoutBinding;)V", "setBind", "", "model", "Lfast/dic/dict/adapters/MoreRowModel;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class SubscriptionsViewHolder extends RecyclerView.ViewHolder {
        private final SubscriptionsMoreRowLayoutBinding binding;
        final /* synthetic */ MoreAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SubscriptionsViewHolder(final MoreAdapter moreAdapter, SubscriptionsMoreRowLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = moreAdapter;
            this.binding = binding;
            binding.setOnSubscriptionClick(new View.OnClickListener() { // from class: fast.dic.dict.adapters.MoreAdapter$SubscriptionsViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    moreAdapter.getOnSubscriptionClickListener().invoke();
                }
            });
        }

        public final void setBind(MoreRowModel model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
        }
    }

    /* JADX INFO: compiled from: MoreAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/adapters/MoreAdapter$CopyrightViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;", "<init>", "(Lfast/dic/dict/adapters/MoreAdapter;Lfast/dic/dict/databinding/CopyRightMoreRowLayoutBinding;)V", "setData", "", "title", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class CopyrightViewHolder extends RecyclerView.ViewHolder {
        private final CopyRightMoreRowLayoutBinding binding;
        final /* synthetic */ MoreAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CopyrightViewHolder(MoreAdapter moreAdapter, CopyRightMoreRowLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = moreAdapter;
            this.binding = binding;
        }

        public final void setData(String title) {
            Intrinsics.checkNotNullParameter(title, "title");
            this.binding.setTitle(title);
        }
    }

    /* JADX INFO: compiled from: MoreAdapter.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lfast/dic/dict/adapters/MoreAdapter$ViewType;", "", "value", "", "<init>", "(Ljava/lang/String;II)V", "getValue", "()I", "SUB", "MORE", "VERSION", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public enum ViewType {
        SUB(0),
        MORE(1),
        VERSION(2);

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final int value;

        public static EnumEntries<ViewType> getEntries() {
            return $ENTRIES;
        }

        ViewType(int i) {
            this.value = i;
        }

        public final int getValue() {
            return this.value;
        }
    }

    /* JADX INFO: compiled from: MoreAdapter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lfast/dic/dict/adapters/MoreAdapter$DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lfast/dic/dict/adapters/MoreRowModel;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallback extends DiffUtil.ItemCallback<MoreRowModel> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(MoreRowModel oldItem, MoreRowModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(MoreRowModel oldItem, MoreRowModel newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }
}
