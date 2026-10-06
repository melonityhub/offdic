package fast.dic.dict.views;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoadingProgress.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0006\u0010\u000e\u001a\u00020\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lfast/dic/dict/views/LoadingProgress;", "", Names.CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "dialog", "Landroid/app/Dialog;", "show", "", "body", "", "dismiss", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class LoadingProgress {
    private final Context context;
    private Dialog dialog;

    public LoadingProgress(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public final Context getContext() {
        return this.context;
    }

    public final void show(String body) {
        try {
            dismiss();
            Dialog dialog = new Dialog(this.context);
            View viewInflate = LayoutInflater.from(dialog.getContext()).inflate(R.layout.dialog_loading_progress, (ViewGroup) null);
            dialog.setContentView(viewInflate);
            dialog.setCancelable(false);
            Window window = dialog.getWindow();
            if (window != null) {
                window.setBackgroundDrawable(new ColorDrawable(0));
            }
            TextView textView = (TextView) viewInflate.findViewById(R.id.progress_title);
            if (textView != null) {
                textView.setText(dialog.getContext().getString(R.string.please_wait));
            }
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.progress_message);
            if (textView2 != null) {
                if (body == null) {
                    body = dialog.getContext().getString(R.string.preparing_data);
                    Intrinsics.checkNotNullExpressionValue(body, "getString(...)");
                }
                textView2.setText(body);
            }
            dialog.show();
            this.dialog = dialog;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void dismiss() {
        try {
            Dialog dialog = this.dialog;
            if (dialog != null) {
                dialog.dismiss();
            }
            this.dialog = null;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
