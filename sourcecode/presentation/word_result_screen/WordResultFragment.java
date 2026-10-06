package fast.dic.dict.presentation.word_result_screen;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Toast;
import androidx.core.content.ContextCompat;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentResultListener;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleDestroyedException;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.RepeatOnLifecycleKt;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.WithLifecycleStateKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavArgsLazy;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import androidx.navigation.fragment.NavHostFragment;
import com.fastdic.android.modules.fdnumberstowords.utils.FDNumberUtil;
import com.google.android.material.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import com.google.mlkit.nl.translate.TranslateLanguage;
import com.ironsource.U3;
import com.mbridge.msdk.MBridgeConstans;
import com.parse.ParseException;
import com.parse.ParseUser;
import com.startapp.simple.bloomfilter.codec.IOUtils;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import com.yandex.div.core.DivActionHandler;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.activities.MainActivity;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentWordResultBinding;
import fast.dic.dict.fragments.snackbar.AddedToDirectorySnackBar;
import fast.dic.dict.helpers.FDOfflinePlayer;
import fast.dic.dict.models.database.EnglishMeaningModel;
import fast.dic.dict.models.database.EnglishSearchResultModel;
import fast.dic.dict.models.database.FolderModel;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.models.database.PersianSearchResultModel;
import fast.dic.dict.models.database.PersianWordDetail;
import fast.dic.dict.models.database.PosModel;
import fast.dic.dict.models.database.SearchResultModel;
import fast.dic.dict.models.eventbus.SearchBarStatus;
import fast.dic.dict.models.eventbus.SearchBarStatusEnum;
import fast.dic.dict.p000const.ConstKt;
import fast.dic.dict.presentation.fullscreen_modal.FullscreenModal;
import fast.dic.dict.presentation.login_screen.LoginSignupFragment;
import fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.AnyDebounce;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.FDAudioPlayerManager;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.FragmentExtensionKt;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.StringExtKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
import fast.dic.dict.views.SearchBarView;
import im.delight.android.webview.AdvancedWebView;
import java.util.List;
import javax.inject.Inject;
import kotlin.Function;
import kotlin.KotlinNothingValueException;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: WordResultFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000¡\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002*\u0001A\b\u0007\u0018\u0000 _2\u00020\u00012\u00020\u0002:\u0001_B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J$\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\b\u0010(\u001a\u00020)H\u0016J\u001a\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020!2\b\u0010&\u001a\u0004\u0018\u00010'H\u0016J\b\u0010,\u001a\u00020)H\u0016J\b\u0010-\u001a\u00020)H\u0016J\b\u0010.\u001a\u00020)H\u0002J\b\u0010/\u001a\u00020)H\u0002J\b\u00100\u001a\u00020)H\u0002J\b\u00101\u001a\u00020)H\u0002J\b\u00102\u001a\u00020)H\u0002J\u0006\u00103\u001a\u00020)J\b\u00104\u001a\u00020)H\u0002J\u0012\u00105\u001a\u00020)2\b\u00106\u001a\u0004\u0018\u000107H\u0002J\u0012\u00108\u001a\u00020)2\b\u00109\u001a\u0004\u0018\u00010:H\u0002J\u0012\u0010;\u001a\u00020)2\b\u0010<\u001a\u0004\u0018\u00010=H\u0002J\b\u0010>\u001a\u00020?H\u0002J\u0010\u0010E\u001a\u00020)2\u0006\u0010F\u001a\u00020:H\u0002J\u0010\u0010G\u001a\u00020?2\u0006\u0010F\u001a\u00020:H\u0002J\u0010\u0010H\u001a\u00020)2\u0006\u0010F\u001a\u00020:H\u0002J\u0010\u0010I\u001a\u00020?2\u0006\u0010F\u001a\u00020:H\u0002J\u0018\u0010J\u001a\u00020)2\u0006\u0010K\u001a\u00020:2\u0006\u0010L\u001a\u00020?H\u0002J\b\u0010M\u001a\u00020)H\u0002J\b\u0010N\u001a\u00020?H\u0002J\b\u0010O\u001a\u00020)H\u0002J\u0010\u0010P\u001a\u00020)2\u0006\u0010F\u001a\u00020:H\u0002J\b\u0010Q\u001a\u00020)H\u0002J\b\u0010R\u001a\u00020)H\u0002J\u0006\u0010S\u001a\u00020?J\u0018\u0010T\u001a\u00020)2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016J\u0010\u0010Y\u001a\u00020?2\u0006\u0010Z\u001a\u00020[H\u0016J\u0010\u0010\\\u001a\u00020)2\u0006\u0010]\u001a\u00020^H\u0016R#\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\u000b¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001a\u0010\u001bR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010@\u001a\u00020A8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bD\u0010\u001d\u001a\u0004\bB\u0010CÊ\u0001\u0002\ba¨\u0006`"}, d2 = {"Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;", "Lfast/dic/dict/bases/BaseFragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "offlinePlayer", "Lfast/dic/dict/helpers/FDOfflinePlayer;", "getOfflinePlayer", "()Lfast/dic/dict/helpers/FDOfflinePlayer;", "setOfflinePlayer", "(Lfast/dic/dict/helpers/FDOfflinePlayer;)V", "Ljavax/inject/Inject;", "args", "Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;", "getArgs", "()Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "Lfast/dic/dict/databinding/FragmentWordResultBinding;", "getBinding", "()Lfast/dic/dict/databinding/FragmentWordResultBinding;", "setBinding", "(Lfast/dic/dict/databinding/FragmentWordResultBinding;)V", "viewModel", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "resultWebView", "Lim/delight/android/webview/AdvancedWebView;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onStart", "", "onViewCreated", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, U3.i.u0, "onDestroyView", "showResultOrderModal", "optimizeSizeForModal", "handleAudioPlayer", "onClearNavigation", "onFocusedNavigation", "getResult", "requestInterstitialAfterResult", "uiStateChanged", "wordResultViewModelUIState", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;", "loadHtml", "html", "", "favoriteStateChanged", "state", "Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState;", "checkUserIsLoginThenShowLoginPage", "", "lazyWebClient", "fast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1", "getLazyWebClient", "()Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;", "lazyWebClient$delegate", "handleSentencePronunciation", "url", "isSentencePronunciation", "handleWordPronunciation", "noPronunciation", "speakOut", "wordToSpeech", "isBritish", "diactiveSound", "checkLimitation", "decreaseLimitation", "audioSentenceClickedOnline", "copyTranslation", "shareAction", "handlePlanErrorForShareExtension", "onCreateMenu", DivActionHandler.DivActionReason.MENU, "Landroid/view/Menu;", "menuInflater", "Landroid/view/MenuInflater;", "onMenuItemSelected", "menuItem", "Landroid/view/MenuItem;", "onDismiss", "dialog", "Landroid/content/DialogInterface;", "Companion", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class WordResultFragment extends Hilt_WordResultFragment implements MenuProvider {
    public static final String DISMISS_KEY = "word_result_modal_dismissed";

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;
    public FragmentWordResultBinding binding;

    /* JADX INFO: renamed from: lazyWebClient$delegate, reason: from kotlin metadata */
    private final Lazy lazyWebClient;

    @Inject
    public FDOfflinePlayer offlinePlayer;
    private AdvancedWebView resultWebView;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public WordResultFragment() {
        final WordResultFragment wordResultFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(WordResultFragmentArgs.class), new Function0<Bundle>() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$special$$inlined$navArgs$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = wordResultFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + wordResultFragment + " has null arguments");
            }
        });
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return wordResultFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(wordResultFragment, Reflection.getOrCreateKotlinClass(WordResultViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).get$viewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory factory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (factory = hasDefaultViewModelProviderFactory.get$defaultFactory()) != null) {
                    return factory;
                }
                ViewModelProvider.Factory factory2 = wordResultFragment.get$defaultFactory();
                Intrinsics.checkNotNullExpressionValue(factory2, "<get-defaultViewModelProviderFactory>(...)");
                return factory2;
            }
        });
        this.lazyWebClient = LazyKt.lazy(new Function0() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WordResultFragment.lazyWebClient_delegate$lambda$0(this.f$0);
            }
        });
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
    /* JADX WARN: Multi-variable type inference failed */
    public final WordResultFragmentArgs getArgs() {
        return (WordResultFragmentArgs) this.args.getValue();
    }

    public final FragmentWordResultBinding getBinding() {
        FragmentWordResultBinding fragmentWordResultBinding = this.binding;
        if (fragmentWordResultBinding != null) {
            return fragmentWordResultBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding(FragmentWordResultBinding fragmentWordResultBinding) {
        Intrinsics.checkNotNullParameter(fragmentWordResultBinding, "<set-?>");
        this.binding = fragmentWordResultBinding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WordResultViewModel getViewModel() {
        return (WordResultViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        String word;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentWordResultBinding fragmentWordResultBindingInflate = FragmentWordResultBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentWordResultBindingInflate, "inflate(...)");
        setBinding(fragmentWordResultBindingInflate);
        getBinding().setEnableSearchBar(true);
        getBinding().setLifecycleOwner(getViewLifecycleOwner());
        try {
            AdvancedWebView advancedWebView = new AdvancedWebView(requireContext());
            advancedWebView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            advancedWebView.setWebViewClient(getLazyWebClient());
            this.resultWebView = advancedWebView;
            getBinding().webViewContainer.addView(this.resultWebView);
        } catch (Exception e) {
            FirebaseCrashlytics.getInstance().recordException(e);
        }
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new AnonymousClass2(null), 3, null);
        getViewModel().getFavoriteStatus().observe(getViewLifecycleOwner(), new WordResultFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass3(this)));
        SearchBarView searchBarView = getBinding().searchBarView;
        ListModel listModel = getArgs().getListModel();
        if (listModel == null || (word = listModel.getWord()) == null) {
            word = "";
        }
        searchBarView.setCurrentWord(word);
        FragmentActivity activity = getActivity();
        final MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        AdvancedWebView advancedWebView2 = this.resultWebView;
        if (advancedWebView2 != null) {
            advancedWebView2.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda14
                @Override // android.view.View.OnScrollChangeListener
                public final void onScrollChange(View view, int i, int i2, int i3, int i4) {
                    AnyDebounce.INSTANCE.debounce(Integer.valueOf(i2 - i4), 50L, new Function1() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda3
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            return WordResultFragment.onCreateView$lambda$1$0(mainActivity, ((Integer) obj).intValue());
                        }
                    });
                }
            });
        }
        getBinding().searchBarView.setOnClickedListener(new Function0() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WordResultFragment.onCreateView$lambda$2(this.f$0);
            }
        });
        getBinding().searchBarView.setStateChangeListener(new Function2() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return WordResultFragment.onCreateView$lambda$3(this.f$0, ((Boolean) obj).booleanValue(), (Boolean) obj2);
            }
        });
        getBinding().searchBarView.setClearButtonClickedListener(new Function0() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(WordResultFragment.onCreateView$lambda$4(this.f$0));
            }
        });
        handleAudioPlayer();
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.word_result_screen.WordResultFragment$onCreateView$2, reason: invalid class name */
    /* JADX INFO: compiled from: WordResultFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.word_result_screen.WordResultFragment$onCreateView$2", f = "WordResultFragment.kt", i = {}, l = {138}, m = "invokeSuspend", n = {}, nl = {ParseException.SCRIPT_ERROR}, s = {}, v = 2)
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WordResultFragment.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: fast.dic.dict.presentation.word_result_screen.WordResultFragment$onCreateView$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: WordResultFragment.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.presentation.word_result_screen.WordResultFragment$onCreateView$2$1", f = "WordResultFragment.kt", i = {}, l = {139}, m = "invokeSuspend", n = {}, nl = {-1}, s = {}, v = 2)
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ WordResultFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(WordResultFragment wordResultFragment, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = wordResultFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: renamed from: fast.dic.dict.presentation.word_result_screen.WordResultFragment$onCreateView$2$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: WordResultFragment.kt */
            @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
            static final /* synthetic */ class C14271 implements FlowCollector, FunctionAdapter {
                final /* synthetic */ WordResultFragment $tmp0;

                C14271(WordResultFragment wordResultFragment) {
                    this.$tmp0 = wordResultFragment;
                }

                public final boolean equals(Object obj) {
                    if ((obj instanceof FlowCollector) && (obj instanceof FunctionAdapter)) {
                        return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
                    }
                    return false;
                }

                @Override // kotlin.jvm.internal.FunctionAdapter
                public final Function<?> getFunctionDelegate() {
                    return new AdaptedFunctionReference(2, this.$tmp0, WordResultFragment.class, "uiStateChanged", "uiStateChanged(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelUIState;)V", 4);
                }

                public final int hashCode() {
                    return getFunctionDelegate().hashCode();
                }

                public final Object emit(WordResultViewModelUIState wordResultViewModelUIState, Continuation<? super Unit> continuation) {
                    this.$tmp0.uiStateChanged(wordResultViewModelUIState);
                    return Unit.INSTANCE;
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
                    return emit((WordResultViewModelUIState) obj, (Continuation<? super Unit>) continuation);
                }
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (this.this$0.getViewModel().getState().collect(new C14271(this.this$0), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                throw new KotlinNothingValueException();
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                LifecycleOwner viewLifecycleOwner = WordResultFragment.this.getViewLifecycleOwner();
                Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(viewLifecycleOwner, Lifecycle.State.STARTED, new AnonymousClass1(WordResultFragment.this, null), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.word_result_screen.WordResultFragment$onCreateView$3, reason: invalid class name */
    /* JADX INFO: compiled from: WordResultFragment.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    static final /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function1<WordResultViewModelFavoriteUIState, Unit> {
        AnonymousClass3(Object obj) {
            super(1, obj, WordResultFragment.class, "favoriteStateChanged", "favoriteStateChanged(Lfast/dic/dict/presentation/word_result_screen/WordResultViewModelFavoriteUIState;)V", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(WordResultViewModelFavoriteUIState wordResultViewModelFavoriteUIState) {
            invoke2(wordResultViewModelFavoriteUIState);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(WordResultViewModelFavoriteUIState wordResultViewModelFavoriteUIState) {
            ((WordResultFragment) this.receiver).favoriteStateChanged(wordResultViewModelFavoriteUIState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$1$0(MainActivity mainActivity, int i) {
        if (mainActivity != null) {
            mainActivity.changeFloatingButtonVisibility(i < 0);
        }
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$2(WordResultFragment wordResultFragment) {
        wordResultFragment.onFocusedNavigation();
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$3(WordResultFragment wordResultFragment, boolean z, Boolean bool) {
        wordResultFragment.onFocusedNavigation();
        return Unit.INSTANCE;
    }

    static final boolean onCreateView$lambda$4(WordResultFragment wordResultFragment) {
        wordResultFragment.onClearNavigation();
        ListModel listModel = wordResultFragment.getArgs().getListModel();
        if (listModel == null) {
            return true;
        }
        listModel.setWord("");
        return true;
    }

    @Override // fast.dic.dict.bases.BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        View viewFindViewById;
        super.onStart();
        Dialog dialog = getDialog();
        BottomSheetDialog bottomSheetDialog = dialog instanceof BottomSheetDialog ? (BottomSheetDialog) dialog : null;
        if (bottomSheetDialog == null || (viewFindViewById = bottomSheetDialog.findViewById(R.id.design_bottom_sheet)) == null) {
            return;
        }
        BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(viewFindViewById);
        Intrinsics.checkNotNullExpressionValue(bottomSheetBehaviorFrom, "from(...)");
        bottomSheetBehaviorFrom.setState(3);
        bottomSheetBehaviorFrom.setDraggable(false);
        bottomSheetBehaviorFrom.setSkipCollapsed(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        SavedStateHandle savedStateHandle;
        MutableLiveData liveData;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        if (isModal()) {
            getBinding().toolbarTop.addMenuProvider(this, getViewLifecycleOwner());
            getBinding().toolbarTop.setNavigationIcon(fast.dic.dict.R.drawable.ic_close);
            getBinding().toolbarTop.setNavigationOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.dismiss();
                }
            });
        } else {
            FragmentActivity activity = getActivity();
            FragmentActivity fragmentActivity = activity instanceof MenuHost ? activity : null;
            if (fragmentActivity != null) {
                fragmentActivity.addMenuProvider(this, getViewLifecycleOwner());
            }
        }
        FirebaseCrashlytics firebaseCrashlytics = FirebaseCrashlytics.getInstance();
        boolean fromShare = getArgs().getFromShare();
        ListModel listModel = getArgs().getListModel();
        String word = listModel != null ? listModel.getWord() : null;
        ListModel listModel2 = getArgs().getListModel();
        Boolean boolIsTranslator = listModel2 != null ? listModel2.isTranslator() : null;
        ListModel listModel3 = getArgs().getListModel();
        firebaseCrashlytics.log("Showing result for word (" + fromShare + "): " + word + ", isTranslator: " + boolIsTranslator + ", isNumber: " + (listModel3 != null ? Boolean.valueOf(listModel3.isNumber()) : null));
        getResult();
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(this).getCurrentBackStackEntry();
        if (currentBackStackEntry == null || (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) == null || (liveData = savedStateHandle.getLiveData(LoginSignupFragment.DIALOG_STATUS_KEY)) == null) {
            return;
        }
        liveData.observe(getViewLifecycleOwner(), new WordResultFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WordResultFragment.onViewCreated$lambda$1(this.f$0, (Boolean) obj);
            }
        }));
    }

    static final Unit onViewCreated$lambda$1(WordResultFragment wordResultFragment, Boolean bool) throws ParseException {
        if (Intrinsics.areEqual((Object) bool, (Object) true)) {
            wordResultFragment.getBinding().setLoading(false);
            ParseUser currentUser = ParseUser.getCurrentUser();
            FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
            if (fDParseUser == null || !fDParseUser.isAuthenticated()) {
                FragmentKt.findNavController(wordResultFragment).navigateUp();
            } else {
                wordResultFragment.getResult();
            }
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        optimizeSizeForModal();
        WordResultViewModel viewModel = getViewModel();
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        viewModel.updateContext(contextRequireContext);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        AdvancedWebView advancedWebView = this.resultWebView;
        if (advancedWebView != null) {
            getBinding().webViewContainer.removeView(advancedWebView);
            advancedWebView.destroy();
        }
        this.resultWebView = null;
        super.onDestroyView();
    }

    private final void showResultOrderModal() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser != null && fDParseUser.isAuthenticated()) {
            WordResultFragment wordResultFragment = this;
            ListModel listModel = getArgs().getListModel();
            FragmentExtensionKt.openResultOrderModal(wordResultFragment, listModel != null ? listModel.getWord() : null);
            getParentFragmentManager().setFragmentResultListener("bottom_sheet_result", getViewLifecycleOwner(), new FragmentResultListener() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda4
                @Override // androidx.fragment.app.FragmentResultListener
                public final void onFragmentResult(String str, Bundle bundle) {
                    WordResultFragment.showResultOrderModal$lambda$0(this.f$0, str, bundle);
                }
            });
            return;
        }
        String string = getString(fast.dic.dict.R.string.sort_the_result_title);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = getString(fast.dic.dict.R.string.sort_the_result_desc);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        String string3 = getString(fast.dic.dict.R.string.login_or_signup);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        FragmentExtensionKt.showBeforeLoginScreen(this, string, string2, string3, new Function1() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WordResultFragment.showResultOrderModal$lambda$1(this.f$0, ((Boolean) obj).booleanValue());
            }
        });
    }

    static final void showResultOrderModal$lambda$0(WordResultFragment wordResultFragment, String str, Bundle bundle) {
        Intrinsics.checkNotNullParameter(str, "<unused var>");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        if (bundle.getBoolean("orderChanged")) {
            wordResultFragment.getResult();
        }
    }

    static final Unit showResultOrderModal$lambda$1(WordResultFragment wordResultFragment, boolean z) {
        if (z) {
            wordResultFragment.checkUserIsLoginThenShowLoginPage();
        }
        return Unit.INSTANCE;
    }

    private final void optimizeSizeForModal() {
        Window window;
        Window window2;
        Window window3;
        Window window4;
        if (getArgs().getFromShare()) {
            getBinding().setEnableSearchBar(false);
            getBinding().searchBarView.setReadOnlyMode(true);
        }
        Dialog dialog = getDialog();
        if (dialog == null || dialog.getWindow() == null) {
            return;
        }
        getBinding().setEnableToolbar(true);
        getBinding().setEnableSearchBar(Boolean.valueOf(getArgs().getEnableSearchbar()));
        getBinding().searchBarView.setReadOnlyMode(true ^ getArgs().getEnableSearchbar());
        Dialog dialog2 = getDialog();
        if (dialog2 != null && (window4 = dialog2.getWindow()) != null) {
            window4.setWindowAnimations(fast.dic.dict.R.style.DialogTheme);
        }
        Dialog dialog3 = getDialog();
        if (dialog3 != null && (window3 = dialog3.getWindow()) != null) {
            window3.setBackgroundDrawable(new ColorDrawable(0));
        }
        Dialog dialog4 = getDialog();
        if (dialog4 != null && (window2 = dialog4.getWindow()) != null) {
            window2.setLayout(-1, -1);
        }
        Dialog dialog5 = getDialog();
        if (dialog5 == null || (window = dialog5.getWindow()) == null) {
            return;
        }
        window.setGravity(80);
    }

    private final void handleAudioPlayer() {
        getOfflinePlayer().setLifecycle(this);
        getOfflinePlayer().setOnFinishPlayer(new Function0() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WordResultFragment.handleAudioPlayer$lambda$0(this.f$0);
            }
        });
        getOfflinePlayer().setOnErrorPlayer(new Function0() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WordResultFragment.handleAudioPlayer$lambda$1(this.f$0);
            }
        });
        getOfflinePlayer().setOnStartPlayer(new Function0() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WordResultFragment.handleAudioPlayer$lambda$2(this.f$0);
            }
        });
    }

    static final Unit handleAudioPlayer$lambda$0(WordResultFragment wordResultFragment) {
        wordResultFragment.diactiveSound();
        return Unit.INSTANCE;
    }

    static final Unit handleAudioPlayer$lambda$1(WordResultFragment wordResultFragment) {
        wordResultFragment.diactiveSound();
        return Unit.INSTANCE;
    }

    static final Unit handleAudioPlayer$lambda$2(WordResultFragment wordResultFragment) {
        wordResultFragment.diactiveSound();
        return Unit.INSTANCE;
    }

    private final void onClearNavigation() {
        if (isModal()) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                FragmentExtensionKt.search(activity, "");
                return;
            }
            return;
        }
        try {
            FragmentKt.findNavController(this).getBackStackEntry(fast.dic.dict.R.id.searchFragment).getSavedStateHandle().set("SearchBarStatus", new SearchBarStatus(SearchBarStatusEnum.Cleared, null, 2, null));
            NavHostFragment.INSTANCE.findNavController(this).popBackStack(fast.dic.dict.R.id.searchFragment, false);
        } catch (Exception e) {
            LoggerKt.getLogger().error("Could not pop to root in onFocusedNavigation. e = " + e.getMessage(), new Object[0]);
        }
    }

    private final void onFocusedNavigation() {
        if (isModal()) {
            ListModel listModel = getArgs().getListModel();
            if ((listModel != null ? listModel.getWord() : null) != null) {
                FragmentActivity activity = getActivity();
                if (activity != null) {
                    ListModel listModel2 = getArgs().getListModel();
                    String word = listModel2 != null ? listModel2.getWord() : null;
                    Intrinsics.checkNotNull(word);
                    FragmentExtensionKt.search(activity, word);
                    return;
                }
                return;
            }
        }
        try {
            SavedStateHandle savedStateHandle = FragmentKt.findNavController(this).getBackStackEntry(fast.dic.dict.R.id.searchFragment).getSavedStateHandle();
            SearchBarStatusEnum searchBarStatusEnum = SearchBarStatusEnum.Focused;
            ListModel listModel3 = getArgs().getListModel();
            savedStateHandle.set("SearchBarStatus", new SearchBarStatus(searchBarStatusEnum, listModel3 != null ? listModel3.getWord() : null));
            NavHostFragment.INSTANCE.findNavController(this).popBackStack(fast.dic.dict.R.id.searchFragment, false);
        } catch (Exception e) {
            LoggerKt.getLogger().error("Could not pop to root in onFocusedNavigation. e = " + e.getMessage(), new Object[0]);
        }
    }

    public final void getResult() {
        ListModel listModel;
        String word;
        if (handlePlanErrorForShareExtension() || (listModel = getArgs().getListModel()) == null || (word = listModel.getWord()) == null) {
            return;
        }
        if (Intrinsics.areEqual((Object) listModel.isTranslator(), (Object) true)) {
            getViewModel().getTranslatorResult(word, listModel.getMeaning());
        } else if (FDNumberUtil.INSTANCE.isNumber(word)) {
            getViewModel().getNumberResult(word);
        } else {
            getViewModel().getWordResult(word, listModel.getWordId());
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.word_result_screen.WordResultFragment$requestInterstitialAfterResult$1, reason: invalid class name */
    /* JADX INFO: compiled from: WordResultFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.word_result_screen.WordResultFragment$requestInterstitialAfterResult$1", f = "WordResultFragment.kt", i = {0, 0, 0, 0, 0}, l = {989}, m = "invokeSuspend", n = {"$this$withResumed$iv", "$this$withStateAtLeastUnchecked$iv$iv", "state$iv$iv", "lifecycleDispatcher$iv$iv", "dispatchNeeded$iv$iv"}, nl = {981}, s = {"L$0", "L$1", "L$2", "L$3", "Z$0"}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return WordResultFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0085  */
        /* JADX WARN: Code duplicated, block: B:19:0x00b8 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                LifecycleOwner viewLifecycleOwner = WordResultFragment.this.getViewLifecycleOwner();
                Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                final WordResultFragment wordResultFragment = WordResultFragment.this;
                Lifecycle lifecycle = viewLifecycleOwner.get$lifecycle();
                Lifecycle.State state = Lifecycle.State.RESUMED;
                MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
                boolean zIsDispatchNeeded = immediate.isDispatchNeeded(get$context());
                if (!zIsDispatchNeeded) {
                    if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                        throw new LifecycleDestroyedException();
                    }
                    if (lifecycle.getState().compareTo(state) >= 0) {
                        WordResultViewModel viewModel = wordResultFragment.getViewModel();
                        FragmentActivity fragmentActivityRequireActivity = wordResultFragment.requireActivity();
                        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
                        viewModel.handleFullscreenAdsForFreeUsers(fragmentActivityRequireActivity, new WordResultFragment$requestInterstitialAfterResult$1$1$1(wordResultFragment));
                        Unit unit = Unit.INSTANCE;
                    } else {
                        this.L$0 = SpillingKt.nullOutSpilledVariable(viewLifecycleOwner);
                        this.L$1 = SpillingKt.nullOutSpilledVariable(lifecycle);
                        this.L$2 = SpillingKt.nullOutSpilledVariable(state);
                        this.L$3 = SpillingKt.nullOutSpilledVariable(immediate);
                        this.Z$0 = zIsDispatchNeeded;
                        this.label = 1;
                        if (WithLifecycleStateKt.suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, immediate, new Function0<Unit>() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$requestInterstitialAfterResult$1$invokeSuspend$$inlined$withResumed$1
                            @Override // kotlin.jvm.functions.Function0
                            public final Unit invoke() {
                                WordResultViewModel viewModel2 = wordResultFragment.getViewModel();
                                FragmentActivity fragmentActivityRequireActivity2 = wordResultFragment.requireActivity();
                                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity2, "requireActivity(...)");
                                viewModel2.handleFullscreenAdsForFreeUsers(fragmentActivityRequireActivity2, new WordResultFragment$requestInterstitialAfterResult$1$1$1(wordResultFragment));
                                return Unit.INSTANCE;
                            }
                        }, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else {
                    this.L$0 = SpillingKt.nullOutSpilledVariable(viewLifecycleOwner);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(lifecycle);
                    this.L$2 = SpillingKt.nullOutSpilledVariable(state);
                    this.L$3 = SpillingKt.nullOutSpilledVariable(immediate);
                    this.Z$0 = zIsDispatchNeeded;
                    this.label = 1;
                    if (WithLifecycleStateKt.suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, immediate, new Function0<Unit>() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$requestInterstitialAfterResult$1$invokeSuspend$$inlined$withResumed$1
                        @Override // kotlin.jvm.functions.Function0
                        public final Unit invoke() {
                            WordResultViewModel viewModel2 = wordResultFragment.getViewModel();
                            FragmentActivity fragmentActivityRequireActivity2 = wordResultFragment.requireActivity();
                            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity2, "requireActivity(...)");
                            viewModel2.handleFullscreenAdsForFreeUsers(fragmentActivityRequireActivity2, new WordResultFragment$requestInterstitialAfterResult$1$1$1(wordResultFragment));
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    private final void requestInterstitialAfterResult() {
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void uiStateChanged(WordResultViewModelUIState wordResultViewModelUIState) {
        List<EnglishMeaningModel> meanings;
        EnglishMeaningModel englishMeaningModel;
        List<PersianWordDetail> wordDetails;
        PersianWordDetail persianWordDetail;
        if (wordResultViewModelUIState instanceof WordResultViewModelUIState.Loading) {
            getBinding().setLoading(true);
            return;
        }
        if (wordResultViewModelUIState instanceof WordResultViewModelUIState.TranslatorHtmlResult) {
            WordResultViewModelUIState.TranslatorHtmlResult translatorHtmlResult = (WordResultViewModelUIState.TranslatorHtmlResult) wordResultViewModelUIState;
            loadHtml(translatorHtmlResult.getHtml());
            ListModel listModel = getArgs().getListModel();
            if (listModel != null) {
                listModel.setMeaning(translatorHtmlResult.getMeaning());
            }
            getBinding().setLoading(false);
            if (translatorHtmlResult.isNoInternetMessage()) {
                return;
            }
            requestInterstitialAfterResult();
            return;
        }
        if (wordResultViewModelUIState instanceof WordResultViewModelUIState.HtmlResult) {
            WordResultViewModelUIState.HtmlResult htmlResult = (WordResultViewModelUIState.HtmlResult) wordResultViewModelUIState;
            SearchResultModel result = htmlResult.getResult();
            loadHtml(htmlResult.getHtml());
            EnglishSearchResultModel englishSearchResultModel = result.getEnglishSearchResultModel();
            String meaning = null;
            Integer wordId = englishSearchResultModel != null ? englishSearchResultModel.getWordId() : null;
            if (wordId == null) {
                PersianSearchResultModel persianSearchResultModel = result.getPersianSearchResultModel();
                wordId = persianSearchResultModel != null ? persianSearchResultModel.getWordId() : null;
            }
            PersianSearchResultModel persianSearchResultModel2 = result.getPersianSearchResultModel();
            String meaning2 = (persianSearchResultModel2 == null || (wordDetails = persianSearchResultModel2.getWordDetails()) == null || (persianWordDetail = (PersianWordDetail) CollectionsKt.firstOrNull((List) wordDetails)) == null) ? null : persianWordDetail.getMeaning();
            if (meaning2 == null) {
                EnglishSearchResultModel englishSearchResultModel2 = result.getEnglishSearchResultModel();
                if (englishSearchResultModel2 != null && (meanings = englishSearchResultModel2.getMeanings()) != null && (englishMeaningModel = (EnglishMeaningModel) CollectionsKt.firstOrNull((List) meanings)) != null) {
                    meaning = englishMeaningModel.getMeaning();
                }
            } else {
                meaning = meaning2;
            }
            ListModel listModel2 = getArgs().getListModel();
            if (listModel2 != null) {
                listModel2.setWordId(wordId);
            }
            ListModel listModel3 = getArgs().getListModel();
            if (listModel3 != null) {
                listModel3.setMeaning(meaning);
            }
            requestInterstitialAfterResult();
            return;
        }
        if (wordResultViewModelUIState instanceof WordResultViewModelUIState.HtmlNumberResult) {
            WordResultViewModelUIState.HtmlNumberResult htmlNumberResult = (WordResultViewModelUIState.HtmlNumberResult) wordResultViewModelUIState;
            loadHtml(htmlNumberResult.getHtml());
            ListModel listModel4 = getArgs().getListModel();
            if (listModel4 != null) {
                listModel4.setMeaning(htmlNumberResult.getMeaning());
            }
            getBinding().setLoading(false);
            requestInterstitialAfterResult();
            return;
        }
        if (wordResultViewModelUIState instanceof WordResultViewModelUIState.ErrorResult) {
            loadHtml(((WordResultViewModelUIState.ErrorResult) wordResultViewModelUIState).getResult());
            getBinding().setLoading(false);
        } else if (wordResultViewModelUIState instanceof WordResultViewModelUIState.ErrorUnauthorized) {
            checkUserIsLoginThenShowLoginPage();
        }
    }

    private final void loadHtml(String html) {
        if (html == null) {
            return;
        }
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        boolean zIsDarkThemeOn = ContextExtKt.isDarkThemeOn(contextRequireContext);
        AdvancedWebView advancedWebView = this.resultWebView;
        if (advancedWebView != null) {
            advancedWebView.loadDataWithBaseURL(null, StringExtKt.changeHtmlThemeMode(html, zIsDarkThemeOn), "text/html", "UTF-8", AndroidWebViewClient.BLANK_PAGE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void favoriteStateChanged(WordResultViewModelFavoriteUIState state) {
        View root;
        Window window;
        if (state instanceof WordResultViewModelFavoriteUIState.Loading) {
            getBinding().setLoading(true);
            return;
        }
        getBinding().setLoading(false);
        if (state instanceof WordResultViewModelFavoriteUIState.RemoveFromFavorite) {
            AdvancedWebView advancedWebView = this.resultWebView;
            if (advancedWebView != null) {
                advancedWebView.evaluateJavascript("deselectFav();", null);
                return;
            }
            return;
        }
        if (state instanceof WordResultViewModelFavoriteUIState.AddToFavorite) {
            FolderModel folder = ((WordResultViewModelFavoriteUIState.AddToFavorite) state).getFolder();
            if (isModal()) {
                Dialog dialog = getDialog();
                root = (dialog == null || (window = dialog.getWindow()) == null) ? null : window.getDecorView();
            } else {
                root = getBinding().getRoot();
            }
            int i = fast.dic.dict.R.string.add_to_x_directory;
            String name = folder.getName();
            String string = getString(i, name != null ? name : "");
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            if (root == null) {
                root = getBinding().getRoot();
                Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
            }
            new AddedToDirectorySnackBar(root, string, folder, this).show();
            AdvancedWebView advancedWebView2 = this.resultWebView;
            if (advancedWebView2 != null) {
                advancedWebView2.evaluateJavascript("selectFav('" + folder.getName() + "');", null);
                return;
            }
            return;
        }
        if (state instanceof WordResultViewModelFavoriteUIState.SelectFolder) {
            String documentId = ((WordResultViewModelFavoriteUIState.SelectFolder) state).getDocumentId();
            AdvancedWebView advancedWebView3 = this.resultWebView;
            if (advancedWebView3 != null) {
                advancedWebView3.evaluateJavascript("deselectFav();", null);
            }
            FragmentActivity activity = getActivity();
            FragmentManager supportFragmentManager = activity != null ? activity.getSupportFragmentManager() : null;
            SelectFavoriteFolderModal selectFavoriteFolderModal = new SelectFavoriteFolderModal();
            selectFavoriteFolderModal.setWordId(documentId);
            if (supportFragmentManager != null) {
                selectFavoriteFolderModal.show(supportFragmentManager, "");
            }
        }
    }

    private final boolean checkUserIsLoginThenShowLoginPage() {
        CustomProgressbar loadingSpinner = getBinding().loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
        ViewExtKt.hideMe$default(loadingSpinner, 0L, 1, null);
        NavControllerExtensionKt.openModal$default(FragmentKt.findNavController(this), fast.dic.dict.R.id.loginSignupFragment, null, 2, null);
        return false;
    }

    private final WordResultFragment$lazyWebClient$2$1 getLazyWebClient() {
        return (WordResultFragment$lazyWebClient$2$1) this.lazyWebClient.getValue();
    }

    static final WordResultFragment$lazyWebClient$2$1 lazyWebClient_delegate$lambda$0(WordResultFragment wordResultFragment) {
        return new WordResultFragment$lazyWebClient$2$1(wordResultFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleSentencePronunciation(String url) throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null || !fDParseUser.isAuthenticated()) {
            FragmentManager supportFragmentManager = requireActivity().getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            new FullscreenModal(true, getString(fast.dic.dict.R.string.pronunciation_of_sample_sentences_title), getString(fast.dic.dict.R.string.pronunciation_of_sample_sentences_desc), getString(fast.dic.dict.R.string.login_or_signup), null, null, null, null, null, 496, null).show(supportFragmentManager, "");
            diactiveSound();
            return;
        }
        if (checkLimitation()) {
            getViewModel().validRewardedAdsForSentencePronunciation();
            FragmentManager supportFragmentManager2 = requireActivity().getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager2, "getSupportFragmentManager(...)");
            final FullscreenModal fullscreenModal = new FullscreenModal(true, getString(fast.dic.dict.R.string.pronunciation_of_sample_sentences_title), getString(fast.dic.dict.R.string.pronunciation_of_sample_sentences_limitation_desc), getString(fast.dic.dict.R.string.pronunciation_of_sample_sentences_cta_title), ConstKt.FD_PRICING_SCREEN, null, null, null, null, 32, null);
            fullscreenModal.show(supportFragmentManager2, "");
            fullscreenModal.setOnDismissed(new Function1() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda12
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WordResultFragment.handleSentencePronunciation$lambda$1$0(fullscreenModal, ((Boolean) obj).booleanValue());
                }
            });
            diactiveSound();
            return;
        }
        if (!getViewModel().isInternetAvailable()) {
            Context context = getContext();
            if (context == null) {
                return;
            }
            FDAlertManger.INSTANCE.showNotConnectedToInternetAlert(context);
            diactiveSound();
            return;
        }
        audioSentenceClickedOnline(url);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleSentencePronunciation$lambda$1$0(FullscreenModal fullscreenModal, boolean z) {
        if (z) {
            FragmentKt.findNavController(fullscreenModal).navigate(fast.dic.dict.R.id.newPricingFragment);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isSentencePronunciation(String url) {
        String str = url;
        return StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.REQUEST_PREFIX_SENTENCE_EN_BR, false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.REQUEST_PREFIX_SENTENCE_EN_AM, false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.REQUEST_PREFIX_SENTENCE_FA_BR, false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.REQUEST_PREFIX_SENTENCE_FA_AM, false, 2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleWordPronunciation(String url) {
        ListModel listModel;
        String meaning;
        ListModel listModel2;
        final String str;
        String str2;
        String word;
        boolean zContains$default = StringsKt.contains$default((CharSequence) url, (CharSequence) ConstKt.FD_BR_SOUND_DEEPLINK, false, 2, (Object) null);
        if (getViewModel().isOfflineSpeech()) {
            ListModel listModel3 = getArgs().getListModel();
            word = listModel3 != null ? listModel3.getWord() : null;
            Intrinsics.checkNotNull(word);
            speakOut(word, zContains$default);
            return;
        }
        if (getViewModel().getState().getValue() instanceof WordResultViewModelUIState.HtmlNumberResult) {
            WordResultViewModelUIState value = getViewModel().getState().getValue();
            Intrinsics.checkNotNull(value, "null cannot be cast to non-null type fast.dic.dict.presentation.word_result_screen.WordResultViewModelUIState.HtmlNumberResult");
            String word2 = ((WordResultViewModelUIState.HtmlNumberResult) value).getWord();
            if (word2 == null) {
                ListModel listModel4 = getArgs().getListModel();
                word = listModel4 != null ? listModel4.getWord() : null;
                Intrinsics.checkNotNull(word);
                word2 = word;
            }
            speakOut(word2, zContains$default);
            return;
        }
        String str3 = "";
        if (noPronunciation(url) || Intrinsics.areEqual(url, ConstKt.FD_BR_SOUND_DEEPLINK) || Intrinsics.areEqual(url, ConstKt.FD_AM_SOUND_DEEPLINK)) {
            FDLanguageWord.Companion companion = FDLanguageWord.INSTANCE;
            ListModel listModel5 = getArgs().getListModel();
            if (!companion.isEnglish(listModel5 != null ? listModel5.getWord() : null) ? !((listModel = getArgs().getListModel()) == null || (meaning = listModel.getMeaning()) == null) : !((listModel2 = getArgs().getListModel()) == null || (meaning = listModel2.getWord()) == null)) {
                str3 = meaning;
            }
            speakOut(str3, zContains$default);
            return;
        }
        if (zContains$default) {
            str = url;
            String[] strArr = (String[]) StringsKt.split$default((CharSequence) StringsKt.replace$default(str, ConstKt.FD_BR_SOUND_DEEPLINK, "", false, 4, (Object) null), new String[]{"__________"}, false, 0, 6, (Object) null).toArray(new String[0]);
            str2 = "http://cdn.fastdic.com/c-en-audios/uk/mp3/" + (strArr.length > 1 ? strArr[1] : "") + ".mp3";
        } else {
            str = url;
            String[] strArr2 = (String[]) StringsKt.split$default((CharSequence) StringsKt.replace$default(str, ConstKt.FD_AM_SOUND_DEEPLINK, "", false, 4, (Object) null), new String[]{"__________"}, false, 0, 6, (Object) null).toArray(new String[0]);
            str2 = "http://cdn.fastdic.com/c-en-audios/us/mp3/" + (strArr2.length > 1 ? strArr2[1] : "") + ".mp3";
        }
        if (!getViewModel().isInternetAvailable()) {
            if (getContext() == null) {
                return;
            }
            FDAlertManger.INSTANCE.showNotConnectedToInternetAlert(requireContext());
            diactiveSound();
            return;
        }
        FDAudioPlayerManager.INSTANCE.getGet().audioPlayerAsync(str2, getContext(), new MediaPlayer.OnCompletionListener() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda13
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer) {
                WordResultFragment.handleWordPronunciation$lambda$0(str, this, mediaPlayer);
            }
        });
    }

    static final void handleWordPronunciation$lambda$0(String str, WordResultFragment wordResultFragment, MediaPlayer mediaPlayer) {
        LoggerKt.getLogger().debug("Playing %s audio is completed.", str);
        wordResultFragment.diactiveSound();
    }

    private final boolean noPronunciation(String url) {
        return StringsKt.contains$default((CharSequence) url, (CharSequence) "-1__________", false, 2, (Object) null);
    }

    private final void speakOut(String wordToSpeech, boolean isBritish) {
        String str;
        try {
            getOfflinePlayer().stop();
            diactiveSound();
            if (isBritish) {
                str = "br";
            } else {
                str = "us";
            }
            getOfflinePlayer().speak(wordToSpeech, str);
        } catch (Exception e) {
            e.printStackTrace();
            LoggerKt.getLogger().error("Error play sound " + e.getMessage(), new Object[0]);
        }
    }

    private final void diactiveSound() {
        AdvancedWebView advancedWebView = this.resultWebView;
        if (advancedWebView != null) {
            advancedWebView.evaluateJavascript("sounddiactive();", null);
        }
    }

    private final boolean checkLimitation() throws ParseException {
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        boolean z = new LocalStorage(contextRequireContext).getSentencePronunciationLimitation() <= 0;
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null) {
            return z;
        }
        return z && !fDParseUser.hasPlan2Or3();
    }

    private final void decreaseLimitation() throws ParseException {
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null || !fDParseUser.hasPlan2Or3()) {
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            LocalStorage localStorage = new LocalStorage(contextRequireContext);
            int sentencePronunciationLimitation = localStorage.getSentencePronunciationLimitation();
            if (sentencePronunciationLimitation <= 0) {
                localStorage.setSentencePronunciationLimitation(0);
            } else {
                localStorage.setSentencePronunciationLimitation(sentencePronunciationLimitation - 1);
            }
        }
    }

    private final void audioSentenceClickedOnline(final String url) throws ParseException {
        String str;
        String str2 = url;
        String str3 = (StringsKt.contains$default((CharSequence) str2, (CharSequence) ConstKt.REQUEST_PREFIX_SENTENCE_EN_BR, false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str2, (CharSequence) ConstKt.REQUEST_PREFIX_SENTENCE_FA_BR, false, 2, (Object) null)) ? TranslateLanguage.UKRAINIAN : "us";
        if (StringsKt.contains$default((CharSequence) str2, (CharSequence) ConstKt.REQUEST_PREFIX_SENTENCE_EN_BR, false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str2, (CharSequence) ConstKt.REQUEST_PREFIX_SENTENCE_EN_AM, false, 2, (Object) null)) {
            str = "english-sentence";
        } else {
            str = "persian-sentence";
        }
        String str4 = ConstKt.URL_AUDIO_SENTENCE + str + "/" + str3 + "/" + StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(url, ConstKt.REQUEST_PREFIX_SENTENCE_EN_BR, "", false, 4, (Object) null), ConstKt.REQUEST_PREFIX_SENTENCE_EN_AM, "", false, 4, (Object) null), ConstKt.REQUEST_PREFIX_SENTENCE_FA_BR, "", false, 4, (Object) null), ConstKt.REQUEST_PREFIX_SENTENCE_FA_AM, "", false, 4, (Object) null) + ".mp3";
        decreaseLimitation();
        FDAudioPlayerManager.INSTANCE.getGet().audioPlayerAsync(str4, getContext(), new MediaPlayer.OnCompletionListener() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$$ExternalSyntheticLambda11
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer) {
                WordResultFragment.audioSentenceClickedOnline$lambda$0(url, this, mediaPlayer);
            }
        });
    }

    static final void audioSentenceClickedOnline$lambda$0(String str, WordResultFragment wordResultFragment, MediaPlayer mediaPlayer) {
        LoggerKt.getLogger().debug("Playing %s audio is completed.", str);
        AdvancedWebView advancedWebView = wordResultFragment.resultWebView;
        if (advancedWebView != null) {
            advancedWebView.evaluateJavascript("sounddiactive();", null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void copyTranslation() {
        getViewModel().triggerTapHaptic();
        if (getViewModel().getState().getValue() instanceof WordResultViewModelUIState.TranslatorHtmlResult) {
            WordResultViewModelUIState value = getViewModel().getState().getValue();
            Intrinsics.checkNotNull(value, "null cannot be cast to non-null type fast.dic.dict.presentation.word_result_screen.WordResultViewModelUIState.TranslatorHtmlResult");
            Object systemService = ContextCompat.getSystemService(requireContext(), ClipboardManager.class);
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
            ClipData clipDataNewPlainText = ClipData.newPlainText("Fast Dictionary", StringExtKt.removeHtmlBreakingLines(((WordResultViewModelUIState.TranslatorHtmlResult) value).getMeaning()));
            Intrinsics.checkNotNullExpressionValue(clipDataNewPlainText, "newPlainText(...)");
            ((ClipboardManager) systemService).setPrimaryClip(clipDataNewPlainText);
            Toast.makeText(requireContext(), getString(fast.dic.dict.R.string.translated_content_successfully_copied), 0).show();
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0104 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x0106  */
    /* JADX WARN: Code duplicated, block: B:45:0x010b  */
    /* JADX WARN: Code duplicated, block: B:57:0x012f  */
    /* JADX WARN: Code duplicated, block: B:60:0x0136  */
    /* JADX WARN: Code duplicated, block: B:63:0x0168  */
    /* JADX WARN: Code duplicated, block: B:66:0x0172  */
    private final void shareAction() {
        String word;
        SearchResultModel result;
        PersianSearchResultModel persianSearchResultModel;
        PersianSearchResultModel persianSearchResultModel2;
        List<PersianWordDetail> wordDetails;
        PersianSearchResultModel persianSearchResultModel3;
        List<EnglishMeaningModel> wordDetails2;
        String str;
        List<PosModel> pos;
        ListModel listModel = getArgs().getListModel();
        String str2 = "";
        if (listModel == null || (word = listModel.getWord()) == null) {
            word = "";
        }
        if (getViewModel().getState().getValue() instanceof WordResultViewModelUIState.HtmlResult) {
            WordResultViewModelUIState value = getViewModel().getState().getValue();
            Intrinsics.checkNotNull(value, "null cannot be cast to non-null type fast.dic.dict.presentation.word_result_screen.WordResultViewModelUIState.HtmlResult");
            result = ((WordResultViewModelUIState.HtmlResult) value).getResult();
        } else {
            result = null;
        }
        if ((result != null ? result.getEnglishSearchResultModel() : null) == null) {
            if (result != null) {
                persianSearchResultModel = result.getPersianSearchResultModel();
            } else {
                persianSearchResultModel = null;
            }
            if (persianSearchResultModel != null && (persianSearchResultModel2 = result.getPersianSearchResultModel()) != null && (wordDetails = persianSearchResultModel2.getWordDetails()) != null && (!wordDetails.isEmpty())) {
                persianSearchResultModel3 = result.getPersianSearchResultModel();
                if (persianSearchResultModel3 != null || (word = persianSearchResultModel3.getWord()) == null) {
                    word = "";
                }
                PersianSearchResultModel persianSearchResultModel4 = result.getPersianSearchResultModel();
                wordDetails2 = persianSearchResultModel4 != null ? persianSearchResultModel4.getWordDetails() : null;
                str = (getString(fast.dic.dict.R.string.the_meaning_of_words) + " " + word) + IOUtils.LINE_SEPARATOR_UNIX;
                if (wordDetails2 != null) {
                    for (PersianWordDetail persianWordDetail : wordDetails2) {
                        pos = persianWordDetail.getPos();
                        if (pos == null && pos.size() == 1) {
                            List<PosModel> pos2 = persianWordDetail.getPos();
                            Intrinsics.checkNotNull(pos2);
                            PosModel posModel = pos2.get(0);
                            String pos3 = posModel.getPos();
                            if (pos3 == null && (pos3 = posModel.getPosEquivalent()) == null) {
                                pos3 = "";
                            }
                            str = !StringsKt.isBlank(pos3) ? str + pos3 + persianWordDetail.getPersianMeanings() + IOUtils.LINE_SEPARATOR_UNIX : str + persianWordDetail.getPersianMeanings() + IOUtils.LINE_SEPARATOR_UNIX;
                        }
                        str = str + persianWordDetail.getMeaning() + "\n\n";
                    }
                }
                str2 = str;
            }
        } else {
            EnglishSearchResultModel englishSearchResultModel = result.getEnglishSearchResultModel();
            if ((englishSearchResultModel != null ? englishSearchResultModel.getWord() : null) != null) {
                EnglishSearchResultModel englishSearchResultModel2 = result.getEnglishSearchResultModel();
                wordDetails2 = englishSearchResultModel2 != null ? englishSearchResultModel2.getMeanings() : null;
                str = (getString(fast.dic.dict.R.string.the_meaning_of_words) + " " + word) + IOUtils.LINE_SEPARATOR_UNIX;
                if (wordDetails2 != null) {
                    for (EnglishMeaningModel englishMeaningModel : wordDetails2) {
                        List<PosModel> pos4 = englishMeaningModel.getPos();
                        if (pos4 != null && pos4.size() == 1) {
                            List<PosModel> pos5 = englishMeaningModel.getPos();
                            Intrinsics.checkNotNull(pos5);
                            PosModel posModel2 = pos5.get(0);
                            String pos6 = posModel2.getPos();
                            if (pos6 == null && (pos6 = posModel2.getPosEquivalent()) == null) {
                                pos6 = "";
                            }
                            if (!StringsKt.isBlank(pos6)) {
                                str = str + pos6 + " ";
                            }
                        }
                        str = str + englishMeaningModel.getMeaning() + IOUtils.LINE_SEPARATOR_UNIX;
                    }
                }
            } else {
                if (result != null) {
                    persianSearchResultModel = result.getPersianSearchResultModel();
                } else {
                    persianSearchResultModel = null;
                }
                if (persianSearchResultModel != null) {
                    persianSearchResultModel3 = result.getPersianSearchResultModel();
                    if (persianSearchResultModel3 != null) {
                        word = "";
                    } else {
                        word = "";
                    }
                    PersianSearchResultModel persianSearchResultModel5 = result.getPersianSearchResultModel();
                    if (persianSearchResultModel5 != null) {
                    }
                    str = (getString(fast.dic.dict.R.string.the_meaning_of_words) + " " + word) + IOUtils.LINE_SEPARATOR_UNIX;
                    if (wordDetails2 != null) {
                        while (r3.hasNext()) {
                            pos = persianWordDetail.getPos();
                            if (pos == null) {
                            }
                            str = str + persianWordDetail.getMeaning() + "\n\n";
                        }
                    }
                }
            }
            str2 = str;
        }
        String str3 = str2 + "https://fastdic.com/word/" + word;
        FragmentActivity activity = getActivity();
        if (activity != null) {
            FragmentExtensionKt.shareString(activity, word, str3);
        }
    }

    public final boolean handlePlanErrorForShareExtension() throws ParseException {
        if (!getArgs().getFromShare()) {
            return false;
        }
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser != null && !fDParseUser.hasPlan2Or3()) {
            WordResultViewModel viewModel = getViewModel();
            String string = getString(fast.dic.dict.R.string.share_extension_error_title);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = getString(fast.dic.dict.R.string.force_to_have_plan2_for_share_extension);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            viewModel.generateErrorHtml(string, string2);
            return true;
        }
        if ((fDParseUser != null ? fDParseUser.getSessionToken() : null) != null) {
            return false;
        }
        WordResultViewModel viewModel2 = getViewModel();
        String string3 = getString(fast.dic.dict.R.string.share_extension_error_title);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        String string4 = getString(fast.dic.dict.R.string.share_extension_session_error);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        viewModel2.generateErrorHtml(string3, string4);
        return true;
    }

    @Override // androidx.core.view.MenuProvider
    public void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(menuInflater, "menuInflater");
        menuInflater.inflate(fast.dic.dict.R.menu.word_result_menu, menu);
    }

    @Override // androidx.core.view.MenuProvider
    public boolean onMenuItemSelected(MenuItem menuItem) throws ParseException {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            dismiss();
            return true;
        }
        if (itemId == fast.dic.dict.R.id.shareItem) {
            shareAction();
            return true;
        }
        if (itemId != fast.dic.dict.R.id.resultOrderItem) {
            return false;
        }
        showResultOrderModal();
        return true;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        SavedStateHandle savedStateHandle;
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        NavBackStackEntry previousBackStackEntry = FragmentKt.findNavController(this).getPreviousBackStackEntry();
        if (previousBackStackEntry != null && (savedStateHandle = previousBackStackEntry.getSavedStateHandle()) != null) {
            savedStateHandle.set(DISMISS_KEY, true);
        }
        super.onDismiss(dialog);
    }
}
