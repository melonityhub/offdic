package fast.dic.dict.presentation.sort_screen;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.U3;
import fast.dic.dict.databinding.AdapterSortLayoutBinding;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SortDialogAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0019\u001aB\r\b\u0007\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\r\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J.\u0010\u0012\u001a\u00020\u00132\n\u0010\u0014\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0011H\u0017b\u0010\b\u0016\u0012\f\b\u0017\u0012\b\b\fJ\u0004\b\b(\u0018R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u001b"}, d2 = {"Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;", "Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;", "<init>", "()V", "Ljavax/inject/Inject;", "selectedItemListener", "Landroid/view/View$OnClickListener;", "getSelectedItemListener", "()Landroid/view/View$OnClickListener;", "setSelectedItemListener", "(Landroid/view/View$OnClickListener;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", U3.i.L, "Landroid/annotation/SuppressLint;", "value", "NotifyDataSetChanged", "ViewHolder", "DiffCallback", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SortDialogAdapter extends ListAdapter<SortFragmentUIState, ViewHolder> {
    private View.OnClickListener selectedItemListener;

    @Inject
    public SortDialogAdapter() {
        super(new DiffCallback());
    }

    public final View.OnClickListener getSelectedItemListener() {
        return this.selectedItemListener;
    }

    public final void setSelectedItemListener(View.OnClickListener onClickListener) {
        this.selectedItemListener = onClickListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        AdapterSortLayoutBinding adapterSortLayoutBindingInflate = AdapterSortLayoutBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(adapterSortLayoutBindingInflate, "inflate(...)");
        return new ViewHolder(this, adapterSortLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, final int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        SortFragmentUIState item = getItem(position);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
        holder.setBind(item);
        holder.setOnSelectListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.sort_screen.SortDialogAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SortDialogAdapter.onBindViewHolder$lambda$0(this.f$0, position, view);
            }
        });
    }

    static final void onBindViewHolder$lambda$0(SortDialogAdapter sortDialogAdapter, int i, View view) {
        List<SortFragmentUIState> currentList = sortDialogAdapter.getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        List<SortFragmentUIState> list = currentList;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        int i2 = 0;
        for (Object obj : list) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            SortFragmentUIState sortFragmentUIState = (SortFragmentUIState) obj;
            if (i2 == i) {
                sortFragmentUIState.setSelected(true);
            } else {
                sortFragmentUIState.setSelected(false);
            }
            arrayList.add(sortFragmentUIState);
            i2 = i3;
        }
        sortDialogAdapter.submitList(arrayList);
        sortDialogAdapter.notifyDataSetChanged();
        View.OnClickListener onClickListener = sortDialogAdapter.selectedItemListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    /* JADX INFO: compiled from: SortDialogAdapter.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/AdapterSortLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;Lfast/dic/dict/databinding/AdapterSortLayoutBinding;)V", "setOnSelectListener", "", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/view/View$OnClickListener;", "setBind", "model", "Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final AdapterSortLayoutBinding binding;
        final /* synthetic */ SortDialogAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(SortDialogAdapter sortDialogAdapter, AdapterSortLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = sortDialogAdapter;
            this.binding = binding;
        }

        public final void setOnSelectListener(View.OnClickListener listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.binding.setOnSelectListener(listener);
        }

        public final void setBind(SortFragmentUIState model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.binding.setModel(model);
        }
    }

    /* JADX INFO: compiled from: SortDialogAdapter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter$DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lfast/dic/dict/presentation/sort_screen/SortFragmentUIState;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallback extends DiffUtil.ItemCallback<SortFragmentUIState> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(SortFragmentUIState oldItem, SortFragmentUIState newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(SortFragmentUIState oldItem, SortFragmentUIState newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }
}
