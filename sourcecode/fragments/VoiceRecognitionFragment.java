package fast.dic.dict.fragments;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import com.mbridge.msdk.MBridgeConstans;
import com.trinnguyen.SegmentView;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentVoiceRecognitionBinding;
import fast.dic.dict.fragments.onboardings.MicrophonePermissionFragment;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.PermissionUtilsKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.SiriVisualView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: VoiceRecognitionFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\b\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010\u0019\u001a\u00020\u0017H\u0016J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0017H\u0002J\u0010\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 H\u0002J\b\u0010!\u001a\u00020\u0017H\u0002J\b\u0010\"\u001a\u00020\u0017H\u0002J\b\u0010#\u001a\u00020\u0017H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bÊ\u0001\u0002\b&¨\u0006%"}, d2 = {"Lfast/dic/dict/fragments/VoiceRecognitionFragment;", "Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;", "<init>", "()V", "sentence", "", "binding", "Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;", "viewModel", "Lfast/dic/dict/fragments/VoiceRecognitionViewModel;", "getViewModel", "()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onDestroy", "onDismiss", "dialog", "Landroid/content/DialogInterface;", "loadWaveView", "updateWaveView", "value", "", "configureLanguageView", "startListening", "checkMicPermissionAndStart", "Companion", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class VoiceRecognitionFragment extends Hilt_VoiceRecognitionFragment {
    public static final String DETECTED_SENTENCE_KEY = "detected_sentence_key";
    private FragmentVoiceRecognitionBinding binding;
    private String sentence;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public VoiceRecognitionFragment() {
        super(true);
        final VoiceRecognitionFragment voiceRecognitionFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return voiceRecognitionFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(voiceRecognitionFragment, Reflection.getOrCreateKotlinClass(VoiceRecognitionViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = voiceRecognitionFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final VoiceRecognitionViewModel getViewModel() {
        return (VoiceRecognitionViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBindingInflate = FragmentVoiceRecognitionBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentVoiceRecognitionBindingInflate, "inflate(...)");
        this.binding = fragmentVoiceRecognitionBindingInflate;
        if (fragmentVoiceRecognitionBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVoiceRecognitionBindingInflate = null;
        }
        RelativeLayout root = fragmentVoiceRecognitionBindingInflate.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        SavedStateHandle savedStateHandle;
        MutableLiveData liveData;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        loadWaveView();
        configureLanguageView();
        checkMicPermissionAndStart();
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding = this.binding;
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding2 = null;
        if (fragmentVoiceRecognitionBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVoiceRecognitionBinding = null;
        }
        ImageButton rightToolbarButton = fragmentVoiceRecognitionBinding.toolbarView.rightToolbarButton;
        Intrinsics.checkNotNullExpressionValue(rightToolbarButton, "rightToolbarButton");
        ViewExtKt.hideMeNow(rightToolbarButton);
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding3 = this.binding;
        if (fragmentVoiceRecognitionBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVoiceRecognitionBinding3 = null;
        }
        fragmentVoiceRecognitionBinding3.toolbarView.leftToolbarButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.dismiss();
            }
        });
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding4 = this.binding;
        if (fragmentVoiceRecognitionBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVoiceRecognitionBinding4 = null;
        }
        fragmentVoiceRecognitionBinding4.micButtonFab.setTag(true);
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding5 = this.binding;
        if (fragmentVoiceRecognitionBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentVoiceRecognitionBinding2 = fragmentVoiceRecognitionBinding5;
        }
        fragmentVoiceRecognitionBinding2.micButtonFab.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                VoiceRecognitionFragment.onViewCreated$lambda$1(this.f$0, view2);
            }
        });
        NavBackStackEntry previousBackStackEntry = FragmentKt.findNavController(this).getPreviousBackStackEntry();
        if (previousBackStackEntry != null && (savedStateHandle = previousBackStackEntry.getSavedStateHandle()) != null && (liveData = savedStateHandle.getLiveData(MicrophonePermissionFragment.PERMISSION_GRANTED_KEY)) != null) {
            liveData.observe(getViewLifecycleOwner(), new VoiceRecognitionFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return VoiceRecognitionFragment.onViewCreated$lambda$2(this.f$0, (Boolean) obj);
                }
            }));
        }
        getViewModel().getDetectedSentence().observe(getViewLifecycleOwner(), new VoiceRecognitionFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VoiceRecognitionFragment.onViewCreated$lambda$3(this.f$0, (String) obj);
            }
        }));
        getViewModel().getRms().observe(getViewLifecycleOwner(), new VoiceRecognitionFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VoiceRecognitionFragment.onViewCreated$lambda$4(this.f$0, (Float) obj);
            }
        }));
        getViewModel().isListening().observe(getViewLifecycleOwner(), new VoiceRecognitionFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return VoiceRecognitionFragment.onViewCreated$lambda$5(this.f$0, (Boolean) obj);
            }
        }));
    }

    static final void onViewCreated$lambda$1(VoiceRecognitionFragment voiceRecognitionFragment, View view) {
        Boolean value = voiceRecognitionFragment.getViewModel().isListening().getValue();
        if (value != null ? value.booleanValue() : false) {
            voiceRecognitionFragment.getViewModel().stop();
        } else {
            voiceRecognitionFragment.startListening();
        }
    }

    static final Unit onViewCreated$lambda$2(final VoiceRecognitionFragment voiceRecognitionFragment, Boolean bool) {
        SavedStateHandle savedStateHandle;
        LoggerKt.getLogger().debug("VoiceRecognitionFragment observe on mic permission called with " + bool, new Object[0]);
        if (!bool.booleanValue()) {
            new Handler(voiceRecognitionFragment.requireContext().getMainLooper()).postDelayed(new Runnable() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    VoiceRecognitionFragment.onViewCreated$lambda$2$0(this.f$0);
                }
            }, 200L);
            return Unit.INSTANCE;
        }
        Context contextRequireContext = voiceRecognitionFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        if (PermissionUtilsKt.hasRecordAudioPermission(contextRequireContext)) {
            voiceRecognitionFragment.startListening();
        }
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(voiceRecognitionFragment).getCurrentBackStackEntry();
        if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null) {
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$2$0(VoiceRecognitionFragment voiceRecognitionFragment) {
        if (voiceRecognitionFragment.isAdded()) {
            FragmentKt.findNavController(voiceRecognitionFragment).navigateUp();
        }
    }

    static final Unit onViewCreated$lambda$3(VoiceRecognitionFragment voiceRecognitionFragment, String str) {
        String str2 = str;
        if (str2 != null && !StringsKt.isBlank(str2)) {
            voiceRecognitionFragment.sentence = str;
            voiceRecognitionFragment.dismiss();
        }
        return Unit.INSTANCE;
    }

    static final Unit onViewCreated$lambda$4(VoiceRecognitionFragment voiceRecognitionFragment, Float f) {
        Intrinsics.checkNotNull(f);
        voiceRecognitionFragment.updateWaveView(f.floatValue());
        return Unit.INSTANCE;
    }

    static final Unit onViewCreated$lambda$5(VoiceRecognitionFragment voiceRecognitionFragment, Boolean bool) {
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding = voiceRecognitionFragment.binding;
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding2 = null;
        if (fragmentVoiceRecognitionBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVoiceRecognitionBinding = null;
        }
        fragmentVoiceRecognitionBinding.micButtonFab.setTag(bool);
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding3 = voiceRecognitionFragment.binding;
        if (fragmentVoiceRecognitionBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVoiceRecognitionBinding3 = null;
        }
        SiriVisualView siriVisualView = fragmentVoiceRecognitionBinding3.waveView;
        Intrinsics.checkNotNull(bool);
        siriVisualView.updateSpeaking(bool.booleanValue());
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding4 = voiceRecognitionFragment.binding;
        if (fragmentVoiceRecognitionBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentVoiceRecognitionBinding2 = fragmentVoiceRecognitionBinding4;
        }
        fragmentVoiceRecognitionBinding2.micButtonFab.setImageResource(bool.booleanValue() ? R.drawable.stop_icon : R.drawable.mic_light);
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getViewModel().stop();
    }

    @Override // fast.dic.dict.fragments.FullscreenBottomSheetFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        SavedStateHandle savedStateHandle;
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        getViewModel().stop();
        Logger logger = LoggerKt.getLogger();
        VoiceRecognitionFragment voiceRecognitionFragment = this;
        NavBackStackEntry previousBackStackEntry = FragmentKt.findNavController(voiceRecognitionFragment).getPreviousBackStackEntry();
        NavBackStackEntry previousBackStackEntry2 = FragmentKt.findNavController(voiceRecognitionFragment).getPreviousBackStackEntry();
        logger.debug("onDismiss called findNavController().previousBackStackEntry=" + previousBackStackEntry + ", findNavController().previousBackStackEntry?.savedStateHandle=" + (previousBackStackEntry2 != null ? previousBackStackEntry2.getSavedStateHandle() : null), new Object[0]);
        NavBackStackEntry previousBackStackEntry3 = FragmentKt.findNavController(voiceRecognitionFragment).getPreviousBackStackEntry();
        if (previousBackStackEntry3 != null && (savedStateHandle = previousBackStackEntry3.getSavedStateHandle()) != null) {
            savedStateHandle.set(DETECTED_SENTENCE_KEY, this.sentence);
        }
        super.onDismiss(dialog);
    }

    private final void loadWaveView() {
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding = this.binding;
        if (fragmentVoiceRecognitionBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVoiceRecognitionBinding = null;
        }
        SiriVisualView siriVisualView = fragmentVoiceRecognitionBinding.waveView;
        siriVisualView.updateSpeaking(false);
        siriVisualView.updatePrimaryViewColor(ContextCompat.getColor(requireContext(), R.color.fdSecondary));
        siriVisualView.updateSecondaryViewColor(ContextCompat.getColor(requireContext(), R.color.fdPrimary));
        siriVisualView.updateAmplitude(0.0f);
        siriVisualView.updateSpeed(-0.1f);
    }

    private final void updateWaveView(float value) {
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding = this.binding;
        if (fragmentVoiceRecognitionBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVoiceRecognitionBinding = null;
        }
        SiriVisualView siriVisualView = fragmentVoiceRecognitionBinding.waveView;
        siriVisualView.updateSpeaking(true);
        siriVisualView.updateAmplitude(value / 10.0f);
    }

    private final void configureLanguageView() {
        String string;
        Resources resources;
        String string2;
        Resources resources2;
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding = this.binding;
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding2 = null;
        if (fragmentVoiceRecognitionBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVoiceRecognitionBinding = null;
        }
        SegmentView segmentView = fragmentVoiceRecognitionBinding.segmentedView;
        Context context = getContext();
        String str = "";
        if (context == null || (resources2 = context.getResources()) == null || (string = resources2.getString(R.string.english)) == null) {
            string = "";
        }
        segmentView.setText(0, string);
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding3 = this.binding;
        if (fragmentVoiceRecognitionBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVoiceRecognitionBinding3 = null;
        }
        SegmentView segmentView2 = fragmentVoiceRecognitionBinding3.segmentedView;
        Context context2 = getContext();
        if (context2 != null && (resources = context2.getResources()) != null && (string2 = resources.getString(R.string.persian)) != null) {
            str = string2;
        }
        segmentView2.setText(1, str);
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding4 = this.binding;
        if (fragmentVoiceRecognitionBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentVoiceRecognitionBinding2 = fragmentVoiceRecognitionBinding4;
        }
        fragmentVoiceRecognitionBinding2.segmentedView.setOnSegmentItemSelectedListener(new SegmentView.OnSegmentItemSelectedListener() { // from class: fast.dic.dict.fragments.VoiceRecognitionFragment.configureLanguageView.1
            @Override // com.trinnguyen.SegmentView.OnSegmentItemSelectedListener
            public void onSegmentItemReselected(int index) {
            }

            @Override // com.trinnguyen.SegmentView.OnSegmentItemSelectedListener
            public void onSegmentItemSelected(int index) {
                FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding5 = VoiceRecognitionFragment.this.binding;
                FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding6 = null;
                if (fragmentVoiceRecognitionBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentVoiceRecognitionBinding5 = null;
                }
                int selectedIndex = fragmentVoiceRecognitionBinding5.segmentedView.getSelectedIndex();
                VoiceRecognitionFragment voiceRecognitionFragment = VoiceRecognitionFragment.this;
                if (selectedIndex == 0) {
                    FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding7 = voiceRecognitionFragment.binding;
                    if (fragmentVoiceRecognitionBinding7 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentVoiceRecognitionBinding6 = fragmentVoiceRecognitionBinding7;
                    }
                    fragmentVoiceRecognitionBinding6.sentenceView.setText(VoiceRecognitionFragment.this.getString(R.string.placeholder_for_mic));
                } else {
                    FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding8 = voiceRecognitionFragment.binding;
                    if (fragmentVoiceRecognitionBinding8 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentVoiceRecognitionBinding6 = fragmentVoiceRecognitionBinding8;
                    }
                    fragmentVoiceRecognitionBinding6.sentenceView.setText(VoiceRecognitionFragment.this.getString(R.string.placeholder_for_mic_pe));
                }
                VoiceRecognitionFragment.this.getViewModel().stop();
                VoiceRecognitionFragment.this.startListening();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startListening() {
        FragmentVoiceRecognitionBinding fragmentVoiceRecognitionBinding = this.binding;
        if (fragmentVoiceRecognitionBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentVoiceRecognitionBinding = null;
        }
        getViewModel().start(fragmentVoiceRecognitionBinding.segmentedView.getSelectedIndex() == 1 ? "fa-IR" : "en-US");
    }

    private final void checkMicPermissionAndStart() {
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        if (PermissionUtilsKt.hasRecordAudioPermission(contextRequireContext)) {
            startListening();
        } else {
            NavControllerExtensionKt.openModal$default(FragmentKt.findNavController(this), R.id.microphonePermissionFragment, null, 2, null);
        }
    }
}
