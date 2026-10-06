package fast.dic.dict.presentation.result_order_modal;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import fast.dic.dict.databinding.ResultOrderItemLayoutBinding;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ResultOrderAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\u0018\u0000 \u001b2\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0003\u0019\u001a\u001bB\r\b\u0007\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001c\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0010H\u0016J\u0016\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u0010J\u000e\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0010R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u001c"}, d2 = {"Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "", "Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;", "<init>", "()V", "Ljavax/inject/Inject;", "isEnglishWord", "", "()Z", "setEnglishWord", "(Z)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "", "holder", U3.i.L, "moveItem", "fromPosition", "toPosition", "removeItem", "ViewHolder", "DiffCallback", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class ResultOrderAdapter extends ListAdapter<String, ViewHolder> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private boolean isEnglishWord;

    @Inject
    public ResultOrderAdapter() {
        super(new DiffCallback());
        this.isEnglishWord = true;
    }

    /* JADX INFO: renamed from: isEnglishWord, reason: from getter */
    public final boolean getIsEnglishWord() {
        return this.isEnglishWord;
    }

    public final void setEnglishWord(boolean z) {
        this.isEnglishWord = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        ResultOrderItemLayoutBinding resultOrderItemLayoutBindingInflate = ResultOrderItemLayoutBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(resultOrderItemLayoutBindingInflate, "inflate(...)");
        return new ViewHolder(this, resultOrderItemLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        String item = getItem(position);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
        holder.setBind(item, position);
    }

    public final void moveItem(int fromPosition, int toPosition) {
        List<String> currentList = getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        List mutableList = CollectionsKt.toMutableList((Collection) currentList);
        if (fromPosition >= toPosition) {
            int i = toPosition + 1;
            if (i <= fromPosition) {
                while (true) {
                    Collections.swap(mutableList, fromPosition, fromPosition - 1);
                    if (fromPosition == i) {
                        break;
                    } else {
                        fromPosition--;
                    }
                }
            }
        } else {
            while (fromPosition < toPosition) {
                int i2 = fromPosition + 1;
                Collections.swap(mutableList, fromPosition, i2);
                fromPosition = i2;
            }
        }
        submitList(mutableList);
    }

    public final void removeItem(int position) {
        List<String> currentList = getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        List mutableList = CollectionsKt.toMutableList((Collection) currentList);
        mutableList.remove(position);
        submitList(mutableList);
    }

    /* JADX INFO: compiled from: ResultOrderAdapter.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;Lfast/dic/dict/databinding/ResultOrderItemLayoutBinding;)V", "setBind", "", "title", "", "index", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final ResultOrderItemLayoutBinding binding;
        final /* synthetic */ ResultOrderAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(ResultOrderAdapter resultOrderAdapter, ResultOrderItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = resultOrderAdapter;
            this.binding = binding;
        }

        public final void setBind(String title, int index) {
            String orderPeTitleFrom;
            Intrinsics.checkNotNullParameter(title, "title");
            this.binding.setIndex(Integer.valueOf(index));
            ResultOrderItemLayoutBinding resultOrderItemLayoutBinding = this.binding;
            if (this.this$0.getIsEnglishWord()) {
                Companion companion = ResultOrderAdapter.INSTANCE;
                Context context = this.binding.getRoot().getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                orderPeTitleFrom = companion.getOrderEnTitleFrom(title, context);
            } else {
                Companion companion2 = ResultOrderAdapter.INSTANCE;
                Context context2 = this.binding.getRoot().getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
                orderPeTitleFrom = companion2.getOrderPeTitleFrom(title, context2);
            }
            resultOrderItemLayoutBinding.setTitle(orderPeTitleFrom);
        }
    }

    /* JADX INFO: compiled from: ResultOrderAdapter.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallback extends DiffUtil.ItemCallback<String> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(String oldItem, String newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(String oldItem, String newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }

    /* JADX INFO: compiled from: ResultOrderAdapter.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bJ\u0018\u0010\t\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\b¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter$Companion;", "", "<init>", "()V", "getOrderEnTitleFrom", "", U3.i.W, Names.CONTEXT, "Landroid/content/Context;", "getOrderPeTitleFrom", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getOrderEnTitleFrom(String key, Context context) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(context, "context");
            return (String) MapsKt.mapOf(TuplesKt.to("0", context.getString(R.string.results_meaning) + " " + context.getString(R.string.results_sentence)), TuplesKt.to("1", context.getString(R.string.english_synonyms_and_antonyms)), TuplesKt.to("2", "Phrasal verbs"), TuplesKt.to(ExifInterface.GPS_MEASUREMENT_3D, "Collocations"), TuplesKt.to("4", "Idioms"), TuplesKt.to(CampaignEx.CLICKMODE_ON, context.getString(R.string.english_word_family))).get(key);
        }

        public final String getOrderPeTitleFrom(String key, Context context) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(context, "context");
            return (String) MapsKt.mapOf(TuplesKt.to("0", context.getString(R.string.results_meaning) + " " + context.getString(R.string.results_sentence)), TuplesKt.to("1", context.getString(R.string.synonyms_and_antonyms))).get(key);
        }
    }
}
