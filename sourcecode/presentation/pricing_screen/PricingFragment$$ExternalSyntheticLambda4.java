package fast.dic.dict.presentation.pricing_screen;

import android.content.DialogInterface;
import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class PricingFragment$$ExternalSyntheticLambda4 implements DialogInterface.OnClickListener {
    public /* synthetic */ PricingFragment$$ExternalSyntheticLambda4() {
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) throws ParseException {
        this.f$0.getViewModel().sendEmailVerification();
    }
}
