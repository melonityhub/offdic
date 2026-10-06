package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import fast.dic.dict.R;
import fast.dic.dict.adapters.LanguageLayoutAdapter;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentChooseLanguageBinding extends ViewDataBinding {
    public final RecyclerView languageRecyclerView;

    @Bindable
    protected LanguageLayoutAdapter mAdapter;

    public abstract void setAdapter(LanguageLayoutAdapter languageLayoutAdapter);

    protected FragmentChooseLanguageBinding(Object obj, View view, int i, RecyclerView recyclerView) {
        super(obj, view, i);
        this.languageRecyclerView = recyclerView;
    }

    public LanguageLayoutAdapter getAdapter() {
        return this.mAdapter;
    }

    public static FragmentChooseLanguageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentChooseLanguageBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentChooseLanguageBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_choose_language, viewGroup, z, obj);
    }

    public static FragmentChooseLanguageBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentChooseLanguageBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentChooseLanguageBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_choose_language, null, false, obj);
    }

    public static FragmentChooseLanguageBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentChooseLanguageBinding bind(View view, Object obj) {
        return (FragmentChooseLanguageBinding) bind(obj, view, R.layout.fragment_choose_language);
    }
}
