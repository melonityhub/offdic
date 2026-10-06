package fast.dic.dict.presentation.wod_history_screen;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavArgsLazy;
import androidx.navigation.fragment.FragmentKt;
import com.fastdic.android.modules.fdnumberstowords.utils.FDStringExtKt;
import com.ironsource.L6;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentWodHistoryBinding;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.presentation.word_result_screen.WordResultFragmentArgs;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: WodHistoryFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u001a2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\n¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016Ê\u0001\u0002\b%¨\u0006$"}, d2 = {"Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", L6.G1, "Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;", "getAdapter", "()Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;", "setAdapter", "(Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;)V", "Ljavax/inject/Inject;", "args", "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;", "getArgs", "()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "Lfast/dic/dict/databinding/FragmentWodHistoryBinding;", "viewModel", "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class WodHistoryFragment extends Hilt_WodHistoryFragment {

    @Inject
    public WodMonthHistoryAdapter adapter;

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;
    private FragmentWodHistoryBinding binding;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public WodHistoryFragment() {
        final WodHistoryFragment wodHistoryFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(WodHistoryFragmentArgs.class), new Function0<Bundle>() { // from class: fast.dic.dict.presentation.wod_history_screen.WodHistoryFragment$special$$inlined$navArgs$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = wodHistoryFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + wodHistoryFragment + " has null arguments");
            }
        });
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.wod_history_screen.WodHistoryFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return wodHistoryFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.wod_history_screen.WodHistoryFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(wodHistoryFragment, Reflection.getOrCreateKotlinClass(WodHistoryViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.wod_history_screen.WodHistoryFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.wod_history_screen.WodHistoryFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.wod_history_screen.WodHistoryFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = wodHistoryFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    public final WodMonthHistoryAdapter getAdapter() {
        WodMonthHistoryAdapter wodMonthHistoryAdapter = this.adapter;
        if (wodMonthHistoryAdapter != null) {
            return wodMonthHistoryAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException(L6.G1);
        return null;
    }

    public final void setAdapter(WodMonthHistoryAdapter wodMonthHistoryAdapter) {
        Intrinsics.checkNotNullParameter(wodMonthHistoryAdapter, "<set-?>");
        this.adapter = wodMonthHistoryAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final WodHistoryFragmentArgs getArgs() {
        return (WodHistoryFragmentArgs) this.args.getValue();
    }

    private final WodHistoryViewModel getViewModel() {
        return (WodHistoryViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentWodHistoryBinding fragmentWodHistoryBindingInflate = FragmentWodHistoryBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentWodHistoryBindingInflate, "inflate(...)");
        this.binding = fragmentWodHistoryBindingInflate;
        FragmentWodHistoryBinding fragmentWodHistoryBinding = null;
        if (fragmentWodHistoryBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWodHistoryBindingInflate = null;
        }
        fragmentWodHistoryBindingInflate.setAdapter(getAdapter());
        getAdapter().setPersianLanguage(getViewModel().isCurrentLanguagePersian());
        FragmentWodHistoryBinding fragmentWodHistoryBinding2 = this.binding;
        if (fragmentWodHistoryBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWodHistoryBinding2 = null;
        }
        fragmentWodHistoryBinding2.setLifecycleOwner(getViewLifecycleOwner());
        FragmentWodHistoryBinding fragmentWodHistoryBinding3 = this.binding;
        if (fragmentWodHistoryBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWodHistoryBinding3 = null;
        }
        ViewExtKt.addDivider(fragmentWodHistoryBinding3.recyclerView);
        getAdapter().setOnItemClick(new Function1() { // from class: fast.dic.dict.presentation.wod_history_screen.WodHistoryFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WodHistoryFragment.onCreateView$lambda$0(this.f$0, (String) obj);
            }
        });
        FragmentWodHistoryBinding fragmentWodHistoryBinding4 = this.binding;
        if (fragmentWodHistoryBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentWodHistoryBinding = fragmentWodHistoryBinding4;
        }
        View root = fragmentWodHistoryBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final Unit onCreateView$lambda$0(WodHistoryFragment wodHistoryFragment, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        NavControllerExtensionKt.openModal(FragmentKt.findNavController(wodHistoryFragment), R.id.wordResultModal, new WordResultFragmentArgs(new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, it, null, 0, 1835007, null), false, false, 6, null).toBundle());
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        String englishNumber;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        WodHistoryFragment wodHistoryFragment = this;
        if (getViewModel().isCurrentLanguagePersian()) {
            englishNumber = FDLanguageWord.INSTANCE.replaceNumbersToFarsi(getArgs().getYear());
        } else {
            englishNumber = FDStringExtKt.toEnglishNumber(getArgs().getYear());
            if (englishNumber == null) {
                englishNumber = "";
            }
        }
        ContextExtKt.setToolbarTitle(wodHistoryFragment, englishNumber);
        getViewModel().getState().observe(getViewLifecycleOwner(), new WodHistoryFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.wod_history_screen.WodHistoryFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WodHistoryFragment.onViewCreated$lambda$0(this.f$0, (WodHistoryUIState) obj);
            }
        }));
        getViewModel().getWodHistory(getArgs().getYear());
    }

    static final Unit onViewCreated$lambda$0(WodHistoryFragment wodHistoryFragment, WodHistoryUIState wodHistoryUIState) {
        if (wodHistoryUIState instanceof WodHistoryUIState.Loading) {
            FragmentWodHistoryBinding fragmentWodHistoryBinding = wodHistoryFragment.binding;
            if (fragmentWodHistoryBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentWodHistoryBinding = null;
            }
            CustomProgressbar loadingSpinner = fragmentWodHistoryBinding.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        }
        if (wodHistoryUIState instanceof WodHistoryUIState.Data) {
            wodHistoryFragment.getAdapter().submitList(((WodHistoryUIState.Data) wodHistoryUIState).getModels());
            FragmentWodHistoryBinding fragmentWodHistoryBinding2 = wodHistoryFragment.binding;
            if (fragmentWodHistoryBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentWodHistoryBinding2 = null;
            }
            CustomProgressbar loadingSpinner2 = fragmentWodHistoryBinding2.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
            FragmentWodHistoryBinding fragmentWodHistoryBinding3 = wodHistoryFragment.binding;
            if (fragmentWodHistoryBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentWodHistoryBinding3 = null;
            }
            fragmentWodHistoryBinding3.recyclerView.addItemDecoration(new StickyWodHeaderDecoration(wodHistoryFragment.getAdapter(), wodHistoryFragment.getViewModel().isCurrentLanguagePersian()));
        }
        if (wodHistoryUIState instanceof WodHistoryUIState.Error) {
            FragmentWodHistoryBinding fragmentWodHistoryBinding4 = wodHistoryFragment.binding;
            if (fragmentWodHistoryBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentWodHistoryBinding4 = null;
            }
            CustomProgressbar loadingSpinner3 = fragmentWodHistoryBinding4.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner3, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner3, 0L, 1, null);
        }
        return Unit.INSTANCE;
    }
}
