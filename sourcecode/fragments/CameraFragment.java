package fast.dic.dict.fragments;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.view.PreviewView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.os.BundleKt;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.resource.bitmap.CenterCrop;
import com.bumptech.glide.load.resource.bitmap.RoundedCorners;
import com.canhub.cropper.CropImageContract;
import com.canhub.cropper.CropImageContractOptions;
import com.canhub.cropper.CropImageOptions;
import com.canhub.cropper.CropImageView;
import com.google.common.util.concurrent.ListenableFuture;
import com.ironsource.U3;
import com.parse.ParseException;
import com.parse.ParseUser;
import com.yandex.div.core.DivActionHandler;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentCameraBinding;
import fast.dic.dict.fragments.onboardings.CameraPermissionFragment;
import fast.dic.dict.helpers.FDSoundEffect;
import fast.dic.dict.p000const.ConstKt;
import fast.dic.dict.presentation.fullscreen_modal.FullscreenModal;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;

/* JADX INFO: compiled from: CameraFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u0000 >2\u00020\u00012\u00020\u0002:\u0001>B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J$\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0002J\b\u0010\u001e\u001a\u00020\u001dH\u0016J\b\u0010$\u001a\u00020%H\u0002J\b\u0010&\u001a\u00020\u001dH\u0002J0\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020+H\u0003b\u0010\b,\u0012\f\b-\u0012\b\b\fJ\u0004\b\b(.b\f\b/\u0012\b\b-\u0012\u0004\b\u0003\u0010.J\u001a\u00100\u001a\u00020\u001dH\u0003b\u0010\b,\u0012\f\b-\u0012\b\b\fJ\u0004\b\b(.J\u001a\u00101\u001a\u00020\u001dH\u0003b\u0010\b,\u0012\f\b-\u0012\b\b\fJ\u0004\b\b(.J\b\u00102\u001a\u00020\u001dH\u0002J\b\u00103\u001a\u00020\u001dH\u0002J\b\u00104\u001a\u00020\u001dH\u0002J\b\u00105\u001a\u00020\u001dH\u0016J\u0018\u00106\u001a\u00020\u001d2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020+2\u0006\u0010<\u001a\u00020=H\u0016R#\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\u000b¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082.¢\u0006\u0002\n\u0000R!\u0010\u001f\u001a\u0015\u0012\f\u0012\n \"*\u0004\u0018\u00010!0!0 ¢\u0006\u0002\b#X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010'\u001a\u0015\u0012\f\u0012\n \"*\u0004\u0018\u00010(0(0 ¢\u0006\u0002\b#X\u0082\u0004¢\u0006\u0002\n\u0000Ê\u0001\u0002\b@¨\u0006?"}, d2 = {"Lfast/dic/dict/fragments/CameraFragment;", "Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "soundEffect", "Lfast/dic/dict/helpers/FDSoundEffect;", "getSoundEffect", "()Lfast/dic/dict/helpers/FDSoundEffect;", "setSoundEffect", "(Lfast/dic/dict/helpers/FDSoundEffect;)V", "Ljavax/inject/Inject;", "cameraPreview", "Landroidx/camera/core/Preview;", "imageCapture", "Landroidx/camera/core/ImageCapture;", "cameraExecutor", "Ljava/util/concurrent/ExecutorService;", "binding", "Lfast/dic/dict/databinding/FragmentCameraBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "checkLimitation", "", U3.i.u0, "startForResult", "Landroidx/activity/result/ActivityResultLauncher;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "Lorg/jspecify/annotations/NonNull;", "getCropOptions", "Lcom/canhub/cropper/CropImageOptions;", "checkPermission", "cropImage", "Lcom/canhub/cropper/CropImageContractOptions;", "openFlashLight", DebugKt.DEBUG_PROPERTY_VALUE_ON, "", "Landroid/annotation/SuppressLint;", "value", "RestrictedApi", "Landroidx/annotation/RequiresApi;", "startCamera", "stopCamera", "changeFlashIcon", "takePhoto", "getLastImageFromGallery", "onDestroy", "onCreateMenu", DivActionHandler.DivActionReason.MENU, "Landroid/view/Menu;", "menuInflater", "Landroid/view/MenuInflater;", "onMenuItemSelected", "menuItem", "Landroid/view/MenuItem;", "Companion", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class CameraFragment extends Hilt_CameraFragment implements MenuProvider {
    private static final String DATE_FORMAT = "yyyy-MM-dd-HH-mm-ss-SSS";
    private static final String FILENAME = "fast_dictionary_image_translator.jpg";
    private FragmentCameraBinding binding;
    private ExecutorService cameraExecutor;
    private Preview cameraPreview;
    private final ActivityResultLauncher<CropImageContractOptions> cropImage;
    private ImageCapture imageCapture;

    @Inject
    public FDSoundEffect soundEffect;
    private final ActivityResultLauncher<Intent> startForResult;

    public CameraFragment() {
        super(false);
        ActivityResultLauncher<Intent> activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: fast.dic.dict.fragments.CameraFragment$$ExternalSyntheticLambda2
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                CameraFragment.startForResult$lambda$0(this.f$0, (ActivityResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(activityResultLauncherRegisterForActivityResult, "registerForActivityResult(...)");
        this.startForResult = activityResultLauncherRegisterForActivityResult;
        ActivityResultLauncher<CropImageContractOptions> activityResultLauncherRegisterForActivityResult2 = registerForActivityResult(new CropImageContract(), new ActivityResultCallback() { // from class: fast.dic.dict.fragments.CameraFragment$$ExternalSyntheticLambda3
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                CameraFragment.cropImage$lambda$0(this.f$0, (CropImageView.CropResult) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(activityResultLauncherRegisterForActivityResult2, "registerForActivityResult(...)");
        this.cropImage = activityResultLauncherRegisterForActivityResult2;
    }

    public final FDSoundEffect getSoundEffect() {
        FDSoundEffect fDSoundEffect = this.soundEffect;
        if (fDSoundEffect != null) {
            return fDSoundEffect;
        }
        Intrinsics.throwUninitializedPropertyAccessException("soundEffect");
        return null;
    }

    public final void setSoundEffect(FDSoundEffect fDSoundEffect) {
        Intrinsics.checkNotNullParameter(fDSoundEffect, "<set-?>");
        this.soundEffect = fDSoundEffect;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentCameraBinding fragmentCameraBindingInflate = FragmentCameraBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentCameraBindingInflate, "inflate(...)");
        this.binding = fragmentCameraBindingInflate;
        FragmentCameraBinding fragmentCameraBinding = null;
        if (fragmentCameraBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentCameraBindingInflate = null;
        }
        fragmentCameraBindingInflate.shutterBt.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.CameraFragment$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.takePhoto();
            }
        });
        FragmentCameraBinding fragmentCameraBinding2 = this.binding;
        if (fragmentCameraBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentCameraBinding2 = null;
        }
        fragmentCameraBinding2.galleryIv.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.CameraFragment$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CameraFragment.onCreateView$lambda$1(this.f$0, view);
            }
        });
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        this.cameraExecutor = executorServiceNewSingleThreadExecutor;
        checkPermission();
        ContextExtKt.requestForNewMenu(this);
        FragmentCameraBinding fragmentCameraBinding3 = this.binding;
        if (fragmentCameraBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentCameraBinding = fragmentCameraBinding3;
        }
        ConstraintLayout root = fragmentCameraBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final void onCreateView$lambda$1(CameraFragment cameraFragment, View view) {
        cameraFragment.getSoundEffect().tapVibration();
        cameraFragment.startForResult.launch(new Intent("android.intent.action.PICK", MediaStore.Images.Media.INTERNAL_CONTENT_URI));
    }

    private final void checkLimitation() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser != null && fDParseUser.isAuthenticated() && fDParseUser.hasPlan2Or3()) {
            return;
        }
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        LocalStorage localStorage = new LocalStorage(contextRequireContext);
        if (localStorage.getImageTranslatorLimitation() <= 0) {
            localStorage.validRewardedAdsForImageTranslator();
            FragmentManager supportFragmentManager = requireActivity().getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            final FullscreenModal fullscreenModal = new FullscreenModal(true, getString(R.string.image_translator), getString(R.string.image_translator_limitation_desc), getString(R.string.image_translator_limitation_cta_title), ConstKt.FD_PRICING_SCREEN, null, null, null, null, 32, null);
            fullscreenModal.show(supportFragmentManager, "");
            fullscreenModal.setOnDismissed(new Function1() { // from class: fast.dic.dict.fragments.CameraFragment$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CameraFragment.checkLimitation$lambda$0$0(fullscreenModal, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit checkLimitation$lambda$0$0(FullscreenModal fullscreenModal, boolean z) {
        FullscreenModal fullscreenModal2 = fullscreenModal;
        FragmentKt.findNavController(fullscreenModal2).navigateUp();
        if (z) {
            NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(fullscreenModal2), R.id.newPricingFragment, null, 2, null);
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() throws ParseException {
        super.onResume();
        checkLimitation();
        ImageCapture imageCapture = this.imageCapture;
        if (imageCapture != null) {
            imageCapture.setFlashMode(2);
        }
        changeFlashIcon();
    }

    static final void startForResult$lambda$0(CameraFragment cameraFragment, ActivityResult result) {
        Intent data;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result.getResultCode() != -1 || (data = result.getData()) == null) {
            return;
        }
        cameraFragment.cropImage.launch(new CropImageContractOptions(data.getData(), cameraFragment.getCropOptions()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CropImageOptions getCropOptions() {
        CropImageOptions cropImageOptions = new CropImageOptions(false, false, null, null, 0.0f, 0.0f, 0.0f, null, null, false, false, false, 0, false, false, false, false, 0, 0.0f, false, 0, 0, 0.0f, 0, 0.0f, 0.0f, 0.0f, 0, 0, 0.0f, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, 0.0f, 0, null, 0, null, null, null, null, -1, -1, 63, null);
        cropImageOptions.allowFlipping = true;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        cropImageOptions.activityBackgroundColor = ContextExtKt.getColorFromAttr$default(contextRequireContext, R.attr.topBackground, null, false, 6, null);
        cropImageOptions.toolbarBackButtonColor = Integer.valueOf(ContextCompat.getColor(requireContext(), R.color.fdPrimary));
        cropImageOptions.activityMenuTextColor = Integer.valueOf(ContextCompat.getColor(requireContext(), R.color.fdSecondary));
        return cropImageOptions;
    }

    private final void checkPermission() {
        boolean z;
        SavedStateHandle savedStateHandle;
        MutableLiveData liveData;
        CameraPermissionFragment.Companion companion = CameraPermissionFragment.INSTANCE;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        boolean zIsStoragePermissionGranted = companion.isStoragePermissionGranted(fragmentActivityRequireActivity);
        boolean z2 = true;
        if (zIsStoragePermissionGranted) {
            getLastImageFromGallery();
            z = false;
        } else {
            z = true;
        }
        CameraPermissionFragment.Companion companion2 = CameraPermissionFragment.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        if (companion2.isCameraPermissionGranted(contextRequireContext)) {
            startCamera();
            z2 = z;
        }
        if (z2) {
            CameraFragment cameraFragment = this;
            NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(cameraFragment).getCurrentBackStackEntry();
            if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null && (liveData = savedStateHandle.getLiveData(CameraPermissionFragment.PERMISSION_GRANTED_KEY)) != null) {
                liveData.observe(getViewLifecycleOwner(), new CameraFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.fragments.CameraFragment$$ExternalSyntheticLambda1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return CameraFragment.checkPermission$lambda$0(this.f$0, (Boolean) obj);
                    }
                }));
            }
            NavControllerExtensionKt.openModal$default(FragmentKt.findNavController(cameraFragment), R.id.cameraPermissionFragment, null, 2, null);
        }
    }

    static final Unit checkPermission$lambda$0(CameraFragment cameraFragment, Boolean bool) {
        if (!bool.booleanValue()) {
            FragmentKt.findNavController(cameraFragment).navigateUp();
        } else {
            cameraFragment.startCamera();
        }
        return Unit.INSTANCE;
    }

    static final void cropImage$lambda$0(final CameraFragment cameraFragment, CropImageView.CropResult cropResult) {
        if (cropResult.isSuccessful()) {
            Uri uriContent = cropResult.getUriContent();
            FragmentManager supportFragmentManager = cameraFragment.requireActivity().getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            TextRecognitionTranslatorFragment textRecognitionTranslatorFragment = new TextRecognitionTranslatorFragment();
            textRecognitionTranslatorFragment.setImageUrl(String.valueOf(uriContent));
            Bundle bundleBundleOf = BundleKt.bundleOf();
            bundleBundleOf.putString(TextRecognitionTranslatorFragmentKt.IMAGE_URL, textRecognitionTranslatorFragment.getImageUrl());
            textRecognitionTranslatorFragment.setArguments(bundleBundleOf);
            textRecognitionTranslatorFragment.show(supportFragmentManager, "");
            textRecognitionTranslatorFragment.setOnDismissed(new Function0() { // from class: fast.dic.dict.fragments.CameraFragment$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CameraFragment.cropImage$lambda$0$0$1(this.f$0);
                }
            });
            cameraFragment.stopCamera();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit cropImage$lambda$0$0$1(CameraFragment cameraFragment) {
        cameraFragment.startCamera();
        return Unit.INSTANCE;
    }

    private final void openFlashLight(boolean on) {
        CameraInternal camera;
        CameraControl cameraControl;
        if (requireContext().getPackageManager().hasSystemFeature("android.hardware.camera.flash")) {
            Preview preview = this.cameraPreview;
            if (preview != null && (camera = preview.getCamera()) != null && (cameraControl = camera.getCameraControl()) != null) {
                cameraControl.enableTorch(on);
            }
            ImageCapture imageCapture = this.imageCapture;
            if (imageCapture != null && imageCapture.getFlashMode() == 1) {
                ImageCapture imageCapture2 = this.imageCapture;
                if (imageCapture2 != null) {
                    imageCapture2.setFlashMode(2);
                }
            } else {
                ImageCapture imageCapture3 = this.imageCapture;
                if (imageCapture3 != null) {
                    imageCapture3.setFlashMode(1);
                }
            }
            changeFlashIcon();
        }
    }

    private final void startCamera() {
        FragmentCameraBinding fragmentCameraBinding = this.binding;
        if (fragmentCameraBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentCameraBinding = null;
        }
        fragmentCameraBinding.cameraPreview.setScaleType(PreviewView.ScaleType.FILL_START);
        this.imageCapture = new ImageCapture.Builder().build();
        ProcessCameraProvider.Companion companion = ProcessCameraProvider.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        final ListenableFuture<ProcessCameraProvider> companion2 = companion.getInstance(contextRequireContext);
        companion2.addListener(new Runnable() { // from class: fast.dic.dict.fragments.CameraFragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CameraFragment.startCamera$lambda$0(this.f$0, companion2);
            }
        }, ContextCompat.getMainExecutor(requireContext()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static final void startCamera$lambda$0(CameraFragment cameraFragment, ListenableFuture listenableFuture) {
        ImageCapture imageCapture;
        if (cameraFragment.isAdded()) {
            V v = listenableFuture.get();
            Intrinsics.checkNotNullExpressionValue(v, "get(...)");
            ProcessCameraProvider processCameraProvider = (ProcessCameraProvider) v;
            Preview previewBuild = new Preview.Builder().setTargetRotation(cameraFragment.requireActivity().getResources().getConfiguration().orientation).build();
            FragmentCameraBinding fragmentCameraBinding = cameraFragment.binding;
            if (fragmentCameraBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentCameraBinding = null;
            }
            previewBuild.setSurfaceProvider(fragmentCameraBinding.cameraPreview.getSurfaceProvider());
            cameraFragment.cameraPreview = previewBuild;
            CameraSelector DEFAULT_BACK_CAMERA = CameraSelector.DEFAULT_BACK_CAMERA;
            Intrinsics.checkNotNullExpressionValue(DEFAULT_BACK_CAMERA, "DEFAULT_BACK_CAMERA");
            try {
                ImageCapture imageCapture2 = cameraFragment.imageCapture;
                if ((imageCapture2 != null && imageCapture2.getFlashMode() == -1) || ((imageCapture = cameraFragment.imageCapture) != null && imageCapture.getFlashMode() == 0)) {
                    ImageCapture imageCapture3 = cameraFragment.imageCapture;
                    if (imageCapture3 != null) {
                        imageCapture3.setFlashMode(2);
                    }
                }
                processCameraProvider.unbindAll();
                processCameraProvider.bindToLifecycle(cameraFragment, DEFAULT_BACK_CAMERA, cameraFragment.cameraPreview, cameraFragment.imageCapture);
                cameraFragment.changeFlashIcon();
            } catch (Exception e) {
                LoggerKt.getLogger().error("Use case binding failed " + e, new Object[0]);
            }
        }
    }

    private final void stopCamera() {
        CameraInternal camera;
        CameraInternal camera2;
        Preview preview = this.cameraPreview;
        if (preview != null && (camera2 = preview.getCamera()) != null) {
            camera2.close();
        }
        ImageCapture imageCapture = this.imageCapture;
        if (imageCapture == null || (camera = imageCapture.getCamera()) == null) {
            return;
        }
        camera.close();
    }

    private final void changeFlashIcon() {
        if (!requireContext().getPackageManager().hasSystemFeature("android.hardware.camera.flash")) {
            ContextExtKt.requestForNewMenu(this);
            return;
        }
        Logger logger = LoggerKt.getLogger();
        ImageCapture imageCapture = this.imageCapture;
        logger.debug("########========>>>>> flashMode = " + (imageCapture != null ? Integer.valueOf(imageCapture.getFlashMode()) : null), new Object[0]);
        ContextExtKt.requestForNewMenu(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void takePhoto() {
        ImageCapture imageCapture = this.imageCapture;
        if (imageCapture == null) {
            return;
        }
        getSoundEffect().tapVibration();
        getSoundEffect().playShutterSound();
        String str = new SimpleDateFormat(DATE_FORMAT, Locale.US).format(Long.valueOf(System.currentTimeMillis()));
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", "fast_dictionary_image_translator.jpg-" + str);
        contentValues.put("mime_type", "image/jpeg");
        if (Build.VERSION.SDK_INT > 28) {
            contentValues.put("relative_path", "Pictures/Fastdic-Image");
        }
        ImageCapture.OutputFileOptions outputFileOptionsBuild = new ImageCapture.OutputFileOptions.Builder(requireActivity().getContentResolver(), MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues).build();
        Intrinsics.checkNotNullExpressionValue(outputFileOptionsBuild, "build(...)");
        imageCapture.m1025lambda$takePicture$2$androidxcameracoreImageCapture(outputFileOptionsBuild, ContextCompat.getMainExecutor(requireContext()), new ImageCapture.OnImageSavedCallback() { // from class: fast.dic.dict.fragments.CameraFragment.takePhoto.1
            @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
            public void onError(ImageCaptureException exc) {
                Intrinsics.checkNotNullParameter(exc, "exc");
                LoggerKt.getLogger().error("Photo capture failed: " + exc.getMessage(), new Object[0]);
            }

            @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
            public void onImageSaved(ImageCapture.OutputFileResults output) {
                Intrinsics.checkNotNullParameter(output, "output");
                LoggerKt.getLogger().debug("Photo capture succeeded: " + output.getSavedUri(), new Object[0]);
                Uri savedUri = output.getSavedUri();
                if (savedUri != null && CameraFragment.this.isAdded() && CameraFragment.this.get$lifecycle().getState().isAtLeast(Lifecycle.State.STARTED)) {
                    CameraFragment.this.cropImage.launch(new CropImageContractOptions(savedUri, CameraFragment.this.getCropOptions()));
                }
            }
        });
    }

    private final void getLastImageFromGallery() {
        Uri EXTERNAL_CONTENT_URI = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        Intrinsics.checkNotNullExpressionValue(EXTERNAL_CONTENT_URI, "EXTERNAL_CONTENT_URI");
        Cursor cursorQuery = requireActivity().getContentResolver().query(EXTERNAL_CONTENT_URI, new String[]{"_id", "_data", "bucket_display_name", "datetaken", "mime_type"}, null, null, "datetaken DESC");
        if (cursorQuery != null && cursorQuery.moveToFirst()) {
            RequestBuilder requestBuilderTransform = Glide.with(requireActivity()).load(Uri.withAppendedPath(EXTERNAL_CONTENT_URI, new StringBuilder().append(cursorQuery.getLong(cursorQuery.getColumnIndexOrThrow("_id"))).toString())).transform(new CenterCrop(), new RoundedCorners(12));
            FragmentCameraBinding fragmentCameraBinding = this.binding;
            if (fragmentCameraBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentCameraBinding = null;
            }
            requestBuilderTransform.into(fragmentCameraBinding.galleryIv);
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ExecutorService executorService = this.cameraExecutor;
        if (executorService != null) {
            if (executorService == null) {
                Intrinsics.throwUninitializedPropertyAccessException("cameraExecutor");
                executorService = null;
            }
            executorService.shutdown();
        }
    }

    @Override // androidx.core.view.MenuProvider
    public void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(menuInflater, "menuInflater");
        menu.clear();
        ImageCapture imageCapture = this.imageCapture;
        if (imageCapture != null && imageCapture.getFlashMode() == 1) {
            menuInflater.inflate(R.menu.camera_menu_flash_on, menu);
        } else {
            menuInflater.inflate(R.menu.camera_menu_flash_off, menu);
        }
    }

    @Override // androidx.core.view.MenuProvider
    public boolean onMenuItemSelected(MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.flashOffItem) {
            getSoundEffect().tapVibration();
            openFlashLight(true);
        } else if (itemId == R.id.flashOnItem) {
            getSoundEffect().tapVibration();
            openFlashLight(false);
        }
        return true;
    }
}
