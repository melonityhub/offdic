package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import fast.dic.dict.R;
import fast.dic.dict.presentation.favorite_screen.FavoriteFoldersAdapter;
import fast.dic.dict.views.CustomProgressbar;

/* JADX INFO: loaded from: classes11.dex */
public abstract class FragmentFavoritesBinding extends ViewDataBinding {
    public final FloatingActionButton addDirectoryFab;
    public final CustomProgressbar loadingSpinner;

    @Bindable
    protected FavoriteFoldersAdapter mAdapter;

    @Bindable
    protected String mStateMessage;

    @Bindable
    protected String mStateTitle;
    public final RecyclerView myWordsDirectoryView;
    public final Button settingBtn;
    public final SwipeRefreshLayout swipeRefresh;
    public final RelativeLayout syncDateContainer;
    public final TextView syncDateTv;
    public final ImageView syncIv;
    public final TextView syncStateTv;

    public abstract void setAdapter(FavoriteFoldersAdapter favoriteFoldersAdapter);

    public abstract void setStateMessage(String str);

    public abstract void setStateTitle(String str);

    protected FragmentFavoritesBinding(Object obj, View view, int i, FloatingActionButton floatingActionButton, CustomProgressbar customProgressbar, RecyclerView recyclerView, Button button, SwipeRefreshLayout swipeRefreshLayout, RelativeLayout relativeLayout, TextView textView, ImageView imageView, TextView textView2) {
        super(obj, view, i);
        this.addDirectoryFab = floatingActionButton;
        this.loadingSpinner = customProgressbar;
        this.myWordsDirectoryView = recyclerView;
        this.settingBtn = button;
        this.swipeRefresh = swipeRefreshLayout;
        this.syncDateContainer = relativeLayout;
        this.syncDateTv = textView;
        this.syncIv = imageView;
        this.syncStateTv = textView2;
    }

    public String getStateMessage() {
        return this.mStateMessage;
    }

    public String getStateTitle() {
        return this.mStateTitle;
    }

    public FavoriteFoldersAdapter getAdapter() {
        return this.mAdapter;
    }

    public static FragmentFavoritesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentFavoritesBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z, Object obj) {
        return (FragmentFavoritesBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_favorites, viewGroup, z, obj);
    }

    public static FragmentFavoritesBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentFavoritesBinding inflate(LayoutInflater layoutInflater, Object obj) {
        return (FragmentFavoritesBinding) ViewDataBinding.inflateInternal(layoutInflater, R.layout.fragment_favorites, null, false, obj);
    }

    public static FragmentFavoritesBinding bind(View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentFavoritesBinding bind(View view, Object obj) {
        return (FragmentFavoritesBinding) bind(obj, view, R.layout.fragment_favorites);
    }
}
