package fast.dic.dict.adapters;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import fast.dic.dict.databinding.PaymentMethodItemLayoutBinding;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentMethodAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0015\u0016B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\r\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001c\u0010\u0012\u001a\u00020\b2\n\u0010\u0013\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0011H\u0016R(\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\b0\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/adapters/PaymentMethodAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/adapters/PaymentMethod;", "Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;", "<init>", "()V", "onClick", "Lkotlin/Function1;", "", "getOnClick", "()Lkotlin/jvm/functions/Function1;", "setOnClick", "(Lkotlin/jvm/functions/Function1;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "holder", U3.i.L, "ViewHolder", "DiffCallBack", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class PaymentMethodAdapter extends ListAdapter<PaymentMethod, ViewHolder> {
    private Function1<? super PaymentMethod, Unit> onClick;

    public PaymentMethodAdapter() {
        super(new DiffCallBack());
        this.onClick = new Function1() { // from class: fast.dic.dict.adapters.PaymentMethodAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Unit.INSTANCE;
            }
        };
    }

    public final Function1<PaymentMethod, Unit> getOnClick() {
        return this.onClick;
    }

    public final void setOnClick(Function1<? super PaymentMethod, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onClick = function1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        PaymentMethodItemLayoutBinding paymentMethodItemLayoutBindingInflate = PaymentMethodItemLayoutBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(paymentMethodItemLayoutBindingInflate, "inflate(...)");
        return new ViewHolder(this, paymentMethodItemLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        holder.setPaymentMethod(getItem(position));
    }

    /* JADX INFO: compiled from: PaymentMethodAdapter.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R(\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lfast/dic/dict/adapters/PaymentMethodAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;", "<init>", "(Lfast/dic/dict/adapters/PaymentMethodAdapter;Lfast/dic/dict/databinding/PaymentMethodItemLayoutBinding;)V", "value", "Lfast/dic/dict/adapters/PaymentMethod;", "paymentMethod", "getPaymentMethod", "()Lfast/dic/dict/adapters/PaymentMethod;", "setPaymentMethod", "(Lfast/dic/dict/adapters/PaymentMethod;)V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final PaymentMethodItemLayoutBinding binding;
        private PaymentMethod paymentMethod;
        final /* synthetic */ PaymentMethodAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(final PaymentMethodAdapter paymentMethodAdapter, PaymentMethodItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = paymentMethodAdapter;
            this.binding = binding;
            binding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.adapters.PaymentMethodAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    PaymentMethodAdapter.ViewHolder._init_$lambda$0(paymentMethodAdapter, this, view);
                }
            });
        }

        public final PaymentMethod getPaymentMethod() {
            return this.paymentMethod;
        }

        public final void setPaymentMethod(PaymentMethod paymentMethod) {
            this.paymentMethod = paymentMethod;
            if (paymentMethod != null && paymentMethod.getSelected()) {
                this.this$0.getOnClick().invoke(paymentMethod);
            }
            this.binding.setPayment(paymentMethod);
        }

        static final void _init_$lambda$0(PaymentMethodAdapter paymentMethodAdapter, ViewHolder viewHolder, View view) {
            boolean z;
            List<PaymentMethod> currentList = paymentMethodAdapter.getCurrentList();
            Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
            List<PaymentMethod> list = currentList;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
            Iterator<T> it = list.iterator();
            while (true) {
                z = false;
                if (!it.hasNext()) {
                    break;
                }
                PaymentMethod paymentMethod = (PaymentMethod) it.next();
                Intrinsics.checkNotNull(paymentMethod);
                PaymentMethod paymentMethodCopy$default = PaymentMethod.copy$default(paymentMethod, null, null, null, null, null, false, 63, null);
                SubscriptionIAPPlatformEnum paymentMethod2 = paymentMethod.getPaymentMethod();
                PaymentMethod paymentMethod3 = viewHolder.paymentMethod;
                if (paymentMethod2 == (paymentMethod3 != null ? paymentMethod3.getPaymentMethod() : null)) {
                    PaymentMethod paymentMethod4 = viewHolder.paymentMethod;
                    if (paymentMethod4 != null && paymentMethod4.getSelected()) {
                        z = true;
                    }
                    paymentMethodCopy$default.setSelected(!z);
                } else {
                    paymentMethodCopy$default.setSelected(false);
                }
                arrayList.add(paymentMethodCopy$default);
            }
            paymentMethodAdapter.submitList(arrayList);
            Function1<PaymentMethod, Unit> onClick = paymentMethodAdapter.getOnClick();
            PaymentMethod paymentMethod5 = viewHolder.paymentMethod;
            PaymentMethod paymentMethodCopy$default2 = paymentMethod5 != null ? PaymentMethod.copy$default(paymentMethod5, null, null, null, null, null, false, 63, null) : null;
            if (paymentMethodCopy$default2 != null) {
                PaymentMethod paymentMethod6 = viewHolder.paymentMethod;
                if (paymentMethod6 != null && paymentMethod6.getSelected()) {
                    z = true;
                }
                paymentMethodCopy$default2.setSelected(!z);
            }
            onClick.invoke(paymentMethodCopy$default2);
        }
    }

    /* JADX INFO: compiled from: PaymentMethodAdapter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lfast/dic/dict/adapters/PaymentMethodAdapter$DiffCallBack;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lfast/dic/dict/adapters/PaymentMethod;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallBack extends DiffUtil.ItemCallback<PaymentMethod> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(PaymentMethod oldItem, PaymentMethod newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(PaymentMethod oldItem, PaymentMethod newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }
}
