package fast.dic.dict.activities;

import android.content.Context;
import androidx.activity.contextaware.OnContextAvailableListener;
import dagger.hilt.internal.GeneratedComponentManagerHolder;
import dagger.hilt.internal.UnsafeCasts;
import fast.dic.dict.bases.BaseActivity;

/* JADX INFO: loaded from: classes11.dex */
public abstract class Hilt_MainActivity extends BaseActivity {
    private boolean injected = false;

    Hilt_MainActivity() {
        _initHiltInternal();
    }

    private void _initHiltInternal() {
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: fast.dic.dict.activities.Hilt_MainActivity.1
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public void onContextAvailable(Context context) {
                Hilt_MainActivity.this.inject();
            }
        });
    }

    @Override // fast.dic.dict.bases.Hilt_BaseActivity
    protected void inject() {
        if (this.injected) {
            return;
        }
        this.injected = true;
        ((MainActivity_GeneratedInjector) ((GeneratedComponentManagerHolder) UnsafeCasts.unsafeCast(this)).generatedComponent()).injectMainActivity((MainActivity) UnsafeCasts.unsafeCast(this));
    }
}
