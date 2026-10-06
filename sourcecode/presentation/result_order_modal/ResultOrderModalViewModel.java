package fast.dic.dict.presentation.result_order_modal;

import androidx.lifecycle.ViewModel;
import com.parse.ParseException;
import com.parse.ParseUser;
import fast.dic.dict.p000const.ConfigConstKt;
import fast.dic.dict.services.parse.FDParseUser;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ResultOrderModalViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\r\b\u0007\u001a\u0002\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000bJ\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\n\u001a\u00020\u000bÊ\u0001\u0002\b\u000e¨\u0006\r"}, d2 = {"Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "Ljavax/inject/Inject;", "updateOrder", "", "orders", "", "", "forEnglish", "", "getOrderResult", "app", "Ldagger/hilt/android/lifecycle/HiltViewModel;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class ResultOrderModalViewModel extends ViewModel {
    @Inject
    public ResultOrderModalViewModel() {
    }

    public final void updateOrder(List<String> orders, boolean forEnglish) throws ParseException {
        Intrinsics.checkNotNullParameter(orders, "orders");
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null) {
            return;
        }
        if (forEnglish) {
            fDParseUser.setEnglishResultsOrderBy(orders);
        } else {
            fDParseUser.setPersianResultsOrderBy(orders);
        }
    }

    public final List<String> getOrderResult(boolean forEnglish) throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null) {
            return forEnglish ? ConfigConstKt.getDEFAULT_ENGLISH_RESULT_ORDER_BY() : ConfigConstKt.getDEFAULT_PERSIAN_RESULT_ORDER_BY();
        }
        return forEnglish ? fDParseUser.getEnglishResultsOrderBy() : fDParseUser.getPersianResultsOrderBy();
    }
}
