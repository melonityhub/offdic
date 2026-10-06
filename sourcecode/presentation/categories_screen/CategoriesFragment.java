package fast.dic.dict.presentation.categories_screen;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DtbConstants;
import com.ironsource.L6;
import com.ironsource.U3;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentCategoriesBinding;
import fast.dic.dict.models.WordCategoryModel;
import fast.dic.dict.p000const.ConstKt;
import fast.dic.dict.presentation.fullscreen_modal.FullscreenModal;
import fast.dic.dict.presentation.word_category_screen.WordCategoryFragmentArgs;
import fast.dic.dict.utils.FDParseUserExtensionKt;
import fast.dic.dict.utils.FragmentExtensionKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: CategoriesFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0015\u001a\u00020\u0016H\u0016J6\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0017b\u0010\b\u001f\u0012\f\b \u0012\b\b\fJ\u0004\b\b(!J\u001a\u0010\"\u001a\u00020\u00162\u0006\u0010#\u001a\u00020\u00182\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\n¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012Ê\u0001\u0002\b%¨\u0006$"}, d2 = {"Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", L6.G1, "Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;", "getAdapter", "()Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;", "setAdapter", "(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;)V", "Ljavax/inject/Inject;", "scrollPosition", "Landroid/os/Parcelable;", "binding", "Lfast/dic/dict/databinding/FragmentCategoriesBinding;", "viewModel", "Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/categories_screen/CategoriesViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", U3.i.t0, "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "Landroid/annotation/SuppressLint;", "value", "NotifyDataSetChanged", "onViewCreated", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class CategoriesFragment extends Hilt_CategoriesFragment {

    @Inject
    public CategoriesAdapter adapter;
    private FragmentCategoriesBinding binding;
    private Parcelable scrollPosition;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public CategoriesFragment() {
        final CategoriesFragment categoriesFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return categoriesFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(categoriesFragment, Reflection.getOrCreateKotlinClass(CategoriesViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = categoriesFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    public final CategoriesAdapter getAdapter() {
        CategoriesAdapter categoriesAdapter = this.adapter;
        if (categoriesAdapter != null) {
            return categoriesAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException(L6.G1);
        return null;
    }

    public final void setAdapter(CategoriesAdapter categoriesAdapter) {
        Intrinsics.checkNotNullParameter(categoriesAdapter, "<set-?>");
        this.adapter = categoriesAdapter;
    }

    private final CategoriesViewModel getViewModel() {
        return (CategoriesViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        RecyclerView.LayoutManager layoutManager;
        super.onPause();
        FragmentCategoriesBinding fragmentCategoriesBinding = this.binding;
        Parcelable parcelableOnSaveInstanceState = null;
        if (fragmentCategoriesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentCategoriesBinding = null;
        }
        RecyclerView recyclerView = fragmentCategoriesBinding.recyclerView;
        if (recyclerView != null && (layoutManager = recyclerView.getLayoutManager()) != null) {
            parcelableOnSaveInstanceState = layoutManager.onSaveInstanceState();
        }
        this.scrollPosition = parcelableOnSaveInstanceState;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentCategoriesBinding fragmentCategoriesBindingInflate = FragmentCategoriesBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentCategoriesBindingInflate, "inflate(...)");
        this.binding = fragmentCategoriesBindingInflate;
        if (savedInstanceState != null) {
            this.scrollPosition = savedInstanceState.getParcelable("scroll_position");
        }
        getAdapter().setCurrentLanguagePersian(getViewModel().isCurrentLanguagePersian());
        FragmentCategoriesBinding fragmentCategoriesBinding = this.binding;
        FragmentCategoriesBinding fragmentCategoriesBinding2 = null;
        if (fragmentCategoriesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentCategoriesBinding = null;
        }
        fragmentCategoriesBinding.setAdapter(getAdapter());
        FragmentCategoriesBinding fragmentCategoriesBinding3 = this.binding;
        if (fragmentCategoriesBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentCategoriesBinding3 = null;
        }
        fragmentCategoriesBinding3.setLifecycleOwner(getViewLifecycleOwner());
        getAdapter().setOnWodClickListener(new Function0() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesFragment$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CategoriesFragment.onCreateView$lambda$0(this.f$0);
            }
        });
        getAdapter().setOnItemClicked(new Function2() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return CategoriesFragment.onCreateView$lambda$1(this.f$0, (WordCategoryModel) obj, ((Boolean) obj2).booleanValue());
            }
        });
        FragmentCategoriesBinding fragmentCategoriesBinding4 = this.binding;
        if (fragmentCategoriesBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentCategoriesBinding2 = fragmentCategoriesBinding4;
        }
        View root = fragmentCategoriesBinding2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final Unit onCreateView$lambda$0(CategoriesFragment categoriesFragment) {
        NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(categoriesFragment), R.id.wodYearHistoryFragment, null, 2, null);
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$1(final CategoriesFragment categoriesFragment, WordCategoryModel cat, boolean z) {
        Intrinsics.checkNotNullParameter(cat, "cat");
        if (!FDParseUserExtensionKt.isLoggedIn()) {
            FragmentManager supportFragmentManager = categoriesFragment.requireActivity().getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            FullscreenModal fullscreenModal = new FullscreenModal(true, categoriesFragment.getString(R.string.word_category_title), categoriesFragment.getString(R.string.sort_the_result_desc), categoriesFragment.getString(R.string.login_or_signup), null, null, null, null, null, 496, null);
            fullscreenModal.show(supportFragmentManager, "");
            fullscreenModal.setOnDismissed(new Function1() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesFragment$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CategoriesFragment.onCreateView$lambda$1$0$0(this.f$0, ((Boolean) obj).booleanValue());
                }
            });
        } else if (!FDParseUserExtensionKt.hasSubscription()) {
            FragmentManager supportFragmentManager2 = categoriesFragment.requireActivity().getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager2, "getSupportFragmentManager(...)");
            final FullscreenModal fullscreenModal2 = new FullscreenModal(true, categoriesFragment.getString(R.string.word_category_title), categoriesFragment.getString(R.string.word_category_no_sub_desc), categoriesFragment.getString(R.string.translation_limit_title_cta_title), ConstKt.FD_PRICING_SCREEN, null, null, null, null, DtbConstants.DEFAULT_PLAYER_HEIGHT, null);
            fullscreenModal2.show(supportFragmentManager2, "");
            fullscreenModal2.setOnDismissed(new Function1() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesFragment$$ExternalSyntheticLambda4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return CategoriesFragment.onCreateView$lambda$1$1$0(fullscreenModal2, ((Boolean) obj).booleanValue());
                }
            });
        } else {
            NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(categoriesFragment), R.id.wordCategoryFragment, new WordCategoryFragmentArgs(cat).toBundle());
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$1$0$0(final CategoriesFragment categoriesFragment, boolean z) {
        categoriesFragment.getAdapter().setHasSubscription(FDParseUserExtensionKt.hasSubscription());
        categoriesFragment.getAdapter().notifyDataSetChanged();
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesFragment$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onStart();
            }
        }, 300L);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onCreateView$lambda$1$1$0(FullscreenModal fullscreenModal, boolean z) {
        if (z) {
            FragmentExtensionKt.openTab$default(fullscreenModal, R.id.moreFragment, Integer.valueOf(R.id.newPricingFragment), null, 4, null);
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getViewModel().getState().observe(getViewLifecycleOwner(), new CategoriesFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CategoriesFragment.onViewCreated$lambda$0(this.f$0, (CategoriesUIState) obj);
            }
        }));
        getViewModel().getCategories();
    }

    static final Unit onViewCreated$lambda$0(final CategoriesFragment categoriesFragment, CategoriesUIState categoriesUIState) {
        if (categoriesUIState instanceof CategoriesUIState.Loading) {
            FragmentCategoriesBinding fragmentCategoriesBinding = categoriesFragment.binding;
            if (fragmentCategoriesBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentCategoriesBinding = null;
            }
            CustomProgressbar loadingSpinner = fragmentCategoriesBinding.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        } else {
            if (!(categoriesUIState instanceof CategoriesUIState.Data)) {
                throw new NoWhenBranchMatchedException();
            }
            FragmentCategoriesBinding fragmentCategoriesBinding2 = categoriesFragment.binding;
            if (fragmentCategoriesBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentCategoriesBinding2 = null;
            }
            CustomProgressbar loadingSpinner2 = fragmentCategoriesBinding2.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
            categoriesFragment.getAdapter().submitList(((CategoriesUIState.Data) categoriesUIState).getModels());
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: fast.dic.dict.presentation.categories_screen.CategoriesFragment$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    CategoriesFragment.onViewCreated$lambda$0$0(this.f$0);
                }
            }, 100L);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$0$0(CategoriesFragment categoriesFragment) {
        RecyclerView.LayoutManager layoutManager;
        FragmentCategoriesBinding fragmentCategoriesBinding = categoriesFragment.binding;
        if (fragmentCategoriesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentCategoriesBinding = null;
        }
        RecyclerView recyclerView = fragmentCategoriesBinding.recyclerView;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        layoutManager.onRestoreInstanceState(categoriesFragment.scrollPosition);
    }
}
