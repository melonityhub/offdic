package fast.dic.dict.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import fast.dic.dict.R;
import fast.dic.dict.generated.callback.OnClickListener;
import fast.dic.dict.models.database.ListModel;

/* JADX INFO: loaded from: classes11.dex */
public class WsTranslatorNoSubscriptionItemLayoutBindingImpl extends WsTranslatorNoSubscriptionItemLayoutBinding implements OnClickListener.Listener {
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;
    private static final SparseIntArray sViewsWithIds;
    private final View.OnClickListener mCallback10;
    private long mDirtyFlags;
    private final ConstraintLayout mboundView0;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sViewsWithIds = sparseIntArray;
        sparseIntArray.put(R.id.history_icon_imageview, 2);
        sparseIntArray.put(R.id.translator_text_sub_view, 3);
        sparseIntArray.put(R.id.back_icon_imageview, 4);
    }

    public WsTranslatorNoSubscriptionItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 5, sIncludes, sViewsWithIds));
    }

    private WsTranslatorNoSubscriptionItemLayoutBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[4], (ImageView) objArr[2], (TextView) objArr[3], (TextView) objArr[1]);
        this.mDirtyFlags = -1L;
        ConstraintLayout constraintLayout = (ConstraintLayout) objArr[0];
        this.mboundView0 = constraintLayout;
        constraintLayout.setTag(null);
        this.translatorTextView.setTag(null);
        setRootTag(view);
        this.mCallback10 = new OnClickListener(this, 1);
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
        if (30 == i) {
            setModel((ListModel) obj);
            return true;
        }
        if (32 != i) {
            return false;
        }
        setOnClickListener((View.OnClickListener) obj);
        return true;
    }

    @Override // fast.dic.dict.databinding.WsTranslatorNoSubscriptionItemLayoutBinding
    public void setModel(ListModel listModel) {
        this.mModel = listModel;
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        notifyPropertyChanged(30);
        super.requestRebind();
    }

    @Override // fast.dic.dict.databinding.WsTranslatorNoSubscriptionItemLayoutBinding
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(32);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        String str;
        int translatorCount;
        int maxTranslatorLength;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        ListModel listModel = this.mModel;
        View.OnClickListener onClickListener = this.mOnClickListener;
        long j2 = 5 & j;
        if (j2 != 0) {
            if (listModel != null) {
                translatorCount = listModel.getTranslatorCount();
                maxTranslatorLength = listModel.getMaxTranslatorLength();
            } else {
                translatorCount = 0;
                maxTranslatorLength = 0;
            }
            str = String.format(this.translatorTextView.getResources().getString(R.string.word_limitation_for_translate), Integer.valueOf(translatorCount), Integer.valueOf(maxTranslatorLength));
        } else {
            str = null;
        }
        if ((j & 4) != 0) {
            this.mboundView0.setOnClickListener(this.mCallback10);
        }
        if (j2 != 0) {
            TextViewBindingAdapter.setText(this.translatorTextView, str);
        }
    }

    @Override // fast.dic.dict.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        View.OnClickListener onClickListener = this.mOnClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }
}
