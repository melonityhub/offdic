package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class SearchBarBinding implements ViewBinding {
    public final ImageView clearButton;
    public final RelativeLayout clearButtonContainer;
    public final CardView parentCardView;
    private final CardView rootView;
    public final ImageView searchIcon;
    public final EditText searchInput;
    public final ConstraintLayout searchInputContainer;
    public final LinearLayout wordCountView;
    public final TextView wordsCountLabel;

    private SearchBarBinding(CardView cardView, ImageView imageView, RelativeLayout relativeLayout, CardView cardView2, ImageView imageView2, EditText editText, ConstraintLayout constraintLayout, LinearLayout linearLayout, TextView textView) {
        this.rootView = cardView;
        this.clearButton = imageView;
        this.clearButtonContainer = relativeLayout;
        this.parentCardView = cardView2;
        this.searchIcon = imageView2;
        this.searchInput = editText;
        this.searchInputContainer = constraintLayout;
        this.wordCountView = linearLayout;
        this.wordsCountLabel = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public CardView getRoot() {
        return this.rootView;
    }

    public static SearchBarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static SearchBarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.search_bar, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static SearchBarBinding bind(View view) {
        int i = R.id.clear_button;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R.id.clear_button_container;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
            if (relativeLayout != null) {
                CardView cardView = (CardView) view;
                i = R.id.search_icon;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                if (imageView2 != null) {
                    i = R.id.search_input;
                    EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                    if (editText != null) {
                        i = R.id.search_input_container;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                        if (constraintLayout != null) {
                            i = R.id.word_count_view;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                            if (linearLayout != null) {
                                i = R.id.words_count_label;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null) {
                                    return new SearchBarBinding(cardView, imageView, relativeLayout, cardView, imageView2, editText, constraintLayout, linearLayout, textView);
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
