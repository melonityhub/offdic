package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.trinnguyen.SegmentView;
import fast.dic.dict.R;
import fast.dic.dict.views.SiriVisualView;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentVoiceRecognitionBinding implements ViewBinding {
    public final FloatingActionButton micButtonFab;
    private final RelativeLayout rootView;
    public final SegmentView segmentedView;
    public final TextView sentenceView;
    public final BottomSheetToolbarLayoutBinding toolbarView;
    public final ConstraintLayout waveParentView;
    public final SiriVisualView waveView;

    private FragmentVoiceRecognitionBinding(RelativeLayout relativeLayout, FloatingActionButton floatingActionButton, SegmentView segmentView, TextView textView, BottomSheetToolbarLayoutBinding bottomSheetToolbarLayoutBinding, ConstraintLayout constraintLayout, SiriVisualView siriVisualView) {
        this.rootView = relativeLayout;
        this.micButtonFab = floatingActionButton;
        this.segmentedView = segmentView;
        this.sentenceView = textView;
        this.toolbarView = bottomSheetToolbarLayoutBinding;
        this.waveParentView = constraintLayout;
        this.waveView = siriVisualView;
    }

    @Override // androidx.viewbinding.ViewBinding
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    public static FragmentVoiceRecognitionBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentVoiceRecognitionBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_voice_recognition, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentVoiceRecognitionBinding bind(View view) {
        View viewFindChildViewById;
        int i = R.id.mic_button_fab;
        FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, i);
        if (floatingActionButton != null) {
            i = R.id.segmented_view;
            SegmentView segmentView = (SegmentView) ViewBindings.findChildViewById(view, i);
            if (segmentView != null) {
                i = R.id.sentence_view;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.toolbar_view))) != null) {
                    BottomSheetToolbarLayoutBinding bottomSheetToolbarLayoutBindingBind = BottomSheetToolbarLayoutBinding.bind(viewFindChildViewById);
                    i = R.id.wave_parent_view;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                    if (constraintLayout != null) {
                        i = R.id.wave_view;
                        SiriVisualView siriVisualView = (SiriVisualView) ViewBindings.findChildViewById(view, i);
                        if (siriVisualView != null) {
                            return new FragmentVoiceRecognitionBinding((RelativeLayout) view, floatingActionButton, segmentView, textView, bottomSheetToolbarLayoutBindingBind, constraintLayout, siriVisualView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
