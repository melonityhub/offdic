package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class WordOfTheDayBinding implements ViewBinding {
    public final ImageView calendarIconView;
    private final CardView rootView;
    public final TextView todayView;
    public final ImageView wodArrowIcon;
    public final ConstraintLayout wodHeaderContainer;
    public final TextView wodTitleView;
    public final TextView wodWordView;

    private WordOfTheDayBinding(CardView cardView, ImageView imageView, TextView textView, ImageView imageView2, ConstraintLayout constraintLayout, TextView textView2, TextView textView3) {
        this.rootView = cardView;
        this.calendarIconView = imageView;
        this.todayView = textView;
        this.wodArrowIcon = imageView2;
        this.wodHeaderContainer = constraintLayout;
        this.wodTitleView = textView2;
        this.wodWordView = textView3;
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static WordOfTheDayBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static WordOfTheDayBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.word_of_the_day, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static WordOfTheDayBinding bind(View view) {
        int i = R.id.calendar_icon_view;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R.id.today_view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.wod_arrow_icon;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView2 != null) {
                    i = R.id.wod_header_container;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                    if (constraintLayout != null) {
                        i = R.id.wod_title_view;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView2 != null) {
                            i = R.id.wod_word_view;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView3 != null) {
                                return new WordOfTheDayBinding((CardView) view, imageView, textView, imageView2, constraintLayout, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
