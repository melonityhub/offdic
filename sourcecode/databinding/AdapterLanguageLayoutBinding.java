package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class AdapterLanguageLayoutBinding implements ViewBinding {
    public final TextView languageSubtitle;
    public final TextView languageTitleLabel;
    public final ConstraintLayout myWordsInsideOfContainer;
    private final ConstraintLayout rootView;
    public final MaterialCardView rowContainerCard;
    public final ImageView selectionIcon;

    private AdapterLanguageLayoutBinding(ConstraintLayout constraintLayout, TextView textView, TextView textView2, ConstraintLayout constraintLayout2, MaterialCardView materialCardView, ImageView imageView) {
        this.rootView = constraintLayout;
        this.languageSubtitle = textView;
        this.languageTitleLabel = textView2;
        this.myWordsInsideOfContainer = constraintLayout2;
        this.rowContainerCard = materialCardView;
        this.selectionIcon = imageView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static AdapterLanguageLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static AdapterLanguageLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.adapter_language_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static AdapterLanguageLayoutBinding bind(View view) {
        int i = R.id.language_subtitle;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.language_title_label;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                i = R.id.my_words_inside_of_container;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                if (constraintLayout != null) {
                    i = R.id.row_container_card;
                    MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, i);
                    if (materialCardView != null) {
                        i = R.id.selection_icon;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                        if (imageView != null) {
                            return new AdapterLanguageLayoutBinding((ConstraintLayout) view, textView, textView2, constraintLayout, materialCardView, imageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
