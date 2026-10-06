package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class WordOfTheDayWidgetBinding implements ViewBinding {
    public final ImageView calendarIconView;
    private final RelativeLayout rootView;
    public final TextView todayView;
    public final TextView todayViewCenter;
    public final RelativeLayout wodContainer;
    public final RelativeLayout wodHeaderContainer;
    public final TextView wodMeaningsView;
    public final TextView wodTitleView;
    public final RelativeLayout wodWordContainer;
    public final TextView wodWordView;

    private WordOfTheDayWidgetBinding(RelativeLayout relativeLayout, ImageView imageView, TextView textView, TextView textView2, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3, TextView textView3, TextView textView4, RelativeLayout relativeLayout4, TextView textView5) {
        this.rootView = relativeLayout;
        this.calendarIconView = imageView;
        this.todayView = textView;
        this.todayViewCenter = textView2;
        this.wodContainer = relativeLayout2;
        this.wodHeaderContainer = relativeLayout3;
        this.wodMeaningsView = textView3;
        this.wodTitleView = textView4;
        this.wodWordContainer = relativeLayout4;
        this.wodWordView = textView5;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static WordOfTheDayWidgetBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static WordOfTheDayWidgetBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.word_of_the_day_widget, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static WordOfTheDayWidgetBinding bind(View view) {
        int i = R.id.calendar_icon_view;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R.id.today_view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = R.id.today_view_center;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    RelativeLayout relativeLayout = (RelativeLayout) view;
                    i = R.id.wod_header_container;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                    if (relativeLayout2 != null) {
                        i = R.id.wod_meanings_view;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView3 != null) {
                            i = R.id.wod_title_view;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView4 != null) {
                                i = R.id.wod_word_container;
                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                if (relativeLayout3 != null) {
                                    i = R.id.wod_word_view;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView5 != null) {
                                        return new WordOfTheDayWidgetBinding(relativeLayout, imageView, textView, textView2, relativeLayout, relativeLayout2, textView3, textView4, relativeLayout3, textView5);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
