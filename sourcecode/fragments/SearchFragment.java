package fast.dic.dict.fragments;

import android.R;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.ActionBar;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
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
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import androidx.transition.TransitionInflater;
import com.fastdic.android.modules.fdnumberstowords.ConvertNumberResult;
import com.fastdic.android.modules.fdnumberstowords.FDEnNumberToWords;
import com.fastdic.android.modules.fdnumberstowords.FDPeNumberToWords;
import com.fastdic.android.modules.fdnumberstowords.utils.FDNumberUtil;
import com.ironsource.U3;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.activities.MainActivity;
import fast.dic.dict.adapters.WordSuggestionAdapter;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.databinding.FragmentSearchBinding;
import fast.dic.dict.domain.entity.WordSortEnum;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.models.eventbus.SearchBarStatus;
import fast.dic.dict.models.eventbus.SearchBarStatusEnum;
import fast.dic.dict.presentation.common.SyncUIState;
import fast.dic.dict.presentation.common.SyncViewModel;
import fast.dic.dict.presentation.word_result_screen.WordResultFragmentArgs;
import fast.dic.dict.utils.FDCategory;
import fast.dic.dict.utils.FragmentExtensionKt;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
import fast.dic.dict.views.SearchBarView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import javax.inject.Inject;
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
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: SearchFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.H\u0016J<\u0010/\u001a\u0002002\u0006\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u0001042\b\u0010-\u001a\u0004\u0018\u00010.H\u0017b\u0016\b5\u0012\u0012\b6\u0012\u000e\b\fJ\u0004\b\b(7J\u0004\b\b(8J\u001a\u00109\u001a\u00020,2\u0006\u0010:\u001a\u0002002\b\u0010-\u001a\u0004\u0018\u00010.H\u0016J\b\u0010;\u001a\u00020,H\u0002J\b\u0010<\u001a\u00020,H\u0016J\b\u0010=\u001a\u00020,H\u0016J\b\u0010>\u001a\u00020,H\u0016J\b\u0010?\u001a\u00020\u0005H\u0016J\"\u0010@\u001a\u00020,2\u0006\u0010A\u001a\u00020BH\u0017b\u0010\b5\u0012\f\b6\u0012\b\b\fJ\u0004\b\b(CJ\u0010\u0010D\u001a\u00020,2\u0006\u0010E\u001a\u00020\u0007H\u0002J\u0010\u0010F\u001a\u00020,2\u0006\u0010E\u001a\u00020\u0007H\u0002J\u0016\u0010G\u001a\u00020,2\f\u0010H\u001a\b\u0012\u0004\u0012\u00020J0IH\u0002J\u000e\u0010K\u001a\u00020,2\u0006\u0010L\u001a\u00020MR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R#\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R#\u0010\u0019\u001a\u00020\u001a8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u001b\u0010\u001f\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b!\u0010\"R#\u0010%\u001a\u00020&8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*Ê\u0001\u0002\bO¨\u0006N"}, d2 = {"Lfast/dic/dict/fragments/SearchFragment;", "Lfast/dic/dict/bases/BaseBindingFragment;", "<init>", "()V", "hasResult", "", "wordParam", "", "history", "Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "getHistory", "()Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "setHistory", "(Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V", "Ljavax/inject/Inject;", "fromHistory", "Ljava/lang/Boolean;", "binding", "Lfast/dic/dict/databinding/FragmentSearchBinding;", "getBinding", "()Lfast/dic/dict/databinding/FragmentSearchBinding;", "setBinding", "(Lfast/dic/dict/databinding/FragmentSearchBinding;)V", "lastWord", "Ljava/util/concurrent/atomic/AtomicReference;", "databaseHelper", "Lfast/dic/dict/database/FDDatabaseManager;", "getDatabaseHelper", "()Lfast/dic/dict/database/FDDatabaseManager;", "setDatabaseHelper", "(Lfast/dic/dict/database/FDDatabaseManager;)V", "syncViewModel", "Lfast/dic/dict/presentation/common/SyncViewModel;", "getSyncViewModel", "()Lfast/dic/dict/presentation/common/SyncViewModel;", "syncViewModel$delegate", "Lkotlin/Lazy;", "suggestionAdapter", "Lfast/dic/dict/adapters/WordSuggestionAdapter;", "getSuggestionAdapter", "()Lfast/dic/dict/adapters/WordSuggestionAdapter;", "setSuggestionAdapter", "(Lfast/dic/dict/adapters/WordSuggestionAdapter;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "Landroid/annotation/SuppressLint;", "value", "CheckResult", "SetJavaScriptEnabled", "onViewCreated", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "syncCouchBaseData", "onDestroy", U3.i.u0, "onStop", "onBackPressed", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "NotifyDataSetChanged", "searchWord", "word", "getSuggestedWords", "uiProcessOnSearchSuggestion", "responseSuggestedWords", "", "Lfast/dic/dict/models/database/ListModel;", "onMessageSearchBarStatusFromResultView", "message", "Lfast/dic/dict/models/eventbus/SearchBarStatus;", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class SearchFragment extends Hilt_SearchFragment {
    public FragmentSearchBinding binding;

    @Inject
    public FDDatabaseManager databaseHelper;
    private Boolean fromHistory;

    @Inject
    public FDHistory history;

    @Inject
    public WordSuggestionAdapter suggestionAdapter;

    /* JADX INFO: renamed from: syncViewModel$delegate, reason: from kotlin metadata */
    private final Lazy syncViewModel;
    private String wordParam;
    private boolean hasResult = true;
    private final AtomicReference<String> lastWord = new AtomicReference<>();

    public SearchFragment() {
        final SearchFragment searchFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.fragments.SearchFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return searchFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.fragments.SearchFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.syncViewModel = FragmentViewModelLazyKt.createViewModelLazy(searchFragment, Reflection.getOrCreateKotlinClass(SyncViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.fragments.SearchFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.fragments.SearchFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.fragments.SearchFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = searchFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    public final FDHistory getHistory() {
        FDHistory fDHistory = this.history;
        if (fDHistory != null) {
            return fDHistory;
        }
        Intrinsics.throwUninitializedPropertyAccessException("history");
        return null;
    }

    public final void setHistory(FDHistory fDHistory) {
        Intrinsics.checkNotNullParameter(fDHistory, "<set-?>");
        this.history = fDHistory;
    }

    public final FragmentSearchBinding getBinding() {
        FragmentSearchBinding fragmentSearchBinding = this.binding;
        if (fragmentSearchBinding != null) {
            return fragmentSearchBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding(FragmentSearchBinding fragmentSearchBinding) {
        Intrinsics.checkNotNullParameter(fragmentSearchBinding, "<set-?>");
        this.binding = fragmentSearchBinding;
    }

    public final FDDatabaseManager getDatabaseHelper() {
        FDDatabaseManager fDDatabaseManager = this.databaseHelper;
        if (fDDatabaseManager != null) {
            return fDDatabaseManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("databaseHelper");
        return null;
    }

    public final void setDatabaseHelper(FDDatabaseManager fDDatabaseManager) {
        Intrinsics.checkNotNullParameter(fDDatabaseManager, "<set-?>");
        this.databaseHelper = fDDatabaseManager;
    }

    private final SyncViewModel getSyncViewModel() {
        return (SyncViewModel) this.syncViewModel.getValue();
    }

    public final WordSuggestionAdapter getSuggestionAdapter() {
        WordSuggestionAdapter wordSuggestionAdapter = this.suggestionAdapter;
        if (wordSuggestionAdapter != null) {
            return wordSuggestionAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("suggestionAdapter");
        return null;
    }

    public final void setSuggestionAdapter(WordSuggestionAdapter wordSuggestionAdapter) {
        Intrinsics.checkNotNullParameter(wordSuggestionAdapter, "<set-?>");
        this.suggestionAdapter = wordSuggestionAdapter;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: onCreate */
    public void m1358lambda$performCreate$3$androidxfragmentappFragment(Bundle savedInstanceState) {
        super.m1358lambda$performCreate$3$androidxfragmentappFragment(savedInstanceState);
        if (getArguments() != null) {
            SearchFragmentArgs.Companion companion = SearchFragmentArgs.INSTANCE;
            Bundle bundleRequireArguments = requireArguments();
            Intrinsics.checkNotNullExpressionValue(bundleRequireArguments, "requireArguments(...)");
            SearchFragmentArgs searchFragmentArgsFromBundle = companion.fromBundle(bundleRequireArguments);
            this.wordParam = searchFragmentArgsFromBundle.getWord();
            this.fromHistory = Boolean.valueOf(searchFragmentArgsFromBundle.getFromHistory());
        }
        Transition transitionInflateTransition = TransitionInflater.from(requireContext()).inflateTransition(R.transition.move);
        setSharedElementEnterTransition(transitionInflateTransition);
        setSharedElementReturnTransition(transitionInflateTransition);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        SavedStateHandle savedStateHandle;
        MutableLiveData liveData;
        String str;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentSearchBinding fragmentSearchBindingInflate = FragmentSearchBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentSearchBindingInflate, "inflate(...)");
        setBinding(fragmentSearchBindingInflate);
        AtomicReference<String> atomicReference = this.lastWord;
        if (atomicReference != null && (str = atomicReference.get()) != null && str.length() > 0) {
            this.wordParam = this.lastWord.get();
            this.lastWord.set("");
        }
        getBinding().setAdapter(getSuggestionAdapter());
        getBinding().setLifecycleOwner(getViewLifecycleOwner());
        ViewExtKt.addDivider(getBinding().recyclerView);
        SearchBarView searchBarView = getBinding().searchBarView;
        Intrinsics.checkNotNullExpressionValue(searchBarView, "searchBarView");
        String str2 = this.wordParam;
        if (str2 == null) {
            str2 = "";
        }
        SearchBarView.setText$default(searchBarView, str2, false, 2, null);
        getBinding().recyclerView.setHasFixedSize(true);
        SearchFragment searchFragment = this;
        getBinding().recyclerView.addOnScrollListener(FragmentExtensionKt.getScrollListenerImp(searchFragment));
        getBinding().searchBarView.setClearButtonClickedListener(new Function0() { // from class: fast.dic.dict.fragments.SearchFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(SearchFragment.onCreateView$lambda$0(this.f$0));
            }
        });
        getBinding().searchBarView.setStateChangeListener(new Function2() { // from class: fast.dic.dict.fragments.SearchFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return SearchFragment.onCreateView$lambda$1(this.f$0, ((Boolean) obj).booleanValue(), (Boolean) obj2);
            }
        });
        getBinding().searchBarView.setOnTextChanged(new Function1() { // from class: fast.dic.dict.fragments.SearchFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchFragment.onCreateView$lambda$2(this.f$0, (String) obj);
            }
        });
        getBinding().searchBarView.setEnterSearchListener(new Function1() { // from class: fast.dic.dict.fragments.SearchFragment$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchFragment.onCreateView$lambda$3(this.f$0, (String) obj);
            }
        });
        getSuggestedWords("");
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(searchFragment).getCurrentBackStackEntry();
        if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null && (liveData = savedStateHandle.getLiveData("SearchBarStatus")) != null) {
            liveData.observe(getViewLifecycleOwner(), new SearchFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.fragments.SearchFragment$$ExternalSyntheticLambda5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return SearchFragment.onCreateView$lambda$4(this.f$0, (SearchBarStatus) obj);
                }
            }));
        }
        getSuggestionAdapter().setOnSelectedAction(new Function2() { // from class: fast.dic.dict.fragments.SearchFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return SearchFragment.onCreateView$lambda$5(this.f$0, (ListModel) obj, ((Integer) obj2).intValue());
            }
        });
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final boolean onCreateView$lambda$0(SearchFragment searchFragment) {
        searchFragment.getBinding().searchBarView.requestForFocus();
        return true;
    }

    static final Unit onCreateView$lambda$1(SearchFragment searchFragment, boolean z, Boolean bool) {
        ActionBar supportActionBar;
        if (Intrinsics.areEqual((Object) bool, (Object) true)) {
            RecyclerView recyclerView = searchFragment.getBinding().recyclerView;
            Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
            ViewExtKt.showMe$default(recyclerView, 0L, 1, null);
        } else {
            searchFragment.getBinding().recyclerView.setAlpha(1.0f);
            searchFragment.getBinding().recyclerView.setVisibility(0);
        }
        FragmentActivity activity = searchFragment.getActivity();
        MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        if (mainActivity != null && (supportActionBar = mainActivity.getSupportActionBar()) != null) {
            supportActionBar.show();
        }
        if (!searchFragment.hasResult) {
            searchFragment.getBinding().placeholderNoResult.setVisibility(0);
        } else {
            searchFragment.getBinding().placeholderNoResult.setVisibility(4);
        }
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$2(SearchFragment searchFragment, String word) {
        Intrinsics.checkNotNullParameter(word, "word");
        searchFragment.searchWord(word);
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$3(SearchFragment searchFragment, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(searchFragment), fast.dic.dict.R.id.wordResultScreen, new WordResultFragmentArgs(new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, it, null, 0, 1835007, null), false, false, 6, null).toBundle());
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$4(SearchFragment searchFragment, SearchBarStatus searchBarStatus) {
        Intrinsics.checkNotNull(searchBarStatus);
        searchFragment.onMessageSearchBarStatusFromResultView(searchBarStatus);
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$5(SearchFragment searchFragment, ListModel listModel, int i) {
        Intrinsics.checkNotNullParameter(listModel, "listModel");
        CustomProgressbar loadingSpinner = searchFragment.getBinding().loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
        ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        if (i == 0 && listModel.getWord() == null) {
            listModel.setWord(searchFragment.getBinding().searchBarView.getCurrentWord());
            listModel.setTranslator(true);
        }
        NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(searchFragment), fast.dic.dict.R.id.wordResultScreen, new WordResultFragmentArgs(listModel, false, false, 6, null).toBundle());
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        syncCouchBaseData();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: fast.dic.dict.fragments.SearchFragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.getBinding().searchBarView.requestForFocus();
            }
        }, 300L);
    }

    private final void syncCouchBaseData() {
        getSyncViewModel().sync();
        getSyncViewModel().getSyncState().observe(getViewLifecycleOwner(), new SearchFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.fragments.SearchFragment$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchFragment.syncCouchBaseData$lambda$0((SyncUIState) obj);
            }
        }));
    }

    static final Unit syncCouchBaseData$lambda$0(SyncUIState syncUIState) {
        if (!syncUIState.isSuccess()) {
            return Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getSyncViewModel().onDestroy();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        CustomProgressbar loadingSpinner = getBinding().loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
        ViewExtKt.hideMeNow(loadingSpinner);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        CustomProgressbar loadingSpinner = getBinding().loadingSpinner;
        Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
        ViewExtKt.hideMeNow(loadingSpinner);
        FragmentKt.findNavController(this).getBackStackEntry(fast.dic.dict.R.id.homeFragment).getSavedStateHandle().set("searchBarValue", getBinding().searchBarView.getCurrentWord());
    }

    @Override // fast.dic.dict.bases.BaseBindingFragment
    public boolean onBackPressed() {
        ActionBar supportActionBar;
        if (!getBinding().searchBarView.getIsOpenedBar()) {
            return false;
        }
        ViewCompat.setTransitionName(getBinding().searchBarView, "searchBarView");
        getBinding().searchBarView.clearFocus();
        getBinding().searchBarView.hideKeyboard();
        RecyclerView recyclerView = getBinding().recyclerView;
        Intrinsics.checkNotNullExpressionValue(recyclerView, "recyclerView");
        ViewExtKt.hideMe$default(recyclerView, 0L, 1, null);
        getBinding().searchBarView.dismissBarForSearchAnimation();
        getBinding().placeholderNoResult.setVisibility(4);
        FragmentActivity activity = getActivity();
        MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        if (mainActivity != null && (supportActionBar = mainActivity.getSupportActionBar()) != null) {
            supportActionBar.hide();
        }
        getBinding().searchBarView.dismissBarForSearchAnimation();
        return true;
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        RecyclerView.Adapter adapter = getBinding().recyclerView.getAdapter();
        if (adapter != null) {
            adapter.notifyDataSetChanged();
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002d  */
    /* JADX WARN: Code duplicated, block: B:6:0x001c  */
    private final void searchWord(String word) {
        if (this.lastWord.get() != null) {
            String str = this.lastWord.get();
            Intrinsics.checkNotNull(str);
            if (str.contentEquals(word)) {
                if (this.lastWord.get() != null && word.length() > 0) {
                    getSuggestedWords(word);
                } else {
                    Logger.INSTANCE.getLogger1().debug("GetListOfWordsForListViewMethod ignored " + word, new Object[0]);
                }
            } else {
                getSuggestedWords(word);
            }
        } else {
            if (this.lastWord.get() != null) {
            }
            Logger.INSTANCE.getLogger1().debug("GetListOfWordsForListViewMethod ignored " + word, new Object[0]);
        }
        this.lastWord.set(word);
    }

    private final void getSuggestedWords(String word) {
        if (FDNumberUtil.INSTANCE.isNumber(word)) {
            ConvertNumberResult convertNumberResultConvertNumber = FDEnNumberToWords.INSTANCE.convertNumber(word);
            ConvertNumberResult convertNumberResultConvertNumber2 = FDPeNumberToWords.INSTANCE.convertNumber(word);
            if (!convertNumberResultConvertNumber.getHasError() && !convertNumberResultConvertNumber2.getHasError()) {
                ArrayList<ListModel> arrayListSearch = getHistory().search(word, 2);
                ArrayList arrayList = new ArrayList();
                arrayList.addAll(arrayListSearch);
                ListModel listModel = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
                listModel.setWord(convertNumberResultConvertNumber.getWords());
                listModel.setMeaning(convertNumberResultConvertNumber2.getWords());
                listModel.setNumber(word);
                listModel.setNumber(true);
                arrayList.add(listModel);
                uiProcessOnSearchSuggestion(arrayList);
                return;
            }
        }
        getDatabaseHelper().search(word, 50, new Function1() { // from class: fast.dic.dict.fragments.SearchFragment$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchFragment.getSuggestedWords$lambda$1(this.f$0, (String) obj);
            }
        }, new Function1() { // from class: fast.dic.dict.fragments.SearchFragment$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchFragment.getSuggestedWords$lambda$2(this.f$0, (List) obj);
            }
        });
    }

    static final List getSuggestedWords$lambda$1(SearchFragment searchFragment, String str) {
        if (str == null) {
            return FDHistory.get$default(searchFragment.getHistory(), null, 50, 0, false, false, WordSortEnum.NEWEST, 16, null);
        }
        ArrayList<ListModel> arrayListSearch = searchFragment.getHistory().search(str, 2);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayListSearch, 10));
        for (ListModel listModel : arrayListSearch) {
            listModel.setTranslator(false);
            arrayList.add(listModel);
        }
        return arrayList;
    }

    static final Unit getSuggestedWords$lambda$2(SearchFragment searchFragment, List words) {
        Intrinsics.checkNotNullParameter(words, "words");
        searchFragment.uiProcessOnSearchSuggestion(words);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: fast.dic.dict.fragments.SearchFragment$uiProcessOnSearchSuggestion$1, reason: invalid class name */
    /* JADX INFO: compiled from: SearchFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.fragments.SearchFragment$uiProcessOnSearchSuggestion$1", f = "SearchFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<ListModel> $responseSuggestedWords;
        int label;
        final /* synthetic */ SearchFragment this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<ListModel> list, SearchFragment searchFragment, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$responseSuggestedWords = list;
            this.this$0 = searchFragment;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$responseSuggestedWords, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            List mutableList = CollectionsKt.toMutableList((Collection) this.$responseSuggestedWords);
            this.this$0.hasResult = !mutableList.isEmpty();
            if (!this.this$0.hasResult && this.this$0.getBinding().searchBarView.getIsOpenedBar()) {
                this.this$0.getBinding().placeholderNoResult.setVisibility(0);
            } else {
                this.this$0.getBinding().placeholderNoResult.setVisibility(4);
            }
            this.this$0.getSuggestionAdapter().submitList(mutableList);
            this.this$0.getBinding().recyclerView.scrollToPosition(0);
            return Unit.INSTANCE;
        }
    }

    private final void uiProcessOnSearchSuggestion(List<ListModel> responseSuggestedWords) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new AnonymousClass1(responseSuggestedWords, this, null), 3, null);
    }

    public final void onMessageSearchBarStatusFromResultView(SearchBarStatus message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (message.getWord() != null) {
            String word = message.getWord();
            if (message.getType() == SearchBarStatusEnum.FavOrHistory) {
                getBinding().searchBarView.setWithAnimation(false);
            }
            SearchBarView searchBarView = getBinding().searchBarView;
            Intrinsics.checkNotNullExpressionValue(searchBarView, "searchBarView");
            SearchBarView.setText$default(searchBarView, word, false, 2, null);
            getBinding().searchBarView.requestForFocus();
        }
        if (message.getType() == SearchBarStatusEnum.Focused) {
            getBinding().searchBarView.requestForFocus();
            getBinding().searchBarView.selectAll();
            getBinding().recyclerView.scrollToPosition(0);
        }
        if (message.getType() == SearchBarStatusEnum.Cleared) {
            SearchBarView searchBarView2 = getBinding().searchBarView;
            Intrinsics.checkNotNullExpressionValue(searchBarView2, "searchBarView");
            SearchBarView.setText$default(searchBarView2, "", false, 2, null);
            getBinding().searchBarView.requestForFocus();
            getBinding().recyclerView.scrollToPosition(0);
        }
        if (message.getType() == SearchBarStatusEnum.FavOrHistory) {
            getBinding().searchBarView.requestForFocus();
            ListModel listModel = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
            listModel.setWord(message.getWord());
            String word2 = message.getWord();
            listModel.setCategory(word2 != null ? new FDCategory().findLanguage(word2) : null);
            NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(this), fast.dic.dict.R.id.wordResultScreen, new WordResultFragmentArgs(listModel, false, false, 6, null).toBundle());
        }
    }
}
