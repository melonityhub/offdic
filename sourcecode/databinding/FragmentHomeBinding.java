package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import fast.dic.dict.R;
import fast.dic.dict.views.SearchBarView;
import fast.dic.dict.views.WordOfTheDayView;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentHomeBinding implements ViewBinding {
    private final FrameLayout rootView;
    public final SearchBarView searchBarView;
    public final WordOfTheDayView wodView;

    private FragmentHomeBinding(FrameLayout frameLayout, SearchBarView searchBarView, WordOfTheDayView wordOfTheDayView) {
        this.rootView = frameLayout;
        this.searchBarView = searchBarView;
        this.wodView = wordOfTheDayView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentHomeBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentHomeBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_home, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentHomeBinding bind(View view) {
        int i = R.id.search_bar_view;
        SearchBarView searchBarView = (SearchBarView) ViewBindings.findChildViewById(view, i);
        if (searchBarView != null) {
            i = R.id.wod_view;
            WordOfTheDayView wordOfTheDayView = (WordOfTheDayView) ViewBindings.findChildViewById(view, i);
            if (wordOfTheDayView != null) {
                return new FragmentHomeBinding((FrameLayout) view, searchBarView, wordOfTheDayView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
