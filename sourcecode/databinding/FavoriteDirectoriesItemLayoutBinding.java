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
public abstract class FavoriteDirectoriesItemLayoutBinding extends ViewDataBinding {
    public final TextView directoryNameLabel;

    @Bindable
    protected FolderModel mModel;

    @Bindable
    protected View.OnClickListener mOnClickListener;

    @Bindable
    protected Boolean mSelected;
    public final TextView wordsCountLabel;
    public final MaterialCardView wordsCountLabelParent;

    public abstract void setModel(FolderModel folderModel);

    public abstract void setOnClickListener(View.OnClickListener onClickListener);

    public abstract void setSelected(Boolean bool);

    protected FavoriteDirectoriesItemLayoutBinding(Object obj, View view, int i, TextView textView, TextView textView2, MaterialCardView materialCardView) {
        super(obj, view, i);
        this.directoryNameLabel = textView;
        this.wordsCountLabel = textView2;
        this.wordsCountLabelParent = materialCardView;
    }

    public View.OnClickListener getOnClickListener() {
        return this.mOnClickListener;
    }

    public Boolean getSelected() {
        return this.mSelected;
    }

    public FolderModel getModel() {
        return this.mModel;
    }

    public static FavoriteDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FavoriteDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FavoriteDirectoriesItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.favorite_directories_item_layout, viewGroup, z, obj);
    }

    public static FavoriteDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FavoriteDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FavoriteDirectoriesItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.favorite_directories_item_layout, null, false, obj);
    }

    public static FavoriteDirectoriesItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FavoriteDirectoriesItemLayoutBinding bind(View view, Object obj) {
        return (FavoriteDirectoriesItemLayoutBinding) bind(obj, view, R.layout.favorite_directories_item_layout);
    }
}
