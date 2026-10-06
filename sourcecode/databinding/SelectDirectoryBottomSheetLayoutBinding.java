package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import fast.dic.dict.R;
import fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFoldersAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class SelectDirectoryBottomSheetLayoutBinding extends ViewDataBinding {
    public final FloatingActionButton addDirectoryFab;
    public final Button closeButton;
    public final Button editButton;
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected SelectFavoriteFoldersAdapter mAdapter;
    public final TextView placeholderLabel;
    public final RecyclerView recyclerViewBottomSheet;
    public final ConstraintLayout topToolbarContainer;

    public abstract void setAdapter(SelectFavoriteFoldersAdapter selectFavoriteFoldersAdapter);

    protected SelectDirectoryBottomSheetLayoutBinding(Object obj, View view, int i, FloatingActionButton floatingActionButton, Button button, Button button2, CustomProgressbar customProgressbar, TextView textView, RecyclerView recyclerView, ConstraintLayout constraintLayout) {
        super(obj, view, i);
        this.addDirectoryFab = floatingActionButton;
        this.closeButton = button;
        this.editButton = button2;
        this.loadingSpinner = customProgressbar;
        this.placeholderLabel = textView;
        this.recyclerViewBottomSheet = recyclerView;
        this.topToolbarContainer = constraintLayout;
    }

    public SelectFavoriteFoldersAdapter getAdapter() {
        return this.mAdapter;
    }

    public static SelectDirectoryBottomSheetLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SelectDirectoryBottomSheetLayoutBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (SelectDirectoryBottomSheetLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.select_directory_bottom_sheet_layout, viewGroup, z, obj);
    }

    public static SelectDirectoryBottomSheetLayoutBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SelectDirectoryBottomSheetLayoutBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (SelectDirectoryBottomSheetLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.select_directory_bottom_sheet_layout, null, false, obj);
    }

    public static SelectDirectoryBottomSheetLayoutBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static SelectDirectoryBottomSheetLayoutBinding bind(View view, Object obj) {
        return (SelectDirectoryBottomSheetLayoutBinding) bind(obj, view, R.layout.select_directory_bottom_sheet_layout);
    }
}
