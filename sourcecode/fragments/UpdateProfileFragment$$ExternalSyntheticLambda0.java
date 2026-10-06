package fast.dic.dict.fragments;

import android.content.Context;
import com.parse.ParseException;
import com.parse.SaveCallback;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class UpdateProfileFragment$$ExternalSyntheticLambda0 implements SaveCallback {
    public final /* synthetic */ Context f$1;

    public /* synthetic */ UpdateProfileFragment$$ExternalSyntheticLambda0() {
        contextRequireContext = context;
    }

    @Override // com.parse.SaveCallback, com.parse.ParseCallback1
    public final void done(ParseException parseException) {
        UpdateProfileFragment.editProfile$lambda$2(this.f$0, contextRequireContext, parseException);
    }
}
