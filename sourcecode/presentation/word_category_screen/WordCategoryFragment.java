package fast.dic.dict.presentation.word_category_screen;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.SearchView;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuProvider;
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
import androidx.navigation.NavArgsLazy;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.RecyclerView;
import com.fastdic.android.modules.fdnumberstowords.utils.FDStringExtKt;
import com.ironsource.L6;
import com.mbridge.msdk.MBridgeConstans;
import com.yandex.div.core.DivActionHandler;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentWordCategoryBinding;
import fast.dic.dict.helpers.FDWordCategory;
import fast.dic.dict.models.database.CategorizedWordDto;
import fast.dic.dict.models.database.CategorizedWordDtoKt;
import fast.dic.dict.presentation.sort_screen.SortDialog;
import fast.dic.dict.presentation.sort_screen.SortDialogArgs;
import fast.dic.dict.presentation.word_result_screen.WordResultFragmentArgs;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: WordCategoryFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0012\u0010#\u001a\u00020 2\b\u0010$\u001a\u0004\u0018\u00010\"H\u0016J$\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*2\b\u0010$\u001a\u0004\u0018\u00010\"H\u0016J\u001a\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020&2\b\u0010$\u001a\u0004\u0018\u00010\"H\u0016J\b\u0010-\u001a\u00020.H\u0002J\u0018\u0010/\u001a\u00020 2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016J\u0010\u00104\u001a\u00020.2\u0006\u00105\u001a\u000206H\u0016J\u001c\u00107\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\f\u00108\u001a\b\u0012\u0004\u0012\u0002090\u001dH\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R#\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\r¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001dX\u0082\u000e¢\u0006\u0002\n\u0000Ê\u0001\u0002\b;¨\u0006:"}, d2 = {"Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "scrollPosition", "Landroid/os/Parcelable;", L6.G1, "Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;", "getAdapter", "()Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;", "setAdapter", "(Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;)V", "Ljavax/inject/Inject;", "args", "Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;", "getArgs", "()Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "Lfast/dic/dict/databinding/FragmentWordCategoryBinding;", "viewModel", "Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/word_category_screen/WordCategoryViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "filters", "", "", "onSaveInstanceState", "", "outState", "Landroid/os/Bundle;", "onViewStateRestored", "savedInstanceState", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onViewCreated", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "isCerf", "", "onCreateMenu", DivActionHandler.DivActionReason.MENU, "Landroid/view/Menu;", "menuInflater", "Landroid/view/MenuInflater;", "onMenuItemSelected", "menuItem", "Landroid/view/MenuItem;", "generateFilters", "models", "Lfast/dic/dict/models/database/CategorizedWordDto;", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class WordCategoryFragment extends Hilt_WordCategoryFragment implements MenuProvider {

    @Inject
    public WordCategoryAdapter adapter;

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;
    private FragmentWordCategoryBinding binding;
    private List<String> filters;
    private Parcelable scrollPosition;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public WordCategoryFragment() {
        final WordCategoryFragment wordCategoryFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(WordCategoryFragmentArgs.class), new Function0<Bundle>() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryFragment$special$$inlined$navArgs$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = wordCategoryFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + wordCategoryFragment + " has null arguments");
            }
        });
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return wordCategoryFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(wordCategoryFragment, Reflection.getOrCreateKotlinClass(WordCategoryViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = wordCategoryFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
        this.filters = CollectionsKt.emptyList();
    }

    public final WordCategoryAdapter getAdapter() {
        WordCategoryAdapter wordCategoryAdapter = this.adapter;
        if (wordCategoryAdapter != null) {
            return wordCategoryAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException(L6.G1);
        return null;
    }

    public final void setAdapter(WordCategoryAdapter wordCategoryAdapter) {
        Intrinsics.checkNotNullParameter(wordCategoryAdapter, "<set-?>");
        this.adapter = wordCategoryAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final WordCategoryFragmentArgs getArgs() {
        return (WordCategoryFragmentArgs) this.args.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WordCategoryViewModel getViewModel() {
        return (WordCategoryViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: onSaveInstanceState */
    public void m1368xe384e1ce(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        FragmentWordCategoryBinding fragmentWordCategoryBinding = this.binding;
        if (fragmentWordCategoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWordCategoryBinding = null;
        }
        RecyclerView.LayoutManager layoutManager = fragmentWordCategoryBinding.recyclerView.getLayoutManager();
        Parcelable parcelableOnSaveInstanceState = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
        this.scrollPosition = parcelableOnSaveInstanceState;
        outState.putParcelable("scroll_position", parcelableOnSaveInstanceState);
        super.m1368xe384e1ce(outState);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: onViewStateRestored */
    public void m1374lambda$restoreViewState$0$androidxfragmentappFragment(Bundle savedInstanceState) {
        super.m1374lambda$restoreViewState$0$androidxfragmentappFragment(savedInstanceState);
        if (savedInstanceState != null) {
            this.scrollPosition = savedInstanceState.getParcelable("scroll_position");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        SavedStateHandle savedStateHandle;
        MutableLiveData liveData;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentWordCategoryBinding fragmentWordCategoryBindingInflate = FragmentWordCategoryBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentWordCategoryBindingInflate, "inflate(...)");
        this.binding = fragmentWordCategoryBindingInflate;
        FragmentWordCategoryBinding fragmentWordCategoryBinding = null;
        if (fragmentWordCategoryBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWordCategoryBindingInflate = null;
        }
        fragmentWordCategoryBindingInflate.setAdapter(getAdapter());
        FragmentWordCategoryBinding fragmentWordCategoryBinding2 = this.binding;
        if (fragmentWordCategoryBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWordCategoryBinding2 = null;
        }
        ViewExtKt.addDivider(fragmentWordCategoryBinding2.recyclerView);
        FragmentWordCategoryBinding fragmentWordCategoryBinding3 = this.binding;
        if (fragmentWordCategoryBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWordCategoryBinding3 = null;
        }
        fragmentWordCategoryBinding3.setLifecycleOwner(getViewLifecycleOwner());
        getAdapter().setOnClickListener(new Function1() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WordCategoryFragment.onCreateView$lambda$0(this.f$0, (CategorizedWordDto) obj);
            }
        });
        FragmentActivity activity = getActivity();
        FragmentActivity fragmentActivity = activity instanceof MenuHost ? activity : null;
        if (fragmentActivity != null) {
            fragmentActivity.addMenuProvider(this, getViewLifecycleOwner());
        }
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(this).getCurrentBackStackEntry();
        if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null && (liveData = savedStateHandle.getLiveData(SortDialog.DIALOG_STATUS_KEY)) != null) {
            liveData.observe(getViewLifecycleOwner(), new WordCategoryFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryFragment$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WordCategoryFragment.onCreateView$lambda$1(this.f$0, (String) obj);
                }
            }));
        }
        FragmentWordCategoryBinding fragmentWordCategoryBinding4 = this.binding;
        if (fragmentWordCategoryBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentWordCategoryBinding = fragmentWordCategoryBinding4;
        }
        View root = fragmentWordCategoryBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final Unit onCreateView$lambda$0(WordCategoryFragment wordCategoryFragment, CategorizedWordDto it) {
        Intrinsics.checkNotNullParameter(it, "it");
        NavControllerExtensionKt.openModal(FragmentKt.findNavController(wordCategoryFragment), R.id.wordResultModal, new WordResultFragmentArgs(CategorizedWordDtoKt.toListModel(it), false, false, 6, null).toBundle());
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$1(WordCategoryFragment wordCategoryFragment, String str) {
        Regex regex = new Regex("\\d+$");
        if (Intrinsics.areEqual(str, wordCategoryFragment.getString(R.string.all))) {
            wordCategoryFragment.getViewModel().clearFilter();
        } else if (Intrinsics.areEqual(str, wordCategoryFragment.getString(R.string.most_common))) {
            wordCategoryFragment.getViewModel().applyFilterAdapter(new FDWordCategory.Filter(null, null, true, null, 11, null));
        } else if (Intrinsics.areEqual(str, wordCategoryFragment.getString(R.string.filter_cefr_levels))) {
            wordCategoryFragment.getViewModel().applyFilterAdapter(new FDWordCategory.Filter(null, null, null, true, 7, null));
        } else if (Intrinsics.areEqual(str, wordCategoryFragment.getString(R.string.filter_cefr_unclassified))) {
            wordCategoryFragment.getViewModel().applyFilterAdapter(new FDWordCategory.Filter(null, null, null, false, 7, null));
        } else {
            Intrinsics.checkNotNull(str);
            String str2 = str;
            if (regex.containsMatchIn(str2)) {
                MatchResult matchResultFind$default = Regex.find$default(regex, str2, 0, 2, null);
                wordCategoryFragment.getViewModel().applyFilterAdapter(new FDWordCategory.Filter(null, FDStringExtKt.toEnglishNumber(matchResultFind$default != null ? matchResultFind$default.getValue() : null), null, null, 13, null));
            }
        }
        ContextExtKt.requestForNewMenu(wordCategoryFragment);
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        WordCategoryFragment wordCategoryFragment = this;
        String name = getArgs().getCategory().getName();
        if (name == null) {
            name = "";
        }
        ContextExtKt.setToolbarTitle(wordCategoryFragment, name);
        getViewModel().getState().observe(getViewLifecycleOwner(), new WordCategoryFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WordCategoryFragment.onViewCreated$lambda$0(this.f$0, (WordCategoryUIState) obj);
            }
        }));
        if (isCerf()) {
            WordCategoryViewModel.getCefrWords$default(getViewModel(), getArgs().getCategory().getCefr(), null, 2, null);
            return;
        }
        WordCategoryViewModel viewModel = getViewModel();
        Integer id = getArgs().getCategory().getId();
        Intrinsics.checkNotNull(id);
        WordCategoryViewModel.getCategory$default(viewModel, id.intValue(), null, 2, null);
    }

    static final Unit onViewCreated$lambda$0(final WordCategoryFragment wordCategoryFragment, WordCategoryUIState wordCategoryUIState) {
        if (wordCategoryUIState instanceof WordCategoryUIState.Loading) {
            FragmentWordCategoryBinding fragmentWordCategoryBinding = wordCategoryFragment.binding;
            if (fragmentWordCategoryBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentWordCategoryBinding = null;
            }
            CustomProgressbar loadingSpinner = fragmentWordCategoryBinding.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        } else {
            if (!(wordCategoryUIState instanceof WordCategoryUIState.Data)) {
                throw new NoWhenBranchMatchedException();
            }
            WordCategoryUIState.Data data = (WordCategoryUIState.Data) wordCategoryUIState;
            if (data.getModels().isEmpty()) {
                FragmentWordCategoryBinding fragmentWordCategoryBinding2 = wordCategoryFragment.binding;
                if (fragmentWordCategoryBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentWordCategoryBinding2 = null;
                }
                TextView textView = fragmentWordCategoryBinding2.placeholderLabel;
                if (textView != null) {
                    ViewExtKt.showMe$default(textView, 0L, 1, null);
                }
            } else {
                FragmentWordCategoryBinding fragmentWordCategoryBinding3 = wordCategoryFragment.binding;
                if (fragmentWordCategoryBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentWordCategoryBinding3 = null;
                }
                TextView textView2 = fragmentWordCategoryBinding3.placeholderLabel;
                if (textView2 != null) {
                    ViewExtKt.hideMe$default(textView2, 0L, 1, null);
                }
            }
            FragmentWordCategoryBinding fragmentWordCategoryBinding4 = wordCategoryFragment.binding;
            if (fragmentWordCategoryBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentWordCategoryBinding4 = null;
            }
            CustomProgressbar loadingSpinner2 = fragmentWordCategoryBinding4.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
            wordCategoryFragment.getAdapter().submitList(data.getModels());
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryFragment$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    WordCategoryFragment.onViewCreated$lambda$0$0(this.f$0);
                }
            }, 100L);
            if (wordCategoryFragment.filters.isEmpty()) {
                wordCategoryFragment.filters = wordCategoryFragment.generateFilters(data.getModels());
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0$0(WordCategoryFragment wordCategoryFragment) {
        FragmentWordCategoryBinding fragmentWordCategoryBinding = wordCategoryFragment.binding;
        if (fragmentWordCategoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWordCategoryBinding = null;
        }
        RecyclerView.LayoutManager layoutManager = fragmentWordCategoryBinding.recyclerView.getLayoutManager();
        if (layoutManager != null) {
            layoutManager.onRestoreInstanceState(wordCategoryFragment.scrollPosition);
        }
    }

    private final boolean isCerf() {
        String cefr;
        return (!getArgs().getCategory().isCefr() || (cefr = getArgs().getCategory().getCefr()) == null || cefr.length() == 0) ? false : true;
    }

    @Override // androidx.core.view.MenuProvider
    public void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(menuInflater, "menuInflater");
        boolean zHasAnyFilter = getViewModel().hasAnyFilter();
        menu.clear();
        if (zHasAnyFilter) {
            menuInflater.inflate(R.menu.cat_word_menu_clear_filter, menu);
        } else {
            menuInflater.inflate(R.menu.cat_word_menu, menu);
        }
        final MenuItem menuItemFindItem = menu.findItem(R.id.search_item);
        View actionView = menuItemFindItem.getActionView();
        Intrinsics.checkNotNull(actionView, "null cannot be cast to non-null type androidx.appcompat.widget.SearchView");
        final SearchView searchView = (SearchView) actionView;
        searchView.setMaxWidth(Integer.MAX_VALUE);
        searchView.setQueryHint(getString(R.string.search));
        String currentQuery = getViewModel().getCurrentQuery();
        if (currentQuery != null) {
            searchView.setQuery(currentQuery, false);
        }
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryFragment.onCreateMenu.2
            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextSubmit(String query) {
                if (query == null) {
                    query = "";
                }
                WordCategoryFragment.this.getViewModel().filterAdapter(query);
                searchView.clearFocus();
                menuItemFindItem.collapseActionView();
                return true;
            }

            @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
            public boolean onQueryTextChange(String newText) {
                if (newText == null) {
                    newText = "";
                }
                WordCategoryFragment.this.getViewModel().filterAdapter(newText);
                return true;
            }
        });
        menuItemFindItem.setOnActionExpandListener(new MenuItem.OnActionExpandListener() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryFragment.onCreateMenu.3
            @Override // android.view.MenuItem.OnActionExpandListener
            public boolean onMenuItemActionCollapse(MenuItem item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return true;
            }

            @Override // android.view.MenuItem.OnActionExpandListener
            public boolean onMenuItemActionExpand(MenuItem item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return true;
            }
        });
    }

    @Override // androidx.core.view.MenuProvider
    public boolean onMenuItemSelected(MenuItem menuItem) {
        String string;
        int i;
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.clear_filter_item) {
            getViewModel().clearFilter();
            ContextExtKt.requestForNewMenu(this);
            return true;
        }
        if (itemId != R.id.filter_item) {
            return false;
        }
        FDWordCategory.Filter filter = getViewModel().get_filter();
        String subCategory = filter.getSubCategory();
        String str = subCategory;
        if (str != null && str.length() != 0) {
            try {
                i = Integer.parseInt(subCategory);
            } catch (NumberFormatException unused) {
                i = 0;
            }
            string = getString(R.string.filter_section, Integer.valueOf(i));
        } else if (filter.getCerf() != null) {
            if (filter.getCerf().booleanValue()) {
                string = getString(R.string.filter_cefr_levels);
            } else {
                string = getString(R.string.filter_cefr_unclassified);
            }
        } else if (filter.getMostCommon() != null) {
            string = getString(R.string.most_common);
        } else {
            string = getString(R.string.all);
        }
        String str2 = string;
        Intrinsics.checkNotNull(str2);
        NavControllerExtensionKt.openModal(FragmentKt.findNavController(this), R.id.sortDialog, new SortDialogArgs((String[]) this.filters.toArray(new String[0]), str2, 0, 4, null).toBundle());
        return true;
    }

    private final List<String> generateFilters(List<CategorizedWordDto> models) {
        ArrayList arrayList = new ArrayList();
        String string = getString(R.string.all);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        arrayList.add(string);
        String string2 = getString(R.string.most_common);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        arrayList.add(string2);
        if (!getArgs().getCategory().isCefr()) {
            String string3 = getString(R.string.filter_cefr_levels);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            arrayList.add(string3);
            String string4 = getString(R.string.filter_cefr_unclassified);
            Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            arrayList.add(string4);
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it = models.iterator();
            while (it.hasNext()) {
                List<String> subCategories = ((CategorizedWordDto) it.next()).getSubCategories();
                if (subCategories == null) {
                    subCategories = CollectionsKt.emptyList();
                }
                CollectionsKt.addAll(arrayList2, subCategories);
            }
            ArrayList arrayList3 = arrayList2;
            ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                arrayList4.add(StringsKt.trim((CharSequence) it2.next()).toString());
            }
            ArrayList arrayList5 = new ArrayList();
            for (Object obj : arrayList4) {
                if (((String) obj).length() > 0) {
                    arrayList5.add(obj);
                }
            }
            ArrayList arrayList6 = arrayList5;
            ArrayList arrayList7 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList6, 10));
            Iterator it3 = arrayList6.iterator();
            while (it3.hasNext()) {
                arrayList7.add(Integer.valueOf(Integer.parseInt((String) it3.next())));
            }
            Iterator it4 = CollectionsKt.sorted(CollectionsKt.distinct(arrayList7)).iterator();
            while (it4.hasNext()) {
                String string5 = getString(R.string.filter_section, Integer.valueOf(((Number) it4.next()).intValue()));
                Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
                arrayList.add(string5);
            }
        }
        return CollectionsKt.toList(arrayList);
    }
}
