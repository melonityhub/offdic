package fast.dic.dict.adapters;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.C4232z5;
import com.ironsource.U3;
import fast.dic.dict.R;
import fast.dic.dict.databinding.PricingFeatureItemLayoutBinding;
import fast.dic.dict.databinding.PricingHeaderItemLayoutBinding;
import fast.dic.dict.models.Feature;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PricingFeatureListAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003\u0014\u0015\u0016B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0007¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/adapters/PricingFeatureListAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/models/Feature;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "planNumber", "", "<init>", "(I)V", "getPlanNumber", "()I", "setPlanNumber", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "", "holder", U3.i.L, "getItemViewType", "HeaderViewHolder", "ViewHolder", "DiffCallBack", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PricingFeatureListAdapter extends ListAdapter<Feature, RecyclerView.ViewHolder> {
    private int planNumber;

    public PricingFeatureListAdapter() {
        this(0, 1, null);
    }

    public PricingFeatureListAdapter(int i) {
        super(new DiffCallBack());
        this.planNumber = i;
    }

    public /* synthetic */ PricingFeatureListAdapter(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i);
    }

    public final int getPlanNumber() {
        return this.planNumber;
    }

    public final void setPlanNumber(int i) {
        this.planNumber = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
        if (viewType == 0) {
            PricingHeaderItemLayoutBinding pricingHeaderItemLayoutBindingInflate = PricingHeaderItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
            Intrinsics.checkNotNullExpressionValue(pricingHeaderItemLayoutBindingInflate, "inflate(...)");
            return new HeaderViewHolder(this, pricingHeaderItemLayoutBindingInflate);
        }
        PricingFeatureItemLayoutBinding pricingFeatureItemLayoutBindingInflate = PricingFeatureItemLayoutBinding.inflate(layoutInflaterFrom, parent, false);
        Intrinsics.checkNotNullExpressionValue(pricingFeatureItemLayoutBindingInflate, "inflate(...)");
        return new ViewHolder(this, pricingFeatureItemLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        if (holder instanceof HeaderViewHolder) {
            Feature item = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
            ((HeaderViewHolder) holder).setTable(item);
        } else if (holder instanceof ViewHolder) {
            Feature item2 = getItem(position);
            Intrinsics.checkNotNullExpressionValue(item2, "getItem(...)");
            ((ViewHolder) holder).setTable(item2);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return getItem(position).isHeader() ? 0 : 1;
    }

    /* JADX INFO: compiled from: PricingFeatureListAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/adapters/PricingFeatureListAdapter$HeaderViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;", "<init>", "(Lfast/dic/dict/adapters/PricingFeatureListAdapter;Lfast/dic/dict/databinding/PricingHeaderItemLayoutBinding;)V", "setTable", "", "feature", "Lfast/dic/dict/models/Feature;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class HeaderViewHolder extends RecyclerView.ViewHolder {
        private final PricingHeaderItemLayoutBinding binding;
        final /* synthetic */ PricingFeatureListAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HeaderViewHolder(PricingFeatureListAdapter pricingFeatureListAdapter, PricingHeaderItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = pricingFeatureListAdapter;
            this.binding = binding;
        }

        public final void setTable(Feature feature) {
            Intrinsics.checkNotNullParameter(feature, "feature");
            this.binding.setTitle(feature.getTitle());
        }
    }

    /* JADX INFO: compiled from: PricingFeatureListAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/adapters/PricingFeatureListAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;", "<init>", "(Lfast/dic/dict/adapters/PricingFeatureListAdapter;Lfast/dic/dict/databinding/PricingFeatureItemLayoutBinding;)V", "setTable", "", C4232z5.R, "Lfast/dic/dict/models/Feature;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final PricingFeatureItemLayoutBinding binding;
        final /* synthetic */ PricingFeatureListAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(PricingFeatureListAdapter pricingFeatureListAdapter, PricingFeatureItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = pricingFeatureListAdapter;
            this.binding = binding;
        }

        public final void setTable(Feature table) {
            int i;
            Object plan2;
            Intrinsics.checkNotNullParameter(table, "table");
            this.binding.setFeatureTitle(table.getTitle());
            PricingFeatureItemLayoutBinding pricingFeatureItemLayoutBinding = this.binding;
            String subtitle = table.getSubtitle();
            if (subtitle == null) {
                subtitle = "";
            }
            pricingFeatureItemLayoutBinding.setFeatureDescription(subtitle);
            PricingFeatureItemLayoutBinding pricingFeatureItemLayoutBinding2 = this.binding;
            if (this.this$0.getPlanNumber() == 0 || this.this$0.getPlanNumber() == 1) {
                i = R.color.plan0;
            } else {
                i = this.this$0.getPlanNumber() == 2 ? R.color.plan2 : R.color.plan3;
            }
            pricingFeatureItemLayoutBinding2.setFeatureColor(Integer.valueOf(i));
            if (this.this$0.getPlanNumber() == 0) {
                plan2 = table.getPlan0();
            } else if (this.this$0.getPlanNumber() == 1) {
                plan2 = table.getPlan1();
            } else {
                plan2 = this.this$0.getPlanNumber() == 2 ? table.getPlan2() : table.getPlan3();
            }
            if (plan2 instanceof Boolean) {
                this.binding.setFeatureStatusText("");
                this.binding.setFeatureStatusIcon(Integer.valueOf(((Boolean) plan2).booleanValue() ? R.drawable.ic_check : R.drawable.ic_close));
            } else if (plan2 instanceof String) {
                this.binding.setFeatureStatusText((String) plan2);
                this.binding.setFeatureStatusIcon(null);
            }
        }
    }

    /* JADX INFO: compiled from: PricingFeatureListAdapter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lfast/dic/dict/adapters/PricingFeatureListAdapter$DiffCallBack;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lfast/dic/dict/models/Feature;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallBack extends DiffUtil.ItemCallback<Feature> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(Feature oldItem, Feature newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(Feature oldItem, Feature newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }
}
