package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.camera.view.PreviewView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.imageview.ShapeableImageView;
import fast.dic.dict.R;
import fast.dic.dict.views.CameraGridView;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentCameraBinding implements ViewBinding {
    public final PreviewView cameraPreview;
    public final ShapeableImageView galleryIv;
    public final CameraGridView gridView;
    private final ConstraintLayout rootView;
    public final FloatingActionButton shutterBt;

    private FragmentCameraBinding(ConstraintLayout constraintLayout, PreviewView previewView, ShapeableImageView shapeableImageView, CameraGridView cameraGridView, FloatingActionButton floatingActionButton) {
        this.rootView = constraintLayout;
        this.cameraPreview = previewView;
        this.galleryIv = shapeableImageView;
        this.gridView = cameraGridView;
        this.shutterBt = floatingActionButton;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCameraBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentCameraBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_camera, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentCameraBinding bind(View view) {
        int i = R.id.camera_preview;
        PreviewView previewView = (PreviewView) ViewBindings.findChildViewById(view, i);
        if (previewView != null) {
            i = R.id.gallery_iv;
            ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, i);
            if (shapeableImageView != null) {
                i = R.id.gridView;
                CameraGridView cameraGridView = (CameraGridView) ViewBindings.findChildViewById(view, i);
                if (cameraGridView != null) {
                    i = R.id.shutter_bt;
                    FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, i);
                    if (floatingActionButton != null) {
                        return new FragmentCameraBinding((ConstraintLayout) view, previewView, shapeableImageView, cameraGridView, floatingActionButton);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
