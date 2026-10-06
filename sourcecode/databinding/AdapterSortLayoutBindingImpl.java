package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import com.google.android.material.card.MaterialCardView;
import fast.dic.dict.R;
import fast.dic.dict.generated.callback.OnClickListener;
import fast.dic.dict.presentation.sort_screen.BindingAdapters;
import fast.dic.dict.presentation.sort_screen.SortFragmentUIState;

/* JADX INFO: loaded from: classes11.dex */
public class AdapterSortLayoutBindingImpl extends AdapterSortLayoutBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback26;
    private long mDirtyFlags;
    private final ConstraintLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.my_words_inside_of_container, 3);
    }

    public AdapterSortLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 4, sIncludes, sViewsWithIds));
    }

    private AdapterSortLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TextView) objArr[2], (ConstraintLayout) objArr[3], (MaterialCardView) objArr[1]);
        this.mDirtyFlags = -1L;
        this.languageTitleLabel.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        this.rowContainerCard.setTag(null);
        setRootTag(view);
        this.mCallback26 = new OnClickListener(this, 1);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.mDirtyFlags != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, Object obj) {
        if (36 == i) {
            setOnSelectListener((View.OnClickListener) obj);
            return true;
        }
        if (30 != i) {
            return false;
        }
        setModel((SortFragmentUIState) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.AdapterSortLayoutBinding
    public void setOnSelectListener(View.OnClickListener onClickListener) {
        this.mOnSelectListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(36);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.AdapterSortLayoutBinding
    public void setModel(SortFragmentUIState sortFragmentUIState) {
        this.mModel = sortFragmentUIState;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        String title;
        boolean selected;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        View.OnClickListener onClickListener = this.mOnSelectListener;
        SortFragmentUIState sortFragmentUIState = this.mModel;
        long j2 = 6 & j;
        if (j2 == 0 || sortFragmentUIState == null) {
            title = null;
            selected = false;
        } else {
            title = sortFragmentUIState.getTitle();
            selected = sortFragmentUIState.getSelected();
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.languageTitleLabel, title);
            BindingAdapters.bindingSelectedTextView(this.languageTitleLabel, selected);
            BindingAdapters.bindingSelectedCardView(this.rowContainerCard, selected);
        }
        if ((j & 4) != 0) {
            this.rowContainerCard.setOnClickListener(this.mCallback26);
        }
    }

    @Override // fast.dic.dict.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        View.OnClickListener onClickListener = this.mOnSelectListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}
