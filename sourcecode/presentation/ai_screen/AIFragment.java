package fast.dic.dict.presentation.ai_screen;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebViewClient;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavArgsLazy;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import com.amazon.device.ads.DtbConstants;
import com.parse.ParseException;
import com.parse.ParseUser;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentAIBinding;
import fast.dic.dict.helpers.FDInternetHelper;
import fast.dic.dict.helpers.FDOfflinePlayer;
import fast.dic.dict.models.PlanType;
import fast.dic.dict.p000const.ConstKt;
import fast.dic.dict.presentation.fullscreen_modal.FullscreenModal;
import fast.dic.dict.presentation.login_screen.LoginSignupFragment;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.StringExtKt;
import im.delight.android.webview.AdvancedWebView;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import okio.ByteString;

/* JADX INFO: compiled from: AIFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J6\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0017b\u0010\b!\u0012\f\b\"\u0012\b\b\fJ\u0004\b\b(#J\b\u0010$\u001a\u00020%H\u0016J\u0014\u0010&\u001a\u00020%2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(H\u0002J\u0012\u0010)\u001a\u00020%2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(J\b\u0010*\u001a\u00020+H\u0002J\b\u0010,\u001a\u00020-H\u0002J\b\u0010.\u001a\u00020-H\u0002J\b\u0010/\u001a\u000200H\u0002J\u0010\u00101\u001a\u00020%2\u0006\u00102\u001a\u00020(H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R#\u0010\f\u001a\u00020\r8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\u0012¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016Ê\u0001\u0002\b4¨\u00063"}, d2 = {"Lfast/dic/dict/presentation/ai_screen/AIFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "args", "Lfast/dic/dict/presentation/ai_screen/AIFragmentArgs;", "getArgs", "()Lfast/dic/dict/presentation/ai_screen/AIFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "Lfast/dic/dict/databinding/FragmentAIBinding;", "offlinePlayer", "Lfast/dic/dict/helpers/FDOfflinePlayer;", "getOfflinePlayer", "()Lfast/dic/dict/helpers/FDOfflinePlayer;", "setOfflinePlayer", "(Lfast/dic/dict/helpers/FDOfflinePlayer;)V", "Ljavax/inject/Inject;", "viewModel", "Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "Landroid/annotation/SuppressLint;", "value", "SetJavaScriptEnabled", "onDestroy", "", "loadUrlWithCheck", "favoriteId", "", "updateUrlFromFavoriteScreen", "getPlanType", "Lfast/dic/dict/models/PlanType;", "checkIfNotLoginOpenLoginModal", "", "checkIsLogin", "getWebViewClient", "Landroid/webkit/WebViewClient;", "audioClickedOffline", "url", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class AIFragment extends Hilt_AIFragment {

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;
    private FragmentAIBinding binding;

    @Inject
    public FDOfflinePlayer offlinePlayer;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public AIFragment() {
        final AIFragment aIFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(AIFragmentArgs.class), new Function0<Bundle>() { // from class: fast.dic.dict.presentation.ai_screen.AIFragment$special$$inlined$navArgs$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = aIFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + aIFragment + " has null arguments");
            }
        });
        final Function0 function0 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(aIFragment, Reflection.getOrCreateKotlinClass(AIFragmentViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.ai_screen.AIFragment$special$$inlined$activityViewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                ViewModelStore viewModelStore = aIFragment.requireActivity().getViewModelStore();
                Intrinsics.checkNotNullExpressionValue(viewModelStore, "<get-viewModelStore>(...)");
                return viewModelStore;
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.ai_screen.AIFragment$special$$inlined$activityViewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                if (function1 != null && (creationExtras = (CreationExtras) function1.invoke()) != null) {
                    return creationExtras;
                }
                CreationExtras defaultViewModelCreationExtras = aIFragment.requireActivity().getDefaultViewModelCreationExtras();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "<get-defaultViewModelCreationExtras>(...)");
                return defaultViewModelCreationExtras;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.ai_screen.AIFragment$special$$inlined$activityViewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory = aIFragment.requireActivity().getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory;
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final AIFragmentArgs getArgs() {
        return (AIFragmentArgs) this.args.getValue();
    }

    public final FDOfflinePlayer getOfflinePlayer() {
        FDOfflinePlayer fDOfflinePlayer = this.offlinePlayer;
        if (fDOfflinePlayer != null) {
            return fDOfflinePlayer;
        }
        Intrinsics.throwUninitializedPropertyAccessException("offlinePlayer");
        return null;
    }

    public final void setOfflinePlayer(FDOfflinePlayer fDOfflinePlayer) {
        Intrinsics.checkNotNullParameter(fDOfflinePlayer, "<set-?>");
        this.offlinePlayer = fDOfflinePlayer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AIFragmentViewModel getViewModel() {
        return (AIFragmentViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentAIBinding fragmentAIBindingInflate = FragmentAIBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentAIBindingInflate, "inflate(...)");
        this.binding = fragmentAIBindingInflate;
        FragmentAIBinding fragmentAIBinding = null;
        if (fragmentAIBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBindingInflate = null;
        }
        fragmentAIBindingInflate.webView.restoreState(getViewModel().getWebViewState());
        FragmentAIBinding fragmentAIBinding2 = this.binding;
        if (fragmentAIBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBinding2 = null;
        }
        AIFragment aIFragment = this;
        fragmentAIBinding2.setLifecycleOwner(aIFragment);
        FragmentAIBinding fragmentAIBinding3 = this.binding;
        if (fragmentAIBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBinding3 = null;
        }
        fragmentAIBinding3.webView.setWebViewClient(getWebViewClient());
        FragmentAIBinding fragmentAIBinding4 = this.binding;
        if (fragmentAIBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBinding4 = null;
        }
        fragmentAIBinding4.webView.getSettings().setJavaScriptEnabled(true);
        FragmentAIBinding fragmentAIBinding5 = this.binding;
        if (fragmentAIBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBinding5 = null;
        }
        fragmentAIBinding5.webView.getSettings().setDomStorageEnabled(true);
        getOfflinePlayer().setLifecycle(aIFragment);
        getOfflinePlayer().setOnFinishPlayer(new Function0() { // from class: fast.dic.dict.presentation.ai_screen.AIFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AIFragment.onCreateView$lambda$0(this.f$0);
            }
        });
        getOfflinePlayer().setOnErrorPlayer(new Function0() { // from class: fast.dic.dict.presentation.ai_screen.AIFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AIFragment.onCreateView$lambda$1(this.f$0);
            }
        });
        getOfflinePlayer().setOnStartPlayer(new Function0() { // from class: fast.dic.dict.presentation.ai_screen.AIFragment$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return AIFragment.onCreateView$lambda$2(this.f$0);
            }
        });
        FDInternetHelper fDInternetHelper = FDInternetHelper.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        if (!fDInternetHelper.isInternetAvailable(contextRequireContext)) {
            FragmentManager supportFragmentManager = requireActivity().getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            final FullscreenModal fullscreenModal = new FullscreenModal(true, getString(R.string.error), getString(R.string.check_internet_connection), null, null, null, null, null, null, 504, null);
            fullscreenModal.show(supportFragmentManager, "");
            fullscreenModal.setOnDismissed(new Function1() { // from class: fast.dic.dict.presentation.ai_screen.AIFragment$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AIFragment.onCreateView$lambda$3$0(fullscreenModal, this, ((Boolean) obj).booleanValue());
                }
            });
        } else {
            loadUrlWithCheck$default(this, null, 1, null);
        }
        FragmentAIBinding fragmentAIBinding6 = this.binding;
        if (fragmentAIBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentAIBinding = fragmentAIBinding6;
        }
        View root = fragmentAIBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final Unit onCreateView$lambda$0(AIFragment aIFragment) {
        FragmentAIBinding fragmentAIBinding = aIFragment.binding;
        if (fragmentAIBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBinding = null;
        }
        fragmentAIBinding.webView.evaluateJavascript("sounddiactive();", null);
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$1(AIFragment aIFragment) {
        FragmentAIBinding fragmentAIBinding = aIFragment.binding;
        if (fragmentAIBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBinding = null;
        }
        fragmentAIBinding.webView.evaluateJavascript("sounddiactive();", null);
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$2(AIFragment aIFragment) {
        FragmentAIBinding fragmentAIBinding = aIFragment.binding;
        if (fragmentAIBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBinding = null;
        }
        fragmentAIBinding.webView.evaluateJavascript("sounddiactive();", null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$3$0(FullscreenModal fullscreenModal, AIFragment aIFragment, boolean z) {
        if (!z) {
            FragmentKt.findNavController(fullscreenModal).navigateUp();
        } else {
            loadUrlWithCheck$default(aIFragment, null, 1, null);
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        FragmentAIBinding fragmentAIBinding = this.binding;
        if (fragmentAIBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBinding = null;
        }
        fragmentAIBinding.webView.saveState(getViewModel().getWebViewState());
        super.onDestroy();
    }

    static /* synthetic */ void loadUrlWithCheck$default(AIFragment aIFragment, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = aIFragment.getArgs().getFavoriteId();
        }
        aIFragment.loadUrlWithCheck(str);
    }

    private final void loadUrlWithCheck(String favoriteId) {
        if (checkIfNotLoginOpenLoginModal()) {
            return;
        }
        if (getViewModel().getPlanType() == null) {
            getViewModel().setPlanType(getPlanType());
        }
        if (getViewModel().getPlanType() != getPlanType() || getViewModel().getWebViewState().isEmpty()) {
            updateUrlFromFavoriteScreen(favoriteId);
        }
    }

    public static /* synthetic */ void updateUrlFromFavoriteScreen$default(AIFragment aIFragment, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = aIFragment.getArgs().getFavoriteId();
        }
        aIFragment.updateUrlFromFavoriteScreen(str);
    }

    public final void updateUrlFromFavoriteScreen(String favoriteId) {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FragmentAIBinding fragmentAIBinding = null;
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null) {
            return;
        }
        FragmentAIBinding fragmentAIBinding2 = this.binding;
        if (fragmentAIBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBinding2 = null;
        }
        fragmentAIBinding2.setLoading(true);
        String str = favoriteId;
        String str2 = (str == null || str.length() == 0) ? "" : "#f=" + favoriteId;
        FragmentAIBinding fragmentAIBinding3 = this.binding;
        if (fragmentAIBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBinding3 = null;
        }
        fragmentAIBinding3.webView.stopLoading();
        FragmentAIBinding fragmentAIBinding4 = this.binding;
        if (fragmentAIBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentAIBinding = fragmentAIBinding4;
        }
        AdvancedWebView advancedWebView = fragmentAIBinding.webView;
        String sessionToken = fDParseUser.getSessionToken();
        String email = fDParseUser.getEmail();
        Intrinsics.checkNotNullExpressionValue(email, "getEmail(...)");
        advancedWebView.loadUrl("https://fastdic.com/translate?sessionToken=" + sessionToken + "&email=" + StringExtKt.urlEncoded(email) + "&isAndroid=true" + str2);
    }

    private final PlanType getPlanType() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null) {
            return PlanType.FREE;
        }
        if (fDParseUser.hasPlan1InView()) {
            return PlanType.REMOVE_ADS;
        }
        return fDParseUser.hasPlan2InView() ? PlanType.PRO : PlanType.AI;
    }

    private final boolean checkIfNotLoginOpenLoginModal() {
        SavedStateHandle savedStateHandle;
        MutableLiveData liveData;
        if (checkIsLogin()) {
            return false;
        }
        FragmentManager supportFragmentManager = requireActivity().getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        if (supportFragmentManager.isStateSaved()) {
            return true;
        }
        final FullscreenModal fullscreenModal = new FullscreenModal(true, getString(R.string.need_ai_plan_title), getString(R.string.need_ai_login_plan_title_desc), getString(R.string.login_or_signup), ConstKt.FD_PRICING_SCREEN, null, null, null, null, DtbConstants.DEFAULT_PLAYER_HEIGHT, null);
        fullscreenModal.show(supportFragmentManager, "");
        fullscreenModal.setOnDismissed(new Function1() { // from class: fast.dic.dict.presentation.ai_screen.AIFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return AIFragment.checkIfNotLoginOpenLoginModal$lambda$0$0(fullscreenModal, ((Boolean) obj).booleanValue());
            }
        });
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(this).getCurrentBackStackEntry();
        if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null && (liveData = savedStateHandle.getLiveData(LoginSignupFragment.DIALOG_STATUS_KEY)) != null) {
            liveData.observe(getViewLifecycleOwner(), new AIFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.ai_screen.AIFragment$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AIFragment.checkIfNotLoginOpenLoginModal$lambda$1(this.f$0, (Boolean) obj);
                }
            }));
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit checkIfNotLoginOpenLoginModal$lambda$0$0(FullscreenModal fullscreenModal, boolean z) {
        if (!z) {
            FragmentKt.findNavController(fullscreenModal).navigateUp();
        } else {
            NavControllerExtensionKt.openModal$default(FragmentKt.findNavController(fullscreenModal), R.id.loginSignupFragmentDialog, null, 2, null);
        }
        return Unit.INSTANCE;
    }

    static final Unit checkIfNotLoginOpenLoginModal$lambda$1(AIFragment aIFragment, Boolean bool) {
        if (Intrinsics.areEqual((Object) bool, (Object) true)) {
            aIFragment.getViewModel().getWebViewState().clear();
            loadUrlWithCheck$default(aIFragment, null, 1, null);
        }
        return Unit.INSTANCE;
    }

    private final boolean checkIsLogin() {
        return ParseUser.getCurrentUser() instanceof FDParseUser;
    }

    private final WebViewClient getWebViewClient() {
        return new AIFragment$getWebViewClient$client$1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void audioClickedOffline(String url) {
        String strTake;
        ByteString byteStringDecodeBase64 = ByteString.INSTANCE.decodeBase64(StringsKt.replace$default(StringsKt.replace$default(url, ConstKt.FD_BR_SOUND_DEEPLINK, "", false, 4, (Object) null), ConstKt.FD_AM_SOUND_DEEPLINK, "", false, 4, (Object) null));
        String strUtf8 = byteStringDecodeBase64 != null ? byteStringDecodeBase64.utf8() : null;
        LoggerKt.getLogger().debug("Ready to play " + ((strUtf8 == null || (strTake = StringsKt.take(strUtf8, 50)) == null) ? null : StringsKt.replace$default(strTake, StringUtils.COMMA, "", false, 4, (Object) null)) + "... in offline mode", new Object[0]);
        if (strUtf8 == null) {
            return;
        }
        String str = url;
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.FD_BR_SOUND_DEEPLINK, false, 2, (Object) null)) {
            getOfflinePlayer().speak(strUtf8, "br");
        } else if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.FD_AM_SOUND_DEEPLINK, false, 2, (Object) null)) {
            getOfflinePlayer().speak(strUtf8, "us");
        }
    }
}
