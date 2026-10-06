package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.R;
import fast.dic.dict.models.database.FolderModel;

/* JADX INFO: loaded from: classes11.dex */
public abstract class EditFavoriteDirectoriesItemLayoutBinding extends ViewDataBinding {
    public final TextView directoryNameLabel;
    public final ImageView editIcon;

    @Bindable
    protected FolderModel mModel;

    @Bindable
    protected View.OnClickListener mOnDeleteClickListener;

    @Bindable
    protected View.OnClickListener mOnEditClickListener;

    @Bindable
    protected Boolean mSelected;
    public final ImageButton removeIcon;
    public final ImageView reorderImage;
    public final TextView wordsCountLabel;
    public final MaterialCardView wordsCountLabelParent;

    public abstract void setModel(FolderModel folderModel);

    public abstract void setOnDeleteClickListener(View.OnClickListener onClickListener);

    public abstract void setOnEditClickListener(View.OnClickListener onClickListener);

    public abstract void setSelected(Boolean bool);

    protected EditFavoriteDirectoriesItemLayoutBinding(Object obj, View view, int i, TextView textView, ImageView imageView, ImageButton imageButton, ImageView imageView2, TextView textView2, MaterialCardView materialCardView) {
        super(obj, view, i);
        this.directoryNameLabel = textView;
        this.editIcon = imageView;
        this.removeIcon = imageButton;
        this.reorderImage = imageView2;
        this.wordsCountLabel = textView2;
        this.wordsCountLabelParent = materialCardView;
    }

    public View.OnClickListener getOnDeleteClickListener() {
        return this.mOnDeleteClickListener;
    }

    public View.OnClickListener getOnEditClickListener() {
        return this.mOnEditClickListener;
    }

    public Boolean getSelected() {
        return this.mSelected;
    }

    public FolderModel getModel() {
        return this.mModel;
    }

    public static EditFavoriteDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static EditFavoriteDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (EditFavoriteDirectoriesItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.edit_favorite_directories_item_layout, viewGroup, z, obj);
    }

    public static EditFavoriteDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static EditFavoriteDirectoriesItemLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (EditFavoriteDirectoriesItemLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.edit_favorite_directories_item_layout, null, false, obj);
    }

    public static EditFavoriteDirectoriesItemLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static EditFavoriteDirectoriesItemLayoutBinding bind(View view, Object obj) {
        return (EditFavoriteDirectoriesItemLayoutBinding) bind(obj, view, R.layout.edit_favorite_directories_item_layout);
    }
}
