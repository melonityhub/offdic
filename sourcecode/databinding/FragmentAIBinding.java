package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import fast.dic.dict.R;
import fast.dic.dict.views.CustomProgressbar;
import im.delight.android.webview.AdvancedWebView;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentAIBinding extends ViewDataBinding {
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected Boolean mLoading;
    public final AdvancedWebView webView;

    public abstract void setLoading(Boolean bool);

    protected FragmentAIBinding(Object obj, View view, int i, CustomProgressbar customProgressbar, AdvancedWebView advancedWebView) {
        super(obj, view, i);
        this.loadingSpinner = customProgressbar;
        this.webView = advancedWebView;
    }

    public Boolean getLoading() {
        return this.mLoading;
    }

    public static FragmentAIBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentAIBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentAIBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_a_i, viewGroup, z, obj);
    }

    public static FragmentAIBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentAIBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentAIBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_a_i, null, false, obj);
    }

    public static FragmentAIBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentAIBinding bind(View view, Object obj) {
        return (FragmentAIBinding) bind(obj, view, R.layout.fragment_a_i);
    }
}
