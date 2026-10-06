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
public final class RowViewLayoutBinding implements ViewBinding {
    public final ImageView arrowIconImageView;
    public final MaterialCardView directoryRowCardView;
    public final ConstraintLayout myWordsInsideOfContainer;
    private final ConstraintLayout rootView;
    public final TextView titleLabel;

    private RowViewLayoutBinding(ConstraintLayout constraintLayout, ImageView imageView, MaterialCardView materialCardView, ConstraintLayout constraintLayout2, TextView textView) {
        this.rootView = constraintLayout;
        this.arrowIconImageView = imageView;
        this.directoryRowCardView = materialCardView;
        this.myWordsInsideOfContainer = constraintLayout2;
        this.titleLabel = textView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static RowViewLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static RowViewLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.row_view_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static RowViewLayoutBinding bind(View view) {
        int i = R.id.arrow_icon_image_view;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = R.id.directory_row_card_view;
            MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, i);
            if (materialCardView != null) {
                i = R.id.my_words_inside_of_container;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                if (constraintLayout != null) {
                    i = R.id.title_label;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView != null) {
                        return new RowViewLayoutBinding((ConstraintLayout) view, imageView, materialCardView, constraintLayout, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
