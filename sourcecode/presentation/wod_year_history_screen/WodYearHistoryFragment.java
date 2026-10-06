package fast.dic.dict.presentation.wod_year_history_screen;

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
import androidx.navigation.fragment.FragmentKt;
import com.fastdic.android.modules.fdnumberstowords.utils.FDStringExtKt;
import com.ironsource.L6;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentWodYearHistoryBinding;
import fast.dic.dict.presentation.wod_history_screen.WodHistoryFragmentArgs;
import fast.dic.dict.presentation.wod_history_screen.WodHistoryViewModel;
import fast.dic.dict.utils.NavControllerExtensionKt;
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

/* JADX INFO: compiled from: WodYearHistoryFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\n¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u001f¨\u0006\u001e"}, d2 = {"Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", L6.G1, "Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;", "getAdapter", "()Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;", "setAdapter", "(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;)V", "Ljavax/inject/Inject;", "viewModel", "Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/wod_history_screen/WodHistoryViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "binding", "Lfast/dic/dict/databinding/FragmentWodYearHistoryBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class WodYearHistoryFragment extends Hilt_WodYearHistoryFragment {

    @Inject
    public WodYearHistoryAdapter adapter;
    private FragmentWodYearHistoryBinding binding;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public WodYearHistoryFragment() {
        final WodYearHistoryFragment wodYearHistoryFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return wodYearHistoryFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(wodYearHistoryFragment, Reflection.getOrCreateKotlinClass(WodHistoryViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = wodYearHistoryFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    public final WodYearHistoryAdapter getAdapter() {
        WodYearHistoryAdapter wodYearHistoryAdapter = this.adapter;
        if (wodYearHistoryAdapter != null) {
            return wodYearHistoryAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException(L6.G1);
        return null;
    }

    public final void setAdapter(WodYearHistoryAdapter wodYearHistoryAdapter) {
        Intrinsics.checkNotNullParameter(wodYearHistoryAdapter, "<set-?>");
        this.adapter = wodYearHistoryAdapter;
    }

    private final WodHistoryViewModel getViewModel() {
        return (WodHistoryViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentWodYearHistoryBinding fragmentWodYearHistoryBindingInflate = FragmentWodYearHistoryBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentWodYearHistoryBindingInflate, "inflate(...)");
        this.binding = fragmentWodYearHistoryBindingInflate;
        FragmentWodYearHistoryBinding fragmentWodYearHistoryBinding = null;
        if (fragmentWodYearHistoryBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWodYearHistoryBindingInflate = null;
        }
        fragmentWodYearHistoryBindingInflate.setAdapter(getAdapter());
        FragmentWodYearHistoryBinding fragmentWodYearHistoryBinding2 = this.binding;
        if (fragmentWodYearHistoryBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentWodYearHistoryBinding2 = null;
        }
        fragmentWodYearHistoryBinding2.setLifecycleOwner(getViewLifecycleOwner());
        FragmentWodYearHistoryBinding fragmentWodYearHistoryBinding3 = this.binding;
        if (fragmentWodYearHistoryBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentWodYearHistoryBinding = fragmentWodYearHistoryBinding3;
        }
        View root = fragmentWodYearHistoryBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getAdapter().submitList(getViewModel().getYears());
        getAdapter().setOnItemClick(new Function1() { // from class: fast.dic.dict.presentation.wod_year_history_screen.WodYearHistoryFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WodYearHistoryFragment.onViewCreated$lambda$0(this.f$0, (String) obj);
            }
        });
    }

    static final Unit onViewCreated$lambda$0(WodYearHistoryFragment wodYearHistoryFragment, String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        String strConvertToJalaliYear = wodYearHistoryFragment.getViewModel().convertToJalaliYear(it);
        if (strConvertToJalaliYear != null) {
            it = strConvertToJalaliYear;
        }
        String englishNumber = FDStringExtKt.toEnglishNumber(it);
        if (englishNumber != null) {
            it = englishNumber;
        }
        NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(wodYearHistoryFragment), R.id.wodHistoryFragment, new WodHistoryFragmentArgs(it).toBundle());
        return Unit.INSTANCE;
    }
}
