package fast.dic.dict.presentation.history_screen.common;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.databinding.LastItemHisotryLayoutBinding;
import io.sentry.protocol.OperatingSystem;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HistoryLastItemViewHolder.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lfast/dic/dict/presentation/history_screen/common/HistoryLastItemViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/LastItemHisotryLayoutBinding;", "<init>", "(Lfast/dic/dict/databinding/LastItemHisotryLayoutBinding;)V", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class HistoryLastItemViewHolder extends RecyclerView.ViewHolder {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: HistoryLastItemViewHolder.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/presentation/history_screen/common/HistoryLastItemViewHolder$Companion;", "", "<init>", "()V", OperatingSystem.JsonKeys.BUILD, "Lfast/dic/dict/presentation/history_screen/common/HistoryLastItemViewHolder;", "viewGroup", "Landroid/view/ViewGroup;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final HistoryLastItemViewHolder build(ViewGroup viewGroup) {
            Intrinsics.checkNotNullParameter(viewGroup, "viewGroup");
            LastItemHisotryLayoutBinding lastItemHisotryLayoutBindingInflate = LastItemHisotryLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            Intrinsics.checkNotNullExpressionValue(lastItemHisotryLayoutBindingInflate, "inflate(...)");
            return new HistoryLastItemViewHolder(lastItemHisotryLayoutBindingInflate);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HistoryLastItemViewHolder(LastItemHisotryLayoutBinding binding) {
        super(binding.getRoot());
        Intrinsics.checkNotNullParameter(binding, "binding");
    }
}
