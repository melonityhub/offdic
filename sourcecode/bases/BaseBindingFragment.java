package fast.dic.dict.bases;

import android.content.Context;
import androidx.fragment.app.Fragment;
import com.google.android.play.core.splitcompat.SplitCompat;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.utils.LocaleExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BaseBindingFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\tH\u0002¨\u0006\f"}, d2 = {"Lfast/dic/dict/bases/BaseBindingFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "onBackPressed", "", "onAttach", "", Names.CONTEXT, "Landroid/content/Context;", "updateConfig", "wrapper", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public class BaseBindingFragment extends Fragment {
    public boolean onBackPressed() {
        return false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        updateConfig(context);
        SplitCompat.install(context);
    }

    private final void updateConfig(Context wrapper) {
        LocaleExtKt.updateCurrentLanguage(new LocalStorage(wrapper).getCurrentLanguage(), wrapper);
    }
}
