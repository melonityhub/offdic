package fast.dic.dict.utils;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.daimajia.androidanimations.library.Techniques;
import com.daimajia.androidanimations.library.YoYo;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import io.sentry.rrweb.RRWebVideoEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: ViewExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000X\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\f\u0010\u0003\u001a\u00020\u0004*\u0004\u0018\u00010\u0005\u001a*\u0010\u0006\u001a\u00020\u0004*\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\t\u001a,\u0010\r\u001a\u00020\u0004*\u00020\u00072\u001a\b\u0004\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00040\u000fH\u0086\bø\u0001\u0000\u001a\u0014\u0010\u0010\u001a\u00020\u0004*\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u001a\u0014\u0010\u0013\u001a\u00020\u0004*\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u001a\n\u0010\u0014\u001a\u00020\u0004*\u00020\u0007\u001a\n\u0010\u0015\u001a\u00020\u0004*\u00020\u0007\u001a\n\u0010\u0016\u001a\u00020\u0004*\u00020\u0007\u001a\n\u0010\u0017\u001a\u00020\u0004*\u00020\u0007\u001a\n\u0010\u0018\u001a\u00020\u0004*\u00020\u0007\u001a\n\u0010\u0019\u001a\u00020\u0004*\u00020\u0007\u001a\n\u0010\u001a\u001a\u00020\u0004*\u00020\u0007\u001a\n\u0010\u001b\u001a\u00020\u0004*\u00020\u0007\u001a\n\u0010\u001c\u001a\u00020\u0004*\u00020\u0007\u001a\n\u0010\u001d\u001a\u00020\u0004*\u00020\u0007\u001a\n\u0010\u001e\u001a\u00020\u0004*\u00020\u0007\u001a\n\u0010\u001f\u001a\u00020\u0004*\u00020\u0007\u001a\n\u0010 \u001a\u00020\u0004*\u00020!\u001a\n\u0010\"\u001a\u00020\u0004*\u00020!\u001a\n\u0010#\u001a\u00020\u0004*\u00020$\u001a\u0012\u0010%\u001a\u00020\u0004*\u00020\u00072\u0006\u0010&\u001a\u00020'\u001a\u0018\u0010(\u001a\u00020\u0004*\u00020\u00072\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00040*\u001a\n\u0010+\u001a\u00020,*\u00020\u0007\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006-"}, d2 = {"isNoMore", "", "Landroid/app/Activity;", "addDivider", "", "Landroidx/recyclerview/widget/RecyclerView;", "setMargins", "Landroid/view/View;", "left", "", RRWebVideoEvent.JsonKeys.TOP, "right", "bottom", "getDimensions", "onDimensionsReady", "Lkotlin/Function2;", "showMe", "duration", "", "hideMe", "hideMeNow", "showMeNow", "moveToTop", "moveToTopWithFullWidth", "moveToTopWithoutAnimation", "moveToCenter", "fullWidthAnimation", "fullWidthWithoutAnimation", "resetSearchBarWidthAnimation", "increaseHeightAnimation", "increaseHeightWithoutAnimation", "decreaseHeightAnimation", "resetCorner", "Landroidx/cardview/widget/CardView;", "addSearchBarCorner", "disableParentFocusable", "Landroidx/constraintlayout/widget/ConstraintLayout;", "changeBottomBarFont", Names.CONTEXT, "Landroid/content/Context;", "afterLayoutConfiguration", "func", "Lkotlin/Function0;", "getBitmap", "Landroid/graphics/Bitmap;", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class ViewExtKt {
    public static final boolean isNoMore(Activity activity) {
        return activity == null || activity.isFinishing() || activity.isDestroyed();
    }

    public static final void addDivider(RecyclerView recyclerView) {
        if (recyclerView == null) {
            return;
        }
        Context context = recyclerView.getContext();
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        Intrinsics.checkNotNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        recyclerView.addItemDecoration(new DividerItemDecoration(context, ((LinearLayoutManager) layoutManager).getOrientation()));
    }

    public static final void setMargins(View view, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(i, i2, i3, i4);
            view.requestLayout();
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, fast.dic.dict.utils.ViewExtKt$getDimensions$1] */
    public static final void getDimensions(final View view, final Function2<? super Integer, ? super Integer, Unit> onDimensionsReady) {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(onDimensionsReady, "onDimensionsReady");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: fast.dic.dict.utils.ViewExtKt.getDimensions.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener2;
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (objectRef.element == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("layoutListener");
                    onGlobalLayoutListener2 = null;
                } else {
                    onGlobalLayoutListener2 = objectRef.element;
                }
                viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener2);
                onDimensionsReady.invoke(Integer.valueOf(view.getWidth()), Integer.valueOf(view.getHeight()));
            }
        };
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (objectRef.element == 0) {
            Intrinsics.throwUninitializedPropertyAccessException("layoutListener");
            onGlobalLayoutListener = null;
        } else {
            onGlobalLayoutListener = (ViewTreeObserver.OnGlobalLayoutListener) objectRef.element;
        }
        viewTreeObserver.addOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public static /* synthetic */ void showMe$default(View view, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 300;
        }
        showMe(view, j);
    }

    public static final void showMe(final View view, long j) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        LoggerKt.getLogger().verbose("~==> " + view + " called the showMe method.", new Object[0]);
        if (view.getVisibility() == 0) {
            return;
        }
        view.setVisibility(0);
        YoYo.with(Techniques.FadeIn).duration(j).onEnd(new YoYo.AnimatorCallback() { // from class: fast.dic.dict.utils.ViewExtKt$$ExternalSyntheticLambda7
            @Override // com.daimajia.androidanimations.library.YoYo.AnimatorCallback
            public final void call(Animator animator) {
                view.setVisibility(0);
            }
        }).playOn(view);
    }

    public static /* synthetic */ void hideMe$default(View view, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 300;
        }
        hideMe(view, j);
    }

    public static final void hideMe(final View view, long j) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        LoggerKt.getLogger().verbose("~==> " + view + " called the hideMe method.", new Object[0]);
        if (view.getVisibility() == 8) {
            return;
        }
        view.setVisibility(0);
        YoYo.with(Techniques.FadeOut).duration(j).onEnd(new YoYo.AnimatorCallback() { // from class: fast.dic.dict.utils.ViewExtKt$$ExternalSyntheticLambda2
            @Override // com.daimajia.androidanimations.library.YoYo.AnimatorCallback
            public final void call(Animator animator) {
                view.setVisibility(8);
            }
        }).playOn(view);
    }

    public static final void hideMeNow(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setAlpha(0.0f);
        view.setVisibility(8);
    }

    public static final void showMeNow(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setAlpha(1.0f);
        view.setVisibility(0);
    }

    public static final void moveToTop(final View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(marginLayoutParams.topMargin, 0);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: fast.dic.dict.utils.ViewExtKt$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewExtKt.moveToTop$lambda$0(marginLayoutParams, view, valueAnimator);
            }
        });
        valueAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfInt.setDuration(300L);
        valueAnimatorOfInt.start();
    }

    static final void moveToTop$lambda$0(ViewGroup.MarginLayoutParams marginLayoutParams, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        marginLayoutParams.topMargin = ((Integer) animatedValue).intValue();
        view.requestLayout();
    }

    public static final void moveToTopWithFullWidth(final View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(marginLayoutParams.topMargin, 0);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: fast.dic.dict.utils.ViewExtKt$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewExtKt.moveToTopWithFullWidth$lambda$0(marginLayoutParams, view, valueAnimator);
            }
        });
        valueAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfInt.setDuration(300L);
        ValueAnimator valueAnimatorOfInt2 = ValueAnimator.ofInt(marginLayoutParams.leftMargin, 0);
        valueAnimatorOfInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: fast.dic.dict.utils.ViewExtKt$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewExtKt.moveToTopWithFullWidth$lambda$1(marginLayoutParams, view, valueAnimator);
            }
        });
        valueAnimatorOfInt2.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt2.setDuration(100L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfInt2, valueAnimatorOfInt);
        animatorSet.start();
    }

    static final void moveToTopWithFullWidth$lambda$0(ViewGroup.MarginLayoutParams marginLayoutParams, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        marginLayoutParams.topMargin = ((Integer) animatedValue).intValue();
        view.requestLayout();
    }

    static final void moveToTopWithFullWidth$lambda$1(ViewGroup.MarginLayoutParams marginLayoutParams, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        marginLayoutParams.leftMargin = ((Integer) animatedValue).intValue();
        Object animatedValue2 = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue2, "null cannot be cast to non-null type kotlin.Int");
        marginLayoutParams.rightMargin = ((Integer) animatedValue2).intValue();
        view.requestLayout();
    }

    public static final void moveToTopWithoutAnimation(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = 0;
        view.requestLayout();
    }

    public static final void moveToCenter(final View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        int i = marginLayoutParams.topMargin;
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, ContextExtKt.getWindowHalfHeight(context));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: fast.dic.dict.utils.ViewExtKt$$ExternalSyntheticLambda8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewExtKt.moveToCenter$lambda$0(marginLayoutParams, view, valueAnimator);
            }
        });
        valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt.setDuration(300L);
        valueAnimatorOfInt.start();
    }

    static final void moveToCenter$lambda$0(ViewGroup.MarginLayoutParams marginLayoutParams, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        marginLayoutParams.topMargin = ((Integer) animatedValue).intValue();
        view.requestLayout();
    }

    public static final void fullWidthAnimation(final View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(marginLayoutParams.leftMargin, 0);
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: fast.dic.dict.utils.ViewExtKt$$ExternalSyntheticLambda9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewExtKt.fullWidthAnimation$lambda$0(marginLayoutParams, view, valueAnimator);
            }
        });
        valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt.setDuration(100L);
        valueAnimatorOfInt.start();
    }

    static final void fullWidthAnimation$lambda$0(ViewGroup.MarginLayoutParams marginLayoutParams, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        marginLayoutParams.leftMargin = ((Integer) animatedValue).intValue();
        Object animatedValue2 = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue2, "null cannot be cast to non-null type kotlin.Int");
        marginLayoutParams.rightMargin = ((Integer) animatedValue2).intValue();
        view.requestLayout();
    }

    public static final void fullWidthWithoutAnimation(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.leftMargin = 0;
        marginLayoutParams.rightMargin = 0;
        view.requestLayout();
    }

    public static final void resetSearchBarWidthAnimation(final View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(marginLayoutParams.leftMargin, IntExtKt.toDimensionUnit$default(20.0f, context, 0, 2, null));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: fast.dic.dict.utils.ViewExtKt$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewExtKt.resetSearchBarWidthAnimation$lambda$0(marginLayoutParams, view, valueAnimator);
            }
        });
        valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt.setDuration(300L);
        valueAnimatorOfInt.start();
    }

    static final void resetSearchBarWidthAnimation$lambda$0(ViewGroup.MarginLayoutParams marginLayoutParams, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        marginLayoutParams.leftMargin = ((Integer) animatedValue).intValue();
        Object animatedValue2 = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue2, "null cannot be cast to non-null type kotlin.Int");
        marginLayoutParams.rightMargin = ((Integer) animatedValue2).intValue();
        view.requestLayout();
    }

    public static final void increaseHeightAnimation(final View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(marginLayoutParams.height, marginLayoutParams.height + IntExtKt.toDimensionUnit$default(20.0f, context, 0, 2, null));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: fast.dic.dict.utils.ViewExtKt$$ExternalSyntheticLambda4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewExtKt.increaseHeightAnimation$lambda$0(marginLayoutParams, view, valueAnimator);
            }
        });
        valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt.setDuration(300L);
        valueAnimatorOfInt.start();
    }

    static final void increaseHeightAnimation$lambda$0(ViewGroup.MarginLayoutParams marginLayoutParams, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        marginLayoutParams.height = ((Integer) animatedValue).intValue();
        view.requestLayout();
    }

    public static final void increaseHeightWithoutAnimation(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ((ViewGroup.MarginLayoutParams) layoutParams).height += IntExtKt.toDimensionUnit$default(20.0f, context, 0, 2, null);
        view.requestLayout();
    }

    public static final void decreaseHeightAnimation(final View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(marginLayoutParams.height, marginLayoutParams.height - IntExtKt.toDimensionUnit$default(20.0f, context, 0, 2, null));
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: fast.dic.dict.utils.ViewExtKt$$ExternalSyntheticLambda6
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewExtKt.decreaseHeightAnimation$lambda$0(marginLayoutParams, view, valueAnimator);
            }
        });
        valueAnimatorOfInt.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfInt.setDuration(300L);
        valueAnimatorOfInt.start();
    }

    static final void decreaseHeightAnimation$lambda$0(ViewGroup.MarginLayoutParams marginLayoutParams, View view, ValueAnimator valueAnimator) {
        Intrinsics.checkNotNullParameter(valueAnimator, "valueAnimator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        marginLayoutParams.height = ((Integer) animatedValue).intValue();
        view.requestLayout();
    }

    public static final void resetCorner(CardView cardView) {
        Intrinsics.checkNotNullParameter(cardView, "<this>");
        cardView.setRadius(0.0f);
    }

    public static final void addSearchBarCorner(CardView cardView) {
        Intrinsics.checkNotNullParameter(cardView, "<this>");
        cardView.setRadius(cardView.getResources().getDimension(R.dimen.searchbar_corner_radius));
    }

    public static final void disableParentFocusable(ConstraintLayout constraintLayout) {
        Intrinsics.checkNotNullParameter(constraintLayout, "<this>");
        constraintLayout.setFocusableInTouchMode(false);
        constraintLayout.setDescendantFocusability(393216);
    }

    public static final void changeBottomBarFont(View view, Context context) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            if (view instanceof ViewGroup) {
                int childCount = ((ViewGroup) view).getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = ((ViewGroup) view).getChildAt(i);
                    Intrinsics.checkNotNull(childAt);
                    changeBottomBarFont(childAt, context);
                }
                return;
            }
            if (view instanceof TextView) {
                Typeface DEFAULT = Typeface.DEFAULT;
                Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
                ((TextView) view).setTypeface(TypefaceExtKt.iranSansWebLight(DEFAULT, context));
            }
        } catch (Exception unused) {
        }
    }

    public static final void afterLayoutConfiguration(final View view, final Function0<Unit> func) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(func, "func");
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: fast.dic.dict.utils.ViewExtKt.afterLayoutConfiguration.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
                    if (viewTreeObserver2 != null) {
                        viewTreeObserver2.removeOnGlobalLayoutListener(this);
                    }
                    func.invoke();
                }
            });
        }
    }

    public static final Bitmap getBitmap(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.measure(View.MeasureSpec.makeMeasureSpec(view.getLayoutParams().width, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(view.getLayoutParams().height, Integer.MIN_VALUE));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        view.layout(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        view.draw(canvas);
        return bitmapCreateBitmap;
    }
}
