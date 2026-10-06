package fast.dic.dict.presentation.pricing_screen;

import fast.dic.dict.R;
import fast.dic.dict.models.PlanType;
import kotlin.Metadata;

/* JADX INFO: compiled from: Util.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u000e\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001¨\u0006\u0004"}, d2 = {"getPlanIcon", "", "selectedItem", "getPlanColor", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class UtilKt {
    public static final int getPlanIcon(int i) {
        if (i == PlanType.FREE.getIndex()) {
            return R.drawable.ic_free_plan;
        }
        if (i == PlanType.REMOVE_ADS.getIndex()) {
            return R.drawable.ic_ads_plan;
        }
        return i == PlanType.PRO.getIndex() ? R.drawable.ic_pro_plan : R.drawable.ic_ai_plan;
    }

    public static final int getPlanColor(int i) {
        if (i == PlanType.FREE.getIndex()) {
            return R.color.plan0;
        }
        if (i == PlanType.REMOVE_ADS.getIndex()) {
            return R.color.plan1;
        }
        return i == PlanType.PRO.getIndex() ? R.color.plan2 : R.color.plan3;
    }
}
