package fast.dic.dict.utils;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class ViewExtKt$$ExternalSyntheticLambda1 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ ViewGroup.MarginLayoutParams f$0;
    public final /* synthetic */ View f$1;

    public /* synthetic */ ViewExtKt$$ExternalSyntheticLambda1() {
        marginLayoutParams = marginLayoutParams;
        view = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        ViewExtKt.moveToTopWithFullWidth$lambda$1(marginLayoutParams, view, valueAnimator);
    }
}
