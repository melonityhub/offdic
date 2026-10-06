package fast.dic.dict.services;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.ComponentCallbacks2;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.content.res.ResourcesCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: InterstitialCountdownDialog.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0002\u0017\u001a\b\u0000\u0018\u0000 $2\u00020\u0001:\u0001$B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0004\b\u000b\u0010\fJ\u0012\u0010\u001c\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0014J\b\u0010\u001f\u001a\u00020\bH\u0014J\u0010\u0010 \u001a\u00020\b2\u0006\u0010!\u001a\u00020\u0011H\u0016J\u0006\u0010\"\u001a\u00020\bJ\b\u0010#\u001a\u00020\bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u0010\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001b¨\u0006%"}, d2 = {"Lfast/dic/dict/services/InterstitialCountdownDialog;", "Landroid/app/Dialog;", "activity", "Landroid/app/Activity;", "seconds", "", "onFinish", "Lkotlin/Function0;", "", "onClosed", "Lkotlin/Function1;", "<init>", "(Landroid/app/Activity;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "handler", "Landroid/os/Handler;", "remainingSeconds", "isRunning", "", "isClosed", "hadFocus", "messageView", "Landroid/widget/TextView;", "tick", "fast/dic/dict/services/InterstitialCountdownDialog$tick$1", "Lfast/dic/dict/services/InterstitialCountdownDialog$tick$1;", "hostObserver", "fast/dic/dict/services/InterstitialCountdownDialog$hostObserver$1", "Lfast/dic/dict/services/InterstitialCountdownDialog$hostObserver$1;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "onWindowFocusChanged", "hasFocus", "close", "render", "Companion", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class InterstitialCountdownDialog extends Dialog {
    private static final Companion Companion = new Companion(null);

    @Deprecated
    public static final long SAFETY_TIMEOUT_MS = 3000;

    @Deprecated
    public static final int SHIELD_COLOR = -654311424;
    private final Activity activity;
    private boolean hadFocus;
    private final Handler handler;
    private final InterstitialCountdownDialog$hostObserver$1 hostObserver;
    private boolean isClosed;
    private boolean isRunning;
    private TextView messageView;
    private final Function1<InterstitialCountdownDialog, Unit> onClosed;
    private final Function0<Unit> onFinish;
    private int remainingSeconds;
    private final InterstitialCountdownDialog$tick$1 tick;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [fast.dic.dict.services.InterstitialCountdownDialog$tick$1] */
    /* JADX WARN: Type inference failed for: r4v3, types: [fast.dic.dict.services.InterstitialCountdownDialog$hostObserver$1] */
    public InterstitialCountdownDialog(Activity activity, int i, Function0<Unit> onFinish, Function1<? super InterstitialCountdownDialog, Unit> onClosed) {
        super(activity, R.style.Theme.Translucent.NoTitleBar);
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(onFinish, "onFinish");
        Intrinsics.checkNotNullParameter(onClosed, "onClosed");
        this.activity = activity;
        this.onFinish = onFinish;
        this.onClosed = onClosed;
        this.handler = new Handler(Looper.getMainLooper());
        this.remainingSeconds = RangesKt.coerceAtLeast(i, 1);
        this.isRunning = true;
        this.tick = new Runnable() { // from class: fast.dic.dict.services.InterstitialCountdownDialog$tick$1
            @Override // java.lang.Runnable
            public void run() {
                if (this.this$0.isRunning) {
                    this.this$0.remainingSeconds--;
                    int i2 = this.this$0.remainingSeconds;
                    InterstitialCountdownDialog interstitialCountdownDialog = this.this$0;
                    if (i2 > 0) {
                        interstitialCountdownDialog.render();
                        this.this$0.handler.postDelayed(this, 1000L);
                    } else {
                        interstitialCountdownDialog.isRunning = false;
                        this.this$0.onFinish.invoke();
                    }
                }
            }
        };
        this.hostObserver = new DefaultLifecycleObserver() { // from class: fast.dic.dict.services.InterstitialCountdownDialog$hostObserver$1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* bridge */ void onCreate(LifecycleOwner lifecycleOwner) {
                super.onCreate(lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* bridge */ void onDestroy(LifecycleOwner lifecycleOwner) {
                super.onDestroy(lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* bridge */ void onResume(LifecycleOwner lifecycleOwner) {
                super.onResume(lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* bridge */ void onStart(LifecycleOwner lifecycleOwner) {
                super.onStart(lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public /* bridge */ void onStop(LifecycleOwner lifecycleOwner) {
                super.onStop(lifecycleOwner);
            }

            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onPause(LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                this.this$0.close();
            }
        };
        setCancelable(true);
        setCanceledOnTouchOutside(false);
        setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: fast.dic.dict.services.InterstitialCountdownDialog$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                this.f$0.close();
            }
        });
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: fast.dic.dict.services.InterstitialCountdownDialog$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.close();
            }
        });
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        int i = (int) (24.0f * getContext().getResources().getDisplayMetrics().density);
        TextView textView = new TextView(getContext());
        textView.setTextColor(-1);
        textView.setTextSize(2, 22.0f);
        textView.setTypeface(ResourcesCompat.getFont(textView.getContext(), fast.dic.dict.R.font.iransansxbold));
        textView.setGravity(17);
        textView.setPadding(i, i, i, i);
        this.messageView = textView;
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setBackgroundColor(SHIELD_COLOR);
        frameLayout.setClickable(true);
        frameLayout.setFocusable(true);
        TextView textView2 = this.messageView;
        if (textView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageView");
            textView2 = null;
        }
        frameLayout.addView(textView2, new FrameLayout.LayoutParams(-2, -2, 17));
        setContentView(frameLayout);
        Window window = getWindow();
        if (window != null) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.clearFlags(2);
            window.setWindowAnimations(R.style.Animation.Toast);
        }
        render();
    }

    @Override // android.app.Dialog
    protected void onStart() {
        Lifecycle lifecycle;
        super.onStart();
        ComponentCallbacks2 componentCallbacks2 = this.activity;
        LifecycleOwner lifecycleOwner = componentCallbacks2 instanceof LifecycleOwner ? (LifecycleOwner) componentCallbacks2 : null;
        if (lifecycleOwner != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            lifecycle.addObserver(this.hostObserver);
        }
        this.handler.postDelayed(new Runnable() { // from class: fast.dic.dict.services.InterstitialCountdownDialog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.close();
            }
        }, (((long) this.remainingSeconds) * 1000) + 3000);
        this.handler.postDelayed(this.tick, 1000L);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        super.onWindowFocusChanged(hasFocus);
        if (hasFocus) {
            this.hadFocus = true;
        } else if (this.hadFocus) {
            close();
        }
    }

    public final void close() {
        Lifecycle lifecycle;
        if (this.isClosed) {
            return;
        }
        this.isClosed = true;
        this.isRunning = false;
        this.handler.removeCallbacksAndMessages(null);
        ComponentCallbacks2 componentCallbacks2 = this.activity;
        LifecycleOwner lifecycleOwner = componentCallbacks2 instanceof LifecycleOwner ? (LifecycleOwner) componentCallbacks2 : null;
        if (lifecycleOwner != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            lifecycle.removeObserver(this.hostObserver);
        }
        if (isShowing() && !this.activity.isFinishing() && !this.activity.isDestroyed()) {
            try {
                dismiss();
            } catch (IllegalArgumentException unused) {
            }
        }
        this.onClosed.invoke(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void render() {
        TextView textView = this.messageView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("messageView");
            textView = null;
        }
        textView.setText(getContext().getString(fast.dic.dict.R.string.interstitial_countdown_message, Integer.valueOf(this.remainingSeconds)));
    }

    /* JADX INFO: compiled from: InterstitialCountdownDialog.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lfast/dic/dict/services/InterstitialCountdownDialog$Companion;", "", "<init>", "()V", "SHIELD_COLOR", "", "SAFETY_TIMEOUT_MS", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
