package fast.dic.dict.services;

import android.animation.Animator;
import android.app.Service;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.os.Build;
import android.os.IBinder;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import fast.dic.dict.R;
import fast.dic.dict.activities.MainActivity;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.providers.FDContentProvider;
import fast.dic.dict.utils.Logger;
import io.sentry.SentryEvent;
import io.sentry.protocol.FeatureFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FDFloatingWindowService.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u001c\u001a\u00020\u001dH\u0017b\u0010\b\u001e\u0012\f\b\u001f\u0012\b\b\fJ\u0004\b\b( J\"\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010'\u001a\u00020$2\u0006\u0010(\u001a\u00020$H\u0016J\u0006\u0010+\u001a\u00020\u001dJ\b\u0010,\u001a\u00020\u001dH\u0016J\u0012\u0010-\u001a\u0004\u0018\u00010.2\u0006\u0010%\u001a\u00020&H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020*X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lfast/dic/dict/services/FDFloatingWindowService;", "Landroid/app/Service;", "<init>", "()V", "notificationShow", "", "windowManager", "Landroid/view/WindowManager;", "getWindowManager", "()Landroid/view/WindowManager;", "setWindowManager", "(Landroid/view/WindowManager;)V", "clipboardManager", "Landroid/content/ClipboardManager;", "getClipboardManager", "()Landroid/content/ClipboardManager;", "setClipboardManager", "(Landroid/content/ClipboardManager;)V", "floatingHead", "Landroid/widget/ImageView;", SentryEvent.JsonKeys.LOGGER, "Lfast/dic/dict/utils/Logger;", "params", "Landroid/view/WindowManager$LayoutParams;", "getParams", "()Landroid/view/WindowManager$LayoutParams;", "setParams", "(Landroid/view/WindowManager$LayoutParams;)V", "onCreate", "", "Landroid/annotation/SuppressLint;", "value", "ClickableViewAccessibility", "onFloatingTouchListener", "Landroid/view/View$OnTouchListener;", "onStartCommand", "", "intent", "Landroid/content/Intent;", FeatureFlags.TYPE, "startId", "mPrimaryChangeListener", "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;", "chatHeadIcon", "onDestroy", "onBind", "Landroid/os/IBinder;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class FDFloatingWindowService extends Service {
    private ClipboardManager clipboardManager;
    private ImageView floatingHead;
    private boolean notificationShow;
    private WindowManager.LayoutParams params;
    private WindowManager windowManager;
    private final Logger logger = Logger.INSTANCE.getLogger1();
    private final View.OnTouchListener onFloatingTouchListener = new View.OnTouchListener() { // from class: fast.dic.dict.services.FDFloatingWindowService$onFloatingTouchListener$1
        private float initialTouchX;
        private float initialTouchY;
        private int initialX;
        private int initialY;

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
    };
    private ClipboardManager.OnPrimaryClipChangedListener mPrimaryChangeListener = new ClipboardManager.OnPrimaryClipChangedListener() { // from class: fast.dic.dict.services.FDFloatingWindowService$$ExternalSyntheticLambda0
        @Override // android.content.ClipboardManager.OnPrimaryClipChangedListener
        public final void onPrimaryClipChanged() {
            FDFloatingWindowService.mPrimaryChangeListener$lambda$0(this.f$0);
        }
    };

    public final WindowManager getWindowManager() {
        return this.windowManager;
    }

    public final void setWindowManager(WindowManager windowManager) {
        this.windowManager = windowManager;
    }

    public final ClipboardManager getClipboardManager() {
        return this.clipboardManager;
    }

    public final void setClipboardManager(ClipboardManager clipboardManager) {
        this.clipboardManager = clipboardManager;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final WindowManager.LayoutParams getParams() {
        return this.params;
    }

    public final void setParams(WindowManager.LayoutParams layoutParams) {
        this.params = layoutParams;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.logger.debug("onCreate of FDFloatingWindowService class called", new Object[0]);
        Object systemService = getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.windowManager = (WindowManager) systemService;
        ImageView imageView = new ImageView(this);
        this.floatingHead = imageView;
        Intrinsics.checkNotNull(imageView);
        imageView.setImageResource(R.mipmap.ic_launcher_round);
        ImageView imageView2 = this.floatingHead;
        Intrinsics.checkNotNull(imageView2);
        imageView2.setOnTouchListener(this.onFloatingTouchListener);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(100, 100, Build.VERSION.SDK_INT >= 26 ? 2038 : 2002, 8, -3);
        this.params = layoutParams;
        Intrinsics.checkNotNull(layoutParams);
        layoutParams.gravity = 8388659;
        Object systemService2 = getSystemService("window");
        Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.view.WindowManager");
        Point point = new Point();
        Display defaultDisplay = ((WindowManager) systemService2).getDefaultDisplay();
        if (defaultDisplay != null) {
            defaultDisplay.getSize(point);
        }
        Context appContext = FDContentProvider.INSTANCE.getAppContext();
        LocalStorage localStorage = appContext != null ? new LocalStorage(appContext) : null;
        int floatingHeadXPrefs = localStorage != null ? localStorage.getFloatingHeadXPrefs() : 0;
        int floatingHeadYPrefs = localStorage != null ? localStorage.getFloatingHeadYPrefs() : 0;
        WindowManager.LayoutParams layoutParams2 = this.params;
        Intrinsics.checkNotNull(layoutParams2);
        layoutParams2.x = floatingHeadXPrefs;
        WindowManager.LayoutParams layoutParams3 = this.params;
        Intrinsics.checkNotNull(layoutParams3);
        layoutParams3.y = floatingHeadYPrefs;
        Object systemService3 = getSystemService("clipboard");
        Intrinsics.checkNotNull(systemService3, "null cannot be cast to non-null type android.content.ClipboardManager");
        ClipboardManager clipboardManager = (ClipboardManager) systemService3;
        this.clipboardManager = clipboardManager;
        if (clipboardManager != null) {
            Intrinsics.checkNotNull(clipboardManager);
            clipboardManager.addPrimaryClipChangedListener(this.mPrimaryChangeListener);
        }
        try {
            WindowManager windowManager = this.windowManager;
            Intrinsics.checkNotNull(windowManager);
            windowManager.addView(this.floatingHead, this.params);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        this.logger.debug("onStartCommand of FDFloatingWindowService class called flags=" + flags + ", startId=" + startId, new Object[0]);
        if (Build.VERSION.SDK_INT >= 26 && !this.notificationShow) {
            startForeground(1, FDFirebaseMessagingService.INSTANCE.getFloatingWindowsNotification(this));
            this.notificationShow = true;
        }
        return 1;
    }

    static final void mPrimaryChangeListener$lambda$0(final FDFloatingWindowService fDFloatingWindowService) {
        Logger logger = fDFloatingWindowService.logger;
        ClipboardManager clipboardManager = fDFloatingWindowService.clipboardManager;
        logger.debug("OnPrimaryClipChangedListener ------> " + (clipboardManager != null ? clipboardManager.getPrimaryClip() : null), new Object[0]);
        try {
            ImageView imageView = fDFloatingWindowService.floatingHead;
            Intrinsics.checkNotNull(imageView);
            imageView.setImageResource(0);
            ImageView imageView2 = fDFloatingWindowService.floatingHead;
            Intrinsics.checkNotNull(imageView2);
            imageView2.setBackgroundResource(R.mipmap.ic_launcher_round);
            ImageView imageView3 = fDFloatingWindowService.floatingHead;
            Intrinsics.checkNotNull(imageView3);
            imageView3.setAlpha(1.0f);
            ImageView imageView4 = fDFloatingWindowService.floatingHead;
            Intrinsics.checkNotNull(imageView4);
            Intrinsics.checkNotNull(imageView4.animate().alpha(0.1f).setDuration(500L).setListener(new Animator.AnimatorListener() { // from class: fast.dic.dict.services.FDFloatingWindowService$mPrimaryChangeListener$1$1
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    Intrinsics.checkNotNullParameter(animator, "animator");
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                    Intrinsics.checkNotNullParameter(animator, "animator");
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    Intrinsics.checkNotNullParameter(animator, "animator");
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    Intrinsics.checkNotNullParameter(animator, "animator");
                    ImageView imageView5 = this.this$0.floatingHead;
                    Intrinsics.checkNotNull(imageView5);
                    imageView5.animate().alpha(1.0f).setDuration(500L);
                }
            }));
        } catch (Exception e) {
            fDFloatingWindowService.logger.error(e.getMessage(), new Object[0]);
            System.out.println((Object) "Fail in Service");
        }
    }

    public final void chatHeadIcon() {
        ImageView imageView = this.floatingHead;
        Intrinsics.checkNotNull(imageView);
        imageView.setBackgroundResource(0);
        WindowManager windowManager = this.windowManager;
        Intrinsics.checkNotNull(windowManager);
        windowManager.updateViewLayout(this.floatingHead, this.params);
        ImageView imageView2 = this.floatingHead;
        Intrinsics.checkNotNull(imageView2);
        imageView2.setImageResource(R.mipmap.ic_launcher_round);
        WindowManager windowManager2 = this.windowManager;
        Intrinsics.checkNotNull(windowManager2);
        windowManager2.updateViewLayout(this.floatingHead, this.params);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.logger.debug("onDestroy of FDFloatingWindowService class called", new Object[0]);
        if (this.floatingHead != null) {
            WindowManager windowManager = this.windowManager;
            Intrinsics.checkNotNull(windowManager);
            windowManager.removeView(this.floatingHead);
        }
        stopForeground(1);
        this.notificationShow = false;
        stopSelf();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        this.logger.debug("onBind of FDFloatingWindowService class called", new Object[0]);
        return null;
    }
}
