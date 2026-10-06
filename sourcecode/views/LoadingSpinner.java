package fast.dic.dict.views;

import android.content.Context;
import fast.dic.dict.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoadingSpinner.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lfast/dic/dict/views/LoadingSpinner;", "", "mContext", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "mProgressDialog", "Lfast/dic/dict/views/LoadingProgress;", "showPreparingFile", "", "dismiss", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class LoadingSpinner {
    private final Context mContext;
    private LoadingProgress mProgressDialog;

    public LoadingSpinner(Context mContext) {
        Intrinsics.checkNotNullParameter(mContext, "mContext");
        this.mContext = mContext;
    }

    public final void showPreparingFile() {
        LoadingProgress loadingProgress = this.mProgressDialog;
        if (loadingProgress == null) {
            loadingProgress = new LoadingProgress(this.mContext);
            this.mProgressDialog = loadingProgress;
        }
        if (loadingProgress != null) {
            loadingProgress.show(this.mContext.getString(R.string.preparing_file));
        }
    }

    public final void dismiss() {
        try {
            LoadingProgress loadingProgress = this.mProgressDialog;
            if (loadingProgress != null) {
                loadingProgress.dismiss();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.mProgressDialog = null;
    }
}
