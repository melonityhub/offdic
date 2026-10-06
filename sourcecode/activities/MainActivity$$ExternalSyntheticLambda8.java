package fast.dic.dict.activities;

import android.view.View;
import androidx.navigation.NavController;
import com.parse.ParseException;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class MainActivity$$ExternalSyntheticLambda8 implements View.OnClickListener {
    public final /* synthetic */ NavController f$1;

    public /* synthetic */ MainActivity$$ExternalSyntheticLambda8() {
        navControllerFindNavController = navController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws ParseException {
        this.f$0.onCameraClicked(navControllerFindNavController);
    }
}
