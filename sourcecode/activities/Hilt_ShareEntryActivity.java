package fast.dic.dict.activities;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import dagger.hilt.internal.GeneratedComponentManagerHolder;
import dagger.hilt.internal.UnsafeCasts;
import fast.dic.dict.bases.BaseActivity;

/* JADX INFO: loaded from: classes11.dex */
public abstract class Hilt_ShareEntryActivity extends BaseActivity {
    private boolean injected = false;

    Hilt_ShareEntryActivity() {
        _initHiltInternal();
    }

    private void _initHiltInternal() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: fast.dic.dict.activities.Hilt_ShareEntryActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void onContextAvailable(Context context) {
                Hilt_ShareEntryActivity.this.inject();
            }
        });
    }

    @Override // fast.dic.dict.bases.Hilt_BaseActivity
    protected void inject() {
        if (this.injected) {
            return;
        }
        this.injected = true;
        ((ShareEntryActivity_GeneratedInjector) ((GeneratedComponentManagerHolder) UnsafeCasts.unsafeCast(this)).generatedComponent()).injectShareEntryActivity((ShareEntryActivity) UnsafeCasts.unsafeCast(this));
    }
}
