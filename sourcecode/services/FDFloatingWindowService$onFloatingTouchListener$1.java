package fast.dic.dict.services;

import android.content.Context;
import android.content.Intent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import fast.dic.dict.activities.MainActivity;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.providers.FDContentProvider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDFloatingWindowService.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"fast/dic/dict/services/FDFloatingWindowService$onFloatingTouchListener$1", "Landroid/view/View$OnTouchListener;", "initialX", "", "initialY", "initialTouchX", "", "initialTouchY", "onTouch", "", "v", "Landroid/view/View;", "event", "Landroid/view/MotionEvent;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDFloatingWindowService$onFloatingTouchListener$1 implements View.OnTouchListener {
    private float initialTouchX;
    private float initialTouchY;
    private int initialX;
    private int initialY;

    FDFloatingWindowService$onFloatingTouchListener$1() {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v, MotionEvent event) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action == 0) {
            WindowManager.LayoutParams params = this.this$0.getParams();
            Intrinsics.checkNotNull(params);
            this.initialX = params.x;
            WindowManager.LayoutParams params2 = this.this$0.getParams();
            Intrinsics.checkNotNull(params2);
            this.initialY = params2.y;
            this.initialTouchX = event.getRawX();
            this.initialTouchY = event.getRawY();
            return true;
        }
        if (action == 1) {
            v.performClick();
            if (Math.abs(this.initialTouchX - event.getRawX()) < 5.0f && Math.abs(this.initialTouchY - event.getRawY()) < 5.0f) {
                try {
                    Intent intent = new Intent(this.this$0.getApplicationContext(), (Class<?>) MainActivity.class);
                    intent.putExtra("fromFloating", 0);
                    intent.setFlags(268435456);
                    this.this$0.startActivity(intent);
                    this.this$0.chatHeadIcon();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            return true;
        }
        if (action != 2) {
            return false;
        }
        WindowManager.LayoutParams params3 = this.this$0.getParams();
        Intrinsics.checkNotNull(params3);
        params3.x = this.initialX + ((int) (event.getRawX() - this.initialTouchX));
        WindowManager.LayoutParams params4 = this.this$0.getParams();
        Intrinsics.checkNotNull(params4);
        params4.y = this.initialY + ((int) (event.getRawY() - this.initialTouchY));
        WindowManager windowManager = this.this$0.getWindowManager();
        Intrinsics.checkNotNull(windowManager);
        windowManager.updateViewLayout(this.this$0.floatingHead, this.this$0.getParams());
        Context appContext = FDContentProvider.INSTANCE.getAppContext();
        LocalStorage localStorage = appContext != null ? new LocalStorage(appContext) : null;
        if (localStorage != null) {
            WindowManager.LayoutParams params5 = this.this$0.getParams();
            Intrinsics.checkNotNull(params5);
            localStorage.storeFloatingHeadXPrefs(params5.x);
        }
        if (localStorage != null) {
            WindowManager.LayoutParams params6 = this.this$0.getParams();
            Intrinsics.checkNotNull(params6);
            localStorage.storeFloatingHeadYPrefs(params6.y);
        }
        return true;
    }
}
