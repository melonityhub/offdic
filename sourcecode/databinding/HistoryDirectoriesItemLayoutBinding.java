package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.R;
import fast.dic.dict.models.database.FolderModel;

/* JADX INFO: loaded from: classes11.dex */
public abstract class HistoryDirectoriesItemLayoutBinding extends ViewDataBinding {
    public final TextView directoryNameLabel;

    @Bindable
    protected FolderModel mModel;

    @Bindable
    protected View.OnClickListener mOnClickListener;
    public final TextView wordsCountLabel;
    public final MaterialCardView wordsCountLabelParent;

    public abstract void setModel(FolderModel folderModel);

    public abstract void setOnClickListener(View.OnClickListener onClickListener);

    protected HistoryDirectoriesItemLayoutBinding(Object obj, View view, int i, TextView textView, TextView textView2, MaterialCardView materialCardView) {
        super(obj, view, i);
        this.directoryNameLabel = textView;
        this.wordsCountLabel = textView2;
        this.wordsCountLabelParent = materialCardView;
    }

    public View.OnClickListener getOnClickListener() {
        return this.mOnClickListener;
    }

    public FolderModel getModel() {
        return this.mModel;
    }

    public static HistoryDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static HistoryDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (HistoryDirectoriesItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.history_directories_item_layout, viewGroup, z, obj);
    }

    public static HistoryDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static HistoryDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (HistoryDirectoriesItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.history_directories_item_layout, null, false, obj);
    }

    public static HistoryDirectoriesItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static HistoryDirectoriesItemLayoutBinding bind(View view, Object obj) {
        return (HistoryDirectoriesItemLayoutBinding) bind(obj, view, R.layout.history_directories_item_layout);
    }
}
