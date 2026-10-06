package fast.dic.dict.presentation.fullscreen_modal;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.divider.MaterialDivider;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentFullscreenModalBinding;
import fast.dic.dict.p000const.ConstKt;
import fast.dic.dict.presentation.login_screen.LoginSignupFragment;
import fast.dic.dict.services.FDAds;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.ViewExtKt;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: FullscreenModal.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001Bw\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0010\u0010\u0011J$\u00105\u001a\u0002062\u0006\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010:2\b\u0010;\u001a\u0004\u0018\u00010<H\u0016J\u0010\u0010=\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u0003H\u0002J\u0010\u0010?\u001a\u00020\u000b2\u0006\u0010@\u001a\u00020AH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0014R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0014R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR5\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u000b0\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u000e\u0010%\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R#\u0010&\u001a\u00020'8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b,¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R#\u0010-\u001a\u00020.8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b,¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u000e\u00103\u001a\u000204X\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\bC¨\u0006B"}, d2 = {"Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;", "Lfast/dic/dict/bases/BaseFragment;", "isError", "", "title", "", "description", "ctaTitle", "ctaAction", "dismissed", "Lkotlin/Function0;", "", "secondCtaTitle", "secondCtaAction", "secondCtaValue", "Lfast/dic/dict/services/FDAds$AdForFeature;", "<init>", "(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/services/FDAds$AdForFeature;)V", "()Z", "getTitle", "()Ljava/lang/String;", "getDescription", "getCtaTitle", "getCtaAction", "getSecondCtaTitle", "getSecondCtaAction", "getSecondCtaValue", "()Lfast/dic/dict/services/FDAds$AdForFeature;", "onDismissed", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "cta", "getOnDismissed", "()Lkotlin/jvm/functions/Function1;", "setOnDismissed", "(Lkotlin/jvm/functions/Function1;)V", "withAction", "fdAds", "Lfast/dic/dict/services/FDAds;", "getFdAds", "()Lfast/dic/dict/services/FDAds;", "setFdAds", "(Lfast/dic/dict/services/FDAds;)V", "Ljavax/inject/Inject;", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "getLocalStorage", "()Lfast/dic/dict/database/LocalStorage;", "setLocalStorage", "(Lfast/dic/dict/database/LocalStorage;)V", "binding", "Lfast/dic/dict/databinding/FragmentFullscreenModalBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "setLoadingState", "isLoading", "onDismiss", "dialog", "Landroid/content/DialogInterface;", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class FullscreenModal extends Hilt_FullscreenModal {
    private FragmentFullscreenModalBinding binding;
    private final String ctaAction;
    private final String ctaTitle;
    private final String description;
    private final Function0<Unit> dismissed;

    @Inject
    public FDAds fdAds;
    private final boolean isError;

    @Inject
    public LocalStorage localStorage;
    private Function1<? super Boolean, Unit> onDismissed;
    private final String secondCtaAction;
    private final String secondCtaTitle;
    private final FDAds.AdForFeature secondCtaValue;
    private final String title;
    private boolean withAction;

    public FullscreenModal() {
        this(false, null, null, null, null, null, null, null, null, 511, null);
    }

    public FullscreenModal(boolean z, String str, String str2, String str3, String str4, Function0<Unit> function0, String str5, String str6, FDAds.AdForFeature adForFeature) {
        this.isError = z;
        this.title = str;
        this.description = str2;
        this.ctaTitle = str3;
        this.ctaAction = str4;
        this.dismissed = function0;
        this.secondCtaTitle = str5;
        this.secondCtaAction = str6;
        this.secondCtaValue = adForFeature;
        this.onDismissed = new Function1() { // from class: fast.dic.dict.presentation.fullscreen_modal.FullscreenModal$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((Boolean) obj).booleanValue();
                return Unit.INSTANCE;
            }
        };
    }

    public /* synthetic */ FullscreenModal(boolean z, String str, String str2, String str3, String str4, Function0 function0, String str5, String str6, FDAds.AdForFeature adForFeature, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : str4, (i & 32) != 0 ? null : function0, (i & 64) != 0 ? null : str5, (i & 128) != 0 ? null : str6, (i & 256) != 0 ? null : adForFeature);
    }

    /* JADX INFO: renamed from: isError, reason: from getter */
    public final boolean getIsError() {
        return this.isError;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getCtaTitle() {
        return this.ctaTitle;
    }

    public final String getCtaAction() {
        return this.ctaAction;
    }

    public final String getSecondCtaTitle() {
        return this.secondCtaTitle;
    }

    public final String getSecondCtaAction() {
        return this.secondCtaAction;
    }

    public final FDAds.AdForFeature getSecondCtaValue() {
        return this.secondCtaValue;
    }

    public final Function1<Boolean, Unit> getOnDismissed() {
        return this.onDismissed;
    }

    public final void setOnDismissed(Function1<? super Boolean, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onDismissed = function1;
    }

    public final FDAds getFdAds() {
        FDAds fDAds = this.fdAds;
        if (fDAds != null) {
            return fDAds;
        }
        Intrinsics.throwUninitializedPropertyAccessException("fdAds");
        return null;
    }

    public final void setFdAds(FDAds fDAds) {
        Intrinsics.checkNotNullParameter(fDAds, "<set-?>");
        this.fdAds = fDAds;
    }

    public final LocalStorage getLocalStorage() {
        LocalStorage localStorage = this.localStorage;
        if (localStorage != null) {
            return localStorage;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localStorage");
        return null;
    }

    public final void setLocalStorage(LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(localStorage, "<set-?>");
        this.localStorage = localStorage;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        SavedStateHandle savedStateHandle;
        MutableLiveData liveData;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentFullscreenModalBinding fragmentFullscreenModalBindingInflate = FragmentFullscreenModalBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentFullscreenModalBindingInflate, "inflate(...)");
        this.binding = fragmentFullscreenModalBindingInflate;
        FragmentFullscreenModalBinding fragmentFullscreenModalBinding = null;
        if (this.isError) {
            if (fragmentFullscreenModalBindingInflate == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFullscreenModalBindingInflate = null;
            }
            fragmentFullscreenModalBindingInflate.toolbarView.leftToolbarButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.fullscreen_modal.FullscreenModal$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.dismiss();
                }
            });
            FragmentFullscreenModalBinding fragmentFullscreenModalBinding2 = this.binding;
            if (fragmentFullscreenModalBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFullscreenModalBinding2 = null;
            }
            Button thirdBtn = fragmentFullscreenModalBinding2.thirdBtn;
            Intrinsics.checkNotNullExpressionValue(thirdBtn, "thirdBtn");
            ViewExtKt.showMeNow(thirdBtn);
            FragmentFullscreenModalBinding fragmentFullscreenModalBinding3 = this.binding;
            if (fragmentFullscreenModalBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFullscreenModalBinding3 = null;
            }
            ImageButton rightToolbarButton = fragmentFullscreenModalBinding3.toolbarView.rightToolbarButton;
            Intrinsics.checkNotNullExpressionValue(rightToolbarButton, "rightToolbarButton");
            ViewExtKt.hideMeNow(rightToolbarButton);
        } else {
            if (fragmentFullscreenModalBindingInflate == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFullscreenModalBindingInflate = null;
            }
            Button thirdBtn2 = fragmentFullscreenModalBindingInflate.thirdBtn;
            Intrinsics.checkNotNullExpressionValue(thirdBtn2, "thirdBtn");
            ViewExtKt.hideMeNow(thirdBtn2);
        }
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(this).getCurrentBackStackEntry();
        if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null && (liveData = savedStateHandle.getLiveData(LoginSignupFragment.DIALOG_STATUS_KEY)) != null) {
            liveData.observe(getViewLifecycleOwner(), new FullscreenModal$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.fullscreen_modal.FullscreenModal$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return FullscreenModal.onCreateView$lambda$1(this.f$0, (Boolean) obj);
                }
            }));
        }
        getFdAds().getRewardedAdStatus().observe(getViewLifecycleOwner(), new FullscreenModal$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.fullscreen_modal.FullscreenModal$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FullscreenModal.onCreateView$lambda$2(this.f$0, (FDAds.RewardedAdStatus) obj);
            }
        }));
        FragmentFullscreenModalBinding fragmentFullscreenModalBinding4 = this.binding;
        if (fragmentFullscreenModalBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFullscreenModalBinding4 = null;
        }
        fragmentFullscreenModalBinding4.secondButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.fullscreen_modal.FullscreenModal$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FullscreenModal.onCreateView$lambda$3(this.f$0, view);
            }
        });
        FragmentFullscreenModalBinding fragmentFullscreenModalBinding5 = this.binding;
        if (fragmentFullscreenModalBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFullscreenModalBinding5 = null;
        }
        Button continueButton = fragmentFullscreenModalBinding5.continueButton;
        Intrinsics.checkNotNullExpressionValue(continueButton, "continueButton");
        continueButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.fullscreen_modal.FullscreenModal$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FullscreenModal.onCreateView$lambda$4(this.f$0, view);
            }
        });
        String str = this.description;
        if (str != null && str.length() != 0) {
            continueButton.setVisibility(8);
            FragmentFullscreenModalBinding fragmentFullscreenModalBinding6 = this.binding;
            if (fragmentFullscreenModalBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFullscreenModalBinding6 = null;
            }
            TextView textView = fragmentFullscreenModalBinding6.titleLabel;
            String str2 = this.title;
            if (str2 == null) {
                str2 = "";
            }
            textView.setText(str2);
            FragmentFullscreenModalBinding fragmentFullscreenModalBinding7 = this.binding;
            if (fragmentFullscreenModalBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFullscreenModalBinding7 = null;
            }
            fragmentFullscreenModalBinding7.descriptionLabel.setText(this.description);
        }
        String str3 = this.ctaTitle;
        if (str3 != null && str3.length() != 0) {
            continueButton.setText(this.ctaTitle);
            continueButton.setVisibility(0);
        }
        String str4 = this.secondCtaTitle;
        if (str4 == null || str4.length() == 0) {
            FragmentFullscreenModalBinding fragmentFullscreenModalBinding8 = this.binding;
            if (fragmentFullscreenModalBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFullscreenModalBinding8 = null;
            }
            MaterialButton secondButton = fragmentFullscreenModalBinding8.secondButton;
            Intrinsics.checkNotNullExpressionValue(secondButton, "secondButton");
            ViewExtKt.hideMeNow(secondButton);
            FragmentFullscreenModalBinding fragmentFullscreenModalBinding9 = this.binding;
            if (fragmentFullscreenModalBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFullscreenModalBinding9 = null;
            }
            MaterialDivider divider = fragmentFullscreenModalBinding9.divider;
            Intrinsics.checkNotNullExpressionValue(divider, "divider");
            ViewExtKt.hideMeNow(divider);
        } else {
            boolean zAreEqual = Intrinsics.areEqual(this.secondCtaAction, ConstKt.FD_REWARDED_ADS);
            FragmentFullscreenModalBinding fragmentFullscreenModalBinding10 = this.binding;
            if (zAreEqual) {
                if (fragmentFullscreenModalBinding10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentFullscreenModalBinding10 = null;
                }
                MaterialButton secondButton2 = fragmentFullscreenModalBinding10.secondButton;
                Intrinsics.checkNotNullExpressionValue(secondButton2, "secondButton");
                ViewExtKt.hideMeNow(secondButton2);
                FragmentFullscreenModalBinding fragmentFullscreenModalBinding11 = this.binding;
                if (fragmentFullscreenModalBinding11 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentFullscreenModalBinding11 = null;
                }
                MaterialDivider divider2 = fragmentFullscreenModalBinding11.divider;
                Intrinsics.checkNotNullExpressionValue(divider2, "divider");
                ViewExtKt.hideMeNow(divider2);
            } else {
                if (fragmentFullscreenModalBinding10 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentFullscreenModalBinding10 = null;
                }
                MaterialButton secondButton3 = fragmentFullscreenModalBinding10.secondButton;
                Intrinsics.checkNotNullExpressionValue(secondButton3, "secondButton");
                ViewExtKt.showMeNow(secondButton3);
                FragmentFullscreenModalBinding fragmentFullscreenModalBinding12 = this.binding;
                if (fragmentFullscreenModalBinding12 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentFullscreenModalBinding12 = null;
                }
                MaterialDivider divider3 = fragmentFullscreenModalBinding12.divider;
                Intrinsics.checkNotNullExpressionValue(divider3, "divider");
                ViewExtKt.showMeNow(divider3);
                FragmentFullscreenModalBinding fragmentFullscreenModalBinding13 = this.binding;
                if (fragmentFullscreenModalBinding13 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentFullscreenModalBinding13 = null;
                }
                fragmentFullscreenModalBinding13.secondButton.setText(this.secondCtaTitle);
            }
        }
        FragmentFullscreenModalBinding fragmentFullscreenModalBinding14 = this.binding;
        if (fragmentFullscreenModalBinding14 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFullscreenModalBinding14 = null;
        }
        fragmentFullscreenModalBinding14.thirdBtn.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.fullscreen_modal.FullscreenModal$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FullscreenModal.onCreateView$lambda$5(this.f$0, view);
            }
        });
        FragmentFullscreenModalBinding fragmentFullscreenModalBinding15 = this.binding;
        if (fragmentFullscreenModalBinding15 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentFullscreenModalBinding = fragmentFullscreenModalBinding15;
        }
        View root = fragmentFullscreenModalBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final Unit onCreateView$lambda$1(FullscreenModal fullscreenModal, Boolean bool) {
        SavedStateHandle savedStateHandle;
        if (Intrinsics.areEqual((Object) bool, (Object) true)) {
            fullscreenModal.withAction = true;
            fullscreenModal.dismiss();
            NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(fullscreenModal).getCurrentBackStackEntry();
            if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null) {
            }
        }
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$2(FullscreenModal fullscreenModal, FDAds.RewardedAdStatus rewardedAdStatus) {
        LoggerKt.getLogger().debug("####### rewardedAdStatus = " + rewardedAdStatus + " ###########", new Object[0]);
        if (rewardedAdStatus == FDAds.RewardedAdStatus.LOADED) {
            fullscreenModal.setLoadingState(false);
        } else if (rewardedAdStatus == FDAds.RewardedAdStatus.LOADING) {
            fullscreenModal.setLoadingState(true);
        } else {
            FragmentFullscreenModalBinding fragmentFullscreenModalBinding = fullscreenModal.binding;
            FragmentFullscreenModalBinding fragmentFullscreenModalBinding2 = null;
            if (fragmentFullscreenModalBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFullscreenModalBinding = null;
            }
            fragmentFullscreenModalBinding.secondButton.setText(fullscreenModal.getString(R.string.limited_show_rewarded_ads_button_title));
            FragmentFullscreenModalBinding fragmentFullscreenModalBinding3 = fullscreenModal.binding;
            if (fragmentFullscreenModalBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentFullscreenModalBinding2 = fragmentFullscreenModalBinding3;
            }
            fragmentFullscreenModalBinding2.secondButton.setEnabled(false);
        }
        return Unit.INSTANCE;
    }

    static final void onCreateView$lambda$3(final FullscreenModal fullscreenModal, View view) {
        String str = fullscreenModal.secondCtaAction;
        if (str == null || str.length() == 0) {
            return;
        }
        if (Intrinsics.areEqual(fullscreenModal.secondCtaAction, ConstKt.FD_REWARDED_ADS)) {
            FDAds fdAds = fullscreenModal.getFdAds();
            FDAds.AdForFeature adForFeature = fullscreenModal.secondCtaValue;
            Intrinsics.checkNotNull(adForFeature);
            fdAds.showRewardedAdsFor(adForFeature);
            fullscreenModal.getFdAds().setRewardedHasFinishedListener(new Function1() { // from class: fast.dic.dict.presentation.fullscreen_modal.FullscreenModal$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return FullscreenModal.onCreateView$lambda$3$0(this.f$0, ((Boolean) obj).booleanValue());
                }
            });
            return;
        }
        fullscreenModal.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$3$0(FullscreenModal fullscreenModal, boolean z) {
        if (fullscreenModal.secondCtaValue == FDAds.AdForFeature.ImageTranslator) {
            fullscreenModal.getLocalStorage().resetRewardedAdsForTranslator();
        } else if (fullscreenModal.secondCtaValue == FDAds.AdForFeature.AiTranslator) {
            fullscreenModal.getLocalStorage().resetRewardedAdsForAiTranslator();
        } else if (fullscreenModal.secondCtaValue == FDAds.AdForFeature.SentencePronunciation) {
            fullscreenModal.getLocalStorage().resetRewardedAdsForSentencePronunciation();
        }
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new FullscreenModal$onCreateView$4$1$1(fullscreenModal, null), 3, null);
        return Unit.INSTANCE;
    }

    static final void onCreateView$lambda$4(FullscreenModal fullscreenModal, View view) {
        String str = fullscreenModal.ctaAction;
        if (str != null && str.length() != 0) {
            if (Intrinsics.areEqual(fullscreenModal.ctaAction, ConstKt.FD_PRICING_SCREEN)) {
                fullscreenModal.withAction = true;
                fullscreenModal.dismiss();
                return;
            }
            return;
        }
        NavControllerExtensionKt.openModal$default(FragmentKt.findNavController(fullscreenModal), R.id.loginSignupFragmentDialog, null, 2, null);
    }

    static final void onCreateView$lambda$5(FullscreenModal fullscreenModal, View view) {
        Function0<Unit> function0 = fullscreenModal.dismissed;
        if (function0 != null) {
            function0.invoke();
        }
        fullscreenModal.dismiss();
    }

    private final void setLoadingState(boolean isLoading) {
        FragmentFullscreenModalBinding fragmentFullscreenModalBinding = this.binding;
        FragmentFullscreenModalBinding fragmentFullscreenModalBinding2 = null;
        if (fragmentFullscreenModalBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFullscreenModalBinding = null;
        }
        fragmentFullscreenModalBinding.setRewardedAdsLoading(Boolean.valueOf(isLoading));
        FragmentFullscreenModalBinding fragmentFullscreenModalBinding3 = this.binding;
        if (isLoading) {
            if (fragmentFullscreenModalBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentFullscreenModalBinding2 = fragmentFullscreenModalBinding3;
            }
            fragmentFullscreenModalBinding2.secondButton.setText(getString(R.string.loading_rewarded_ads_button_title));
            return;
        }
        if (fragmentFullscreenModalBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentFullscreenModalBinding2 = fragmentFullscreenModalBinding3;
        }
        fragmentFullscreenModalBinding2.secondButton.setText(getString(R.string.to_see_rewarded_ads_cta_title));
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        this.onDismissed.invoke(Boolean.valueOf(this.withAction));
    }
}
