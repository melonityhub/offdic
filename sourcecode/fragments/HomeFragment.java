package fast.dic.dict.fragments;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
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
import androidx.navigation.NavOptions;
import androidx.navigation.fragment.FragmentKt;
import androidx.navigation.fragment.FragmentNavigatorExtrasKt;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentHomeBinding;
import fast.dic.dict.models.api.WodApiModel;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.presentation.word_result_screen.WordResultFragmentArgs;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.viewmodels.fragments.HomeViewModel;
import fast.dic.dict.viewmodels.fragments.HomeViewModelState;
import fast.dic.dict.views.SearchBarView;
import fast.dic.dict.views.WordOfTheDayView;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: HomeFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00132\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001d\u001a\u00020\u001bH\u0002J\b\u0010\u001e\u001a\u00020\u001bH\u0002J\b\u0010\u001f\u001a\u00020\u001bH\u0002J\b\u0010 \u001a\u00020\u001bH\u0002J\u0012\u0010!\u001a\u00020\u001b2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\f\u001a\u00020\r8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u000fÊ\u0001\u0002\b%¨\u0006$"}, d2 = {"Lfast/dic/dict/fragments/HomeFragment;", "Lfast/dic/dict/bases/BaseBindingFragment;", "<init>", "()V", "binding", "Lfast/dic/dict/databinding/FragmentHomeBinding;", "getBinding", "()Lfast/dic/dict/databinding/FragmentHomeBinding;", "setBinding", "(Lfast/dic/dict/databinding/FragmentHomeBinding;)V", "checkKeyboardIsReady", "", "viewModel", "Lfast/dic/dict/viewmodels/fragments/HomeViewModel;", "getViewModel", "()Lfast/dic/dict/viewmodels/fragments/HomeViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "handleClickOnWordOfTheDay", "doWhenSearchBarFocused", "checkAndFillSearchBarWithArgs", "observeOnViewModel", "fillData", "message", "Lfast/dic/dict/models/api/WodApiModel;", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class HomeFragment extends Hilt_HomeFragment {
    public FragmentHomeBinding binding;
    private boolean checkKeyboardIsReady = true;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public HomeFragment() {
        final HomeFragment homeFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.fragments.HomeFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return homeFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.fragments.HomeFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(homeFragment, Reflection.getOrCreateKotlinClass(HomeViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.fragments.HomeFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.fragments.HomeFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.fragments.HomeFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = homeFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    public final FragmentHomeBinding getBinding() {
        FragmentHomeBinding fragmentHomeBinding = this.binding;
        if (fragmentHomeBinding != null) {
            return fragmentHomeBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding(FragmentHomeBinding fragmentHomeBinding) {
        Intrinsics.checkNotNullParameter(fragmentHomeBinding, "<set-?>");
        this.binding = fragmentHomeBinding;
    }

    private final HomeViewModel getViewModel() {
        return (HomeViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentHomeBinding fragmentHomeBindingInflate = FragmentHomeBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentHomeBindingInflate, "inflate(...)");
        setBinding(fragmentHomeBindingInflate);
        FrameLayout root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        SavedStateHandle savedStateHandle;
        MutableLiveData liveData;
        Context context;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        observeOnViewModel();
        WordOfTheDayView wodView = getBinding().wodView;
        Intrinsics.checkNotNullExpressionValue(wodView, "wodView");
        ViewExtKt.hideMeNow(wodView);
        handleClickOnWordOfTheDay();
        WordOfTheDayView wordOfTheDayView = getBinding().wodView;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        wordOfTheDayView.verticallyCenter(contextRequireContext);
        SearchBarView searchBarView = getBinding().searchBarView;
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        searchBarView.verticallyCenter(contextRequireContext2);
        doWhenSearchBarFocused();
        checkAndFillSearchBarWithArgs();
        getViewModel().getWordOfDayData();
        if (this.checkKeyboardIsReady && (context = getContext()) != null && new LocalStorage(context).getMakeKeyboardOpen() && !getBinding().searchBarView.getIsOpenedBar()) {
            this.checkKeyboardIsReady = false;
            getBinding().searchBarView.setWithAnimation(false);
            getBinding().searchBarView.requestForFocus();
            getBinding().searchBarView.showKeyboard();
        }
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(this).getCurrentBackStackEntry();
        if (currentBackStackEntry == null || (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) == null || (liveData = savedStateHandle.getLiveData("searchBarValue")) == null) {
            return;
        }
        liveData.observe(getViewLifecycleOwner(), new HomeFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.fragments.HomeFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HomeFragment.onViewCreated$lambda$1(this.f$0, (String) obj);
            }
        }));
    }

    static final Unit onViewCreated$lambda$1(HomeFragment homeFragment, String str) {
        SearchBarView searchBarView = homeFragment.getBinding().searchBarView;
        Intrinsics.checkNotNull(str);
        searchBarView.setCurrentWord(str);
        return Unit.INSTANCE;
    }

    private final void handleClickOnWordOfTheDay() {
        getBinding().wodView.setOnClick(new Function1() { // from class: fast.dic.dict.fragments.HomeFragment$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HomeFragment.handleClickOnWordOfTheDay$lambda$0(this.f$0, (String) obj);
            }
        });
    }

    static final Unit handleClickOnWordOfTheDay$lambda$0(HomeFragment homeFragment, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        NavControllerExtensionKt.openModal(FragmentKt.findNavController(homeFragment), R.id.wordResultModal, new WordResultFragmentArgs(new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, it, null, 0, 1835007, null), false, false, 6, null).toBundle());
        return Unit.INSTANCE;
    }

    private final void doWhenSearchBarFocused() {
        getBinding().searchBarView.setOnStartOpeningMode(new Function0() { // from class: fast.dic.dict.fragments.HomeFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HomeFragment.doWhenSearchBarFocused$lambda$0(this.f$0);
            }
        });
        getBinding().searchBarView.setClearButtonClickedListener(new Function0() { // from class: fast.dic.dict.fragments.HomeFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(HomeFragment.doWhenSearchBarFocused$lambda$1(this.f$0));
            }
        });
    }

    static final Unit doWhenSearchBarFocused$lambda$0(HomeFragment homeFragment) {
        WordOfTheDayView wodView = homeFragment.getBinding().wodView;
        Intrinsics.checkNotNullExpressionValue(wodView, "wodView");
        ViewExtKt.hideMe$default(wodView, 0L, 1, null);
        ViewCompat.setTransitionName(homeFragment.getBinding().searchBarView, "searchBarView");
        FragmentKt.findNavController(homeFragment).navigate(R.id.searchFragment, new SearchFragmentArgs(homeFragment.getBinding().searchBarView.getCurrentWord(), false).toBundle(), (NavOptions) null, FragmentNavigatorExtrasKt.FragmentNavigatorExtras(TuplesKt.to(homeFragment.getBinding().searchBarView, "searchBarView")));
        return Unit.INSTANCE;
    }

    static final boolean doWhenSearchBarFocused$lambda$1(HomeFragment homeFragment) {
        homeFragment.getBinding().searchBarView.getOnStartOpeningMode().invoke();
        return true;
    }

    private final void checkAndFillSearchBarWithArgs() {
        String str = "";
        if (getArguments() != null) {
            HomeFragmentArgs.Companion companion = HomeFragmentArgs.INSTANCE;
            Bundle bundleRequireArguments = requireArguments();
            Intrinsics.checkNotNullExpressionValue(bundleRequireArguments, "requireArguments(...)");
            String word = companion.fromBundle(bundleRequireArguments).getWord();
            if (word != null) {
                str = word;
            }
        }
        SearchBarView searchBarView = getBinding().searchBarView;
        Intrinsics.checkNotNullExpressionValue(searchBarView, "searchBarView");
        SearchBarView.setText$default(searchBarView, str, false, 2, null);
    }

    private final void observeOnViewModel() {
        getViewModel().getData().observe(getViewLifecycleOwner(), new HomeFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.fragments.HomeFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HomeFragment.observeOnViewModel$lambda$0(this.f$0, (HomeViewModelState) obj);
            }
        }));
    }

    static final Unit observeOnViewModel$lambda$0(HomeFragment homeFragment, HomeViewModelState homeViewModelState) {
        if (homeViewModelState instanceof HomeViewModelState.Data) {
            homeFragment.fillData(((HomeViewModelState.Data) homeViewModelState).getResponse());
        }
        return Unit.INSTANCE;
    }

    private final void fillData(WodApiModel message) {
        if (message == null) {
            WordOfTheDayView wodView = getBinding().wodView;
            Intrinsics.checkNotNullExpressionValue(wodView, "wodView");
            ViewExtKt.hideMeNow(wodView);
            return;
        }
        WordOfTheDayView wodView2 = getBinding().wodView;
        Intrinsics.checkNotNullExpressionValue(wodView2, "wodView");
        ViewExtKt.showMe$default(wodView2, 0L, 1, null);
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        getBinding().wodView.setDate(new LocalStorage(contextRequireContext).currentLanguageIsPersian() ? message.getDateJalali() : message.getDate());
        getBinding().wodView.setTodayWord(message.getWord());
    }
}
