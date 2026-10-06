package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;
import fast.dic.dict.R;
import fast.dic.dict.views.CloudWordsView;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentLanguageOnBoardingBinding extends ViewDataBinding {
    public final LinearLayout actionsLayout;
    public final CloudWordsView cloudWordsView;
    public final Button continueButton;
    public final TextView descriptionLabel;
    public final MaterialButton englishButton;
    public final TextView languageTitleLabel;
    public final ImageView logoIv;
    public final LinearLayout notLoggedInView;
    public final MaterialButton persianButton;
    public final TextView titleLabel;

    protected FragmentLanguageOnBoardingBinding(Object obj, View view, int i, LinearLayout linearLayout, CloudWordsView cloudWordsView, Button button, TextView textView, MaterialButton materialButton, TextView textView2, ImageView imageView, LinearLayout linearLayout2, MaterialButton materialButton2, TextView textView3) {
        super(obj, view, i);
        this.actionsLayout = linearLayout;
        this.cloudWordsView = cloudWordsView;
        this.continueButton = button;
        this.descriptionLabel = textView;
        this.englishButton = materialButton;
        this.languageTitleLabel = textView2;
        this.logoIv = imageView;
        this.notLoggedInView = linearLayout2;
        this.persianButton = materialButton2;
        this.titleLabel = textView3;
    }

    public static FragmentLanguageOnBoardingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentLanguageOnBoardingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentLanguageOnBoardingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_language_on_boarding, viewGroup, z, obj);
    }

    public static FragmentLanguageOnBoardingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentLanguageOnBoardingBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentLanguageOnBoardingBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_language_on_boarding, null, false, obj);
    }

    public static FragmentLanguageOnBoardingBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentLanguageOnBoardingBinding bind(View view, Object obj) {
        return (FragmentLanguageOnBoardingBinding) bind(obj, view, R.layout.fragment_language_on_boarding);
    }
}
