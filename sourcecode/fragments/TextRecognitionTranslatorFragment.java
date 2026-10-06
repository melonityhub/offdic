package fast.dic.dict.fragments;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.ShareCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavController;
import com.alexvasilkov.gestures.Settings;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.google.mlkit.vision.text.Text;
import com.mbridge.msdk.MBridgeConstans;
import com.parse.ParseException;
import com.parse.ParseUser;
import com.startapp.simple.bloomfilter.codec.IOUtils;
import com.trinnguyen.SegmentView;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentTextRecognitionTranslatorBinding;
import fast.dic.dict.helpers.FDSoundEffect;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.ColorsExtKt;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.ImageViewExtensionKt;
import fast.dic.dict.utils.StringExtKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.viewmodels.fragments.TextRecognitionTranslatorViewModel;
import fast.dic.dict.viewmodels.fragments.TextRecognitionTranslatorViewModelState;
import fast.dic.dict.views.GraphicOverlay;
import fast.dic.dict.views.TextGraphic;
import io.bidmachine.unified.UnifiedMediationParams;
import java.io.File;
import java.util.List;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: TextRecognitionTranslatorFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010.\u001a\u00020\u00182\b\u0010/\u001a\u0004\u0018\u000100H\u0016J$\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u0001062\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\b\u00107\u001a\u00020\u0018H\u0016J\u001a\u00108\u001a\u00020\u00182\u0006\u00109\u001a\u0002022\b\u0010/\u001a\u0004\u0018\u000100H\u0016J\b\u0010:\u001a\u00020\u0018H\u0002J\b\u0010;\u001a\u00020\u0018H\u0002J\u0010\u0010<\u001a\u00020\u00182\u0006\u0010=\u001a\u00020>H\u0002J\b\u0010?\u001a\u00020\u0018H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR \u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u000e\u0010\u001d\u001a\u00020\u001eX\u0082.¢\u0006\u0002\n\u0000R#\u0010\u001f\u001a\u00020 8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b%¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u000e\u0010&\u001a\u00020'X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010(\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b*\u0010+Ê\u0001\u0002\bA¨\u0006@"}, d2 = {"Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;", "Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;", "<init>", "()V", "selectedSegment", "", "getSelectedSegment", "()I", "setSelectedSegment", "(I)V", UnifiedMediationParams.KEY_IMAGE_URL, "", "getImageUrl", "()Ljava/lang/String;", "setImageUrl", "(Ljava/lang/String;)V", "originalContent", "getOriginalContent", "setOriginalContent", "translatedContent", "getTranslatedContent", "setTranslatedContent", "onDismissed", "Lkotlin/Function0;", "", "getOnDismissed", "()Lkotlin/jvm/functions/Function0;", "setOnDismissed", "(Lkotlin/jvm/functions/Function0;)V", "bitmapImage", "Landroid/graphics/Bitmap;", "soundEffect", "Lfast/dic/dict/helpers/FDSoundEffect;", "getSoundEffect", "()Lfast/dic/dict/helpers/FDSoundEffect;", "setSoundEffect", "(Lfast/dic/dict/helpers/FDSoundEffect;)V", "Ljavax/inject/Inject;", "binding", "Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;", "viewModel", "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;", "getViewModel", "()Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "dismiss", "onViewCreated", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "loadBitmapImage", "configureGestureView", "generateOverlayViews", "data", "Lfast/dic/dict/viewmodels/fragments/TextRecognitionTranslatorViewModelState$Data;", "clearUI", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class TextRecognitionTranslatorFragment extends Hilt_TextRecognitionTranslatorFragment {
    private FragmentTextRecognitionTranslatorBinding binding;
    private Bitmap bitmapImage;
    private String imageUrl;
    private Function0<Unit> onDismissed;
    private String originalContent;
    private int selectedSegment;

    @Inject
    public FDSoundEffect soundEffect;
    private String translatedContent;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public TextRecognitionTranslatorFragment() {
        super(false);
        this.originalContent = "";
        this.translatedContent = "";
        this.onDismissed = new Function0() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        final TextRecognitionTranslatorFragment textRecognitionTranslatorFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return textRecognitionTranslatorFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(textRecognitionTranslatorFragment, Reflection.getOrCreateKotlinClass(TextRecognitionTranslatorViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                if (function2 != null && (creationExtras = (CreationExtras) function2.invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = textRecognitionTranslatorFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    public final int getSelectedSegment() {
        return this.selectedSegment;
    }

    public final void setSelectedSegment(int i) {
        this.selectedSegment = i;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public final String getOriginalContent() {
        return this.originalContent;
    }

    public final void setOriginalContent(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.originalContent = str;
    }

    public final String getTranslatedContent() {
        return this.translatedContent;
    }

    public final void setTranslatedContent(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.translatedContent = str;
    }

    public final Function0<Unit> getOnDismissed() {
        return this.onDismissed;
    }

    public final void setOnDismissed(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onDismissed = function0;
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

    /* JADX INFO: Access modifiers changed from: private */
    public final TextRecognitionTranslatorViewModel getViewModel() {
        return (TextRecognitionTranslatorViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: onCreate */
    public void m1358lambda$performCreate$3$androidxfragmentappFragment(Bundle savedInstanceState) {
        Uri data;
        super.m1358lambda$performCreate$3$androidxfragmentappFragment(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString(TextRecognitionTranslatorFragmentKt.IMAGE_URL, null);
            this.imageUrl = string;
            if (string == null) {
                Intent intent = (Intent) arguments.getParcelable(NavController.KEY_DEEP_LINK_INTENT);
                String encodedQuery = (intent == null || (data = intent.getData()) == null) ? null : data.getEncodedQuery();
                this.imageUrl = encodedQuery != null ? StringsKt.replace$default(encodedQuery, "IMAGE_URL=", "", false, 4, (Object) null) : null;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        String string;
        Resources resources;
        String string2;
        Resources resources2;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBindingInflate = FragmentTextRecognitionTranslatorBinding.inflate(inflater);
        Intrinsics.checkNotNullExpressionValue(fragmentTextRecognitionTranslatorBindingInflate, "inflate(...)");
        this.binding = fragmentTextRecognitionTranslatorBindingInflate;
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding = null;
        if (fragmentTextRecognitionTranslatorBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBindingInflate = null;
        }
        fragmentTextRecognitionTranslatorBindingInflate.toolbarView.rightToolbarButton.setImageResource(R.drawable.share_icon);
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding2 = this.binding;
        if (fragmentTextRecognitionTranslatorBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBinding2 = null;
        }
        fragmentTextRecognitionTranslatorBinding2.toolbarView.rightToolbarButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextRecognitionTranslatorFragment.onCreateView$lambda$0(this.f$0, view);
            }
        });
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding3 = this.binding;
        if (fragmentTextRecognitionTranslatorBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBinding3 = null;
        }
        fragmentTextRecognitionTranslatorBinding3.copyFab.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextRecognitionTranslatorFragment.onCreateView$lambda$1(this.f$0, view);
            }
        });
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding4 = this.binding;
        if (fragmentTextRecognitionTranslatorBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBinding4 = null;
        }
        fragmentTextRecognitionTranslatorBinding4.toolbarView.leftToolbarButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding5 = this.binding;
        if (fragmentTextRecognitionTranslatorBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBinding5 = null;
        }
        SegmentView segmentView = fragmentTextRecognitionTranslatorBinding5.segmentedView;
        Context context = getContext();
        String str = "";
        if (context == null || (resources2 = context.getResources()) == null || (string = resources2.getString(R.string.translation)) == null) {
            string = "";
        }
        segmentView.setText(0, string);
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding6 = this.binding;
        if (fragmentTextRecognitionTranslatorBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBinding6 = null;
        }
        SegmentView segmentView2 = fragmentTextRecognitionTranslatorBinding6.segmentedView;
        Context context2 = getContext();
        if (context2 != null && (resources = context2.getResources()) != null && (string2 = resources.getString(R.string.original_content)) != null) {
            str = string2;
        }
        segmentView2.setText(1, str);
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding7 = this.binding;
        if (fragmentTextRecognitionTranslatorBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBinding7 = null;
        }
        fragmentTextRecognitionTranslatorBinding7.segmentedView.setOnSegmentItemSelectedListener(new SegmentView.OnSegmentItemSelectedListener() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment.onCreateView.4
            @Override // com.trinnguyen.SegmentView.OnSegmentItemSelectedListener
            public void onSegmentItemReselected(int index) {
            }

            @Override // com.trinnguyen.SegmentView.OnSegmentItemSelectedListener
            public void onSegmentItemSelected(int index) {
                TextRecognitionTranslatorFragment textRecognitionTranslatorFragment = TextRecognitionTranslatorFragment.this;
                if (index == 0) {
                    textRecognitionTranslatorFragment.setSelectedSegment(0);
                    FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding8 = TextRecognitionTranslatorFragment.this.binding;
                    if (fragmentTextRecognitionTranslatorBinding8 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentTextRecognitionTranslatorBinding8 = null;
                    }
                    GraphicOverlay graphicOverlay = fragmentTextRecognitionTranslatorBinding8.graphicOverlay;
                    Intrinsics.checkNotNullExpressionValue(graphicOverlay, "graphicOverlay");
                    ViewExtKt.showMe$default(graphicOverlay, 0L, 1, null);
                    return;
                }
                textRecognitionTranslatorFragment.setSelectedSegment(1);
                FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding9 = TextRecognitionTranslatorFragment.this.binding;
                if (fragmentTextRecognitionTranslatorBinding9 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentTextRecognitionTranslatorBinding9 = null;
                }
                GraphicOverlay graphicOverlay2 = fragmentTextRecognitionTranslatorBinding9.graphicOverlay;
                Intrinsics.checkNotNullExpressionValue(graphicOverlay2, "graphicOverlay");
                ViewExtKt.hideMe$default(graphicOverlay2, 0L, 1, null);
            }
        });
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding8 = this.binding;
        if (fragmentTextRecognitionTranslatorBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentTextRecognitionTranslatorBinding = fragmentTextRecognitionTranslatorBinding8;
        }
        ConstraintLayout root = fragmentTextRecognitionTranslatorBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final void onCreateView$lambda$0(TextRecognitionTranslatorFragment textRecognitionTranslatorFragment, View view) {
        textRecognitionTranslatorFragment.getSoundEffect().tapVibration();
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding = textRecognitionTranslatorFragment.binding;
        if (fragmentTextRecognitionTranslatorBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBinding = null;
        }
        RelativeLayout overlayContainer = fragmentTextRecognitionTranslatorBinding.overlayContainer;
        Intrinsics.checkNotNullExpressionValue(overlayContainer, "overlayContainer");
        Bitmap bitmap = ViewExtKt.getBitmap(overlayContainer);
        TextRecognitionTranslatorViewModel viewModel = textRecognitionTranslatorFragment.getViewModel();
        File cacheDir = textRecognitionTranslatorFragment.requireContext().getCacheDir();
        Intrinsics.checkNotNullExpressionValue(cacheDir, "getCacheDir(...)");
        File fileStoreImageToDirectory = viewModel.storeImageToDirectory(bitmap, cacheDir, "share_image_translator.jpg");
        Context contextRequireContext = textRecognitionTranslatorFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        new ShareCompat.IntentBuilder(textRecognitionTranslatorFragment.requireContext()).setStream(ImageViewExtensionKt.getSavedFileProviderUri(fileStoreImageToDirectory, contextRequireContext)).setType("image/*").startChooser();
    }

    static final void onCreateView$lambda$1(TextRecognitionTranslatorFragment textRecognitionTranslatorFragment, View view) {
        textRecognitionTranslatorFragment.getSoundEffect().tapVibration();
        String str = textRecognitionTranslatorFragment.selectedSegment == 0 ? textRecognitionTranslatorFragment.translatedContent : textRecognitionTranslatorFragment.originalContent;
        Object systemService = ContextCompat.getSystemService(textRecognitionTranslatorFragment.requireContext(), ClipboardManager.class);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
        ClipData clipDataNewPlainText = ClipData.newPlainText("Fast Dictionary", str);
        Intrinsics.checkNotNullExpressionValue(clipDataNewPlainText, "newPlainText(...)");
        ((ClipboardManager) systemService).setPrimaryClip(clipDataNewPlainText);
        if (textRecognitionTranslatorFragment.selectedSegment == 0) {
            Toast.makeText(textRecognitionTranslatorFragment.requireContext(), textRecognitionTranslatorFragment.getString(R.string.translated_content_successfully_copied), 0).show();
        } else {
            Toast.makeText(textRecognitionTranslatorFragment.requireContext(), textRecognitionTranslatorFragment.getString(R.string.original_content_successfully_copied), 0).show();
        }
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        super.dismiss();
        this.onDismissed.invoke();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) throws ParseException {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null || !fDParseUser.isAuthenticated() || !fDParseUser.hasPlan2Or3()) {
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            LocalStorage localStorage = new LocalStorage(contextRequireContext);
            int imageTranslatorLimitation = localStorage.getImageTranslatorLimitation();
            if (imageTranslatorLimitation <= 0) {
                localStorage.setImageTranslatorLimitation(0);
                dismiss();
                return;
            }
            localStorage.setImageTranslatorLimitation(imageTranslatorLimitation - 1);
        }
        getViewModel().getState().observe(getViewLifecycleOwner(), new TextRecognitionTranslatorFragmentKt$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TextRecognitionTranslatorFragment.onViewCreated$lambda$0(this.f$0, (TextRecognitionTranslatorViewModelState) obj);
            }
        }));
        loadBitmapImage();
        configureGestureView();
    }

    static final Unit onViewCreated$lambda$0(TextRecognitionTranslatorFragment textRecognitionTranslatorFragment, TextRecognitionTranslatorViewModelState textRecognitionTranslatorViewModelState) {
        if (textRecognitionTranslatorViewModelState instanceof TextRecognitionTranslatorViewModelState.Clear) {
            textRecognitionTranslatorFragment.clearUI();
        } else if (textRecognitionTranslatorViewModelState instanceof TextRecognitionTranslatorViewModelState.Data) {
            textRecognitionTranslatorFragment.generateOverlayViews((TextRecognitionTranslatorViewModelState.Data) textRecognitionTranslatorViewModelState);
        }
        return Unit.INSTANCE;
    }

    private final void loadBitmapImage() {
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding = this.binding;
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding2 = null;
        if (fragmentTextRecognitionTranslatorBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBinding = null;
        }
        fragmentTextRecognitionTranslatorBinding.loadingSpinner.setVisibility(0);
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding3 = this.binding;
        if (fragmentTextRecognitionTranslatorBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentTextRecognitionTranslatorBinding2 = fragmentTextRecognitionTranslatorBinding3;
        }
        fragmentTextRecognitionTranslatorBinding2.placeholderView.setVisibility(0);
        Glide.with(this).asBitmap().load(this.imageUrl).into(new CustomTarget<Bitmap>() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment.loadBitmapImage.1
            @Override // com.bumptech.glide.request.target.Target
            public void onLoadCleared(Drawable placeholder) {
            }

            @Override // com.bumptech.glide.request.target.Target
            public /* bridge */ /* synthetic */ void onResourceReady(Object obj, Transition transition) {
                onResourceReady((Bitmap) obj, (Transition<? super Bitmap>) transition);
            }

            public void onResourceReady(Bitmap resource, Transition<? super Bitmap> transition) {
                Intrinsics.checkNotNullParameter(resource, "resource");
                TextRecognitionTranslatorFragment.this.bitmapImage = resource;
                TextRecognitionTranslatorFragment.this.getViewModel().recognizeTextFromImageAndTranslate(resource);
                FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding4 = TextRecognitionTranslatorFragment.this.binding;
                if (fragmentTextRecognitionTranslatorBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentTextRecognitionTranslatorBinding4 = null;
                }
                fragmentTextRecognitionTranslatorBinding4.placeholderView.setVisibility(8);
            }
        });
    }

    private final void configureGestureView() {
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding = this.binding;
        if (fragmentTextRecognitionTranslatorBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBinding = null;
        }
        fragmentTextRecognitionTranslatorBinding.gestureView.getController().getSettings().setMaxZoom(2.0f).setDoubleTapZoom(-1.0f).setPanEnabled(true).setZoomEnabled(true).setDoubleTapEnabled(true).setRotationEnabled(false).setRestrictRotation(false).setOverscrollDistance(0.0f, 0.0f).setOverzoomFactor(2.0f).setFillViewport(false).setFitMethod(Settings.Fit.INSIDE).setGravity(17);
    }

    private final void generateOverlayViews(TextRecognitionTranslatorViewModelState.Data data) {
        List<Text.TextBlock> blocks = data.getBlocks();
        List<String> translates = data.getTranslates();
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding = this.binding;
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding2 = null;
        if (fragmentTextRecognitionTranslatorBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBinding = null;
        }
        GraphicOverlay graphicOverlay = fragmentTextRecognitionTranslatorBinding.graphicOverlay;
        Intrinsics.checkNotNullExpressionValue(graphicOverlay, "graphicOverlay");
        int i = R.attr.labelTextColor;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        int color = ColorsExtKt.toColor(i, contextRequireContext);
        int i2 = R.attr.translatorTransparentBackground;
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        int color2 = ColorsExtKt.toColor(i2, contextRequireContext2);
        this.translatedContent = CollectionsKt.joinToString$default(translates, IOUtils.LINE_SEPARATOR_UNIX, null, null, 0, null, null, 62, null);
        this.originalContent = CollectionsKt.joinToString$default(data.getBlocks(), IOUtils.LINE_SEPARATOR_UNIX, null, null, 0, null, new Function1() { // from class: fast.dic.dict.fragments.TextRecognitionTranslatorFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TextRecognitionTranslatorFragment.generateOverlayViews$lambda$0((Text.TextBlock) obj);
            }
        }, 30, null);
        GraphicOverlay graphicOverlay2 = graphicOverlay;
        ViewExtKt.hideMeNow(graphicOverlay2);
        int i3 = 0;
        for (Object obj : blocks) {
            int i4 = i3 + 1;
            if (i3 < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Text.TextBlock textBlock = (Text.TextBlock) obj;
            String strReplaceNumbersToFarsi = FDLanguageWord.INSTANCE.replaceNumbersToFarsi(translates.get(i3));
            List<String> listTransformTextToLine = StringExtKt.transformTextToLine(strReplaceNumbersToFarsi, StringExtKt.words(strReplaceNumbersToFarsi).size() / textBlock.getLines().size());
            Rect boundingBox = textBlock.getBoundingBox();
            List<Text.Line> lines = textBlock.getLines();
            Intrinsics.checkNotNullExpressionValue(lines, "getLines(...)");
            graphicOverlay.add(new TextGraphic(graphicOverlay, null, color2, color, boundingBox, strReplaceNumbersToFarsi, listTransformTextToLine, lines));
            i3 = i4;
        }
        ViewExtKt.showMe$default(graphicOverlay2, 0L, 1, null);
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding3 = this.binding;
        if (fragmentTextRecognitionTranslatorBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentTextRecognitionTranslatorBinding2 = fragmentTextRecognitionTranslatorBinding3;
        }
        fragmentTextRecognitionTranslatorBinding2.loadingSpinner.setVisibility(8);
    }

    static final CharSequence generateOverlayViews$lambda$0(Text.TextBlock it) {
        Intrinsics.checkNotNullParameter(it, "it");
        String text = it.getText();
        Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
        return text;
    }

    private final void clearUI() {
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding = this.binding;
        Bitmap bitmap = null;
        if (fragmentTextRecognitionTranslatorBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBinding = null;
        }
        fragmentTextRecognitionTranslatorBinding.graphicOverlay.clear();
        FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding2 = this.binding;
        if (fragmentTextRecognitionTranslatorBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentTextRecognitionTranslatorBinding2 = null;
        }
        fragmentTextRecognitionTranslatorBinding2.loadingSpinner.setVisibility(0);
        if (this.bitmapImage != null) {
            FragmentTextRecognitionTranslatorBinding fragmentTextRecognitionTranslatorBinding3 = this.binding;
            if (fragmentTextRecognitionTranslatorBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentTextRecognitionTranslatorBinding3 = null;
            }
            ImageView imageView = fragmentTextRecognitionTranslatorBinding3.imageView;
            Bitmap bitmap2 = this.bitmapImage;
            if (bitmap2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("bitmapImage");
            } else {
                bitmap = bitmap2;
            }
            imageView.setImageBitmap(bitmap);
        }
    }
}
