package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.alexvasilkov.gestures.views.GestureFrameLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.trinnguyen.SegmentView;
import fast.dic.dict.R;
import fast.dic.dict.views.GraphicOverlay;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentTextRecognitionTranslatorBinding implements ViewBinding {
    public final FloatingActionButton copyFab;
    public final GestureFrameLayout gestureView;
    public final GraphicOverlay graphicOverlay;
    public final ImageView imageView;
    public final ProgressBar loadingSpinner;
    public final RelativeLayout overlayContainer;
    public final RelativeLayout placeholderView;
    private final ConstraintLayout rootView;
    public final SegmentView segmentedView;
    public final BottomSheetToolbarLayoutBinding toolbarView;

    private FragmentTextRecognitionTranslatorBinding(ConstraintLayout constraintLayout, FloatingActionButton floatingActionButton, GestureFrameLayout gestureFrameLayout, GraphicOverlay graphicOverlay, ImageView imageView, ProgressBar progressBar, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, SegmentView segmentView, BottomSheetToolbarLayoutBinding bottomSheetToolbarLayoutBinding) {
        this.rootView = constraintLayout;
        this.copyFab = floatingActionButton;
        this.gestureView = gestureFrameLayout;
        this.graphicOverlay = graphicOverlay;
        this.imageView = imageView;
        this.loadingSpinner = progressBar;
        this.overlayContainer = relativeLayout;
        this.placeholderView = relativeLayout2;
        this.segmentedView = segmentView;
        this.toolbarView = bottomSheetToolbarLayoutBinding;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentTextRecognitionTranslatorBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentTextRecognitionTranslatorBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_text_recognition_translator, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentTextRecognitionTranslatorBinding bind(View view) {
        View viewFindChildViewById;
        int i = R.id.copy_fab;
        FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, i);
        if (floatingActionButton != null) {
            i = R.id.gesture_view;
            GestureFrameLayout gestureFrameLayout = (GestureFrameLayout) ViewBindings.findChildViewById(view, i);
            if (gestureFrameLayout != null) {
                i = R.id.graphic_overlay;
                GraphicOverlay graphicOverlay = (GraphicOverlay) ViewBindings.findChildViewById(view, i);
                if (graphicOverlay != null) {
                    i = R.id.image_view;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                    if (imageView != null) {
                        i = R.id.loading_spinner;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                        if (progressBar != null) {
                            i = R.id.overlay_container;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                            if (relativeLayout != null) {
                                i = R.id.placeholder_view;
                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                if (relativeLayout2 != null) {
                                    i = R.id.segmented_view;
                                    SegmentView segmentView = (SegmentView) ViewBindings.findChildViewById(view, i);
                                    if (segmentView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.toolbar_view))) != null) {
                                        return new FragmentTextRecognitionTranslatorBinding((ConstraintLayout) view, floatingActionButton, gestureFrameLayout, graphicOverlay, imageView, progressBar, relativeLayout, relativeLayout2, segmentView, BottomSheetToolbarLayoutBinding.bind(viewFindChildViewById));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
