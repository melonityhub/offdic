package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class MenuCustomTextBinding implements ViewBinding {
    public final TextView customMenuText;
    private final TextView rootView;

    private MenuCustomTextBinding(TextView textView, TextView textView2) {
        this.rootView = textView;
        this.customMenuText = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static MenuCustomTextBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static MenuCustomTextBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.menu_custom_text, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static MenuCustomTextBinding bind(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) view;
        return new MenuCustomTextBinding(textView, textView);
    }
}
