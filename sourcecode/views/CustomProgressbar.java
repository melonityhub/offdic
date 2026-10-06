package fast.dic.dict.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CustomProgressbar.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lfast/dic/dict/views/CustomProgressbar;", "Landroid/widget/LinearLayout;", Names.CONTEXT, "Landroid/content/Context;", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "inflater", "Landroid/view/LayoutInflater;", "getInflater", "()Landroid/view/LayoutInflater;", "setInflater", "(Landroid/view/LayoutInflater;)V", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class CustomProgressbar extends LinearLayout {
    private LayoutInflater inflater;

    public CustomProgressbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Object systemService = getContext().getSystemService("layout_inflater");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
        LayoutInflater layoutInflater = (LayoutInflater) systemService;
        this.inflater = layoutInflater;
        Intrinsics.checkNotNull(layoutInflater);
        layoutInflater.inflate(R.layout.custom_progressbar, (ViewGroup) this, true);
    }

    public final LayoutInflater getInflater() {
        return this.inflater;
    }

    public final void setInflater(LayoutInflater layoutInflater) {
        this.inflater = layoutInflater;
    }
}
