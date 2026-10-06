package fast.dic.dict.presentation.history_screen;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import androidx.appcompat.app.AlertDialog;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.RepeatOnLifecycleKt;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.RecyclerView;
import com.creageek.segmentedbutton.SegmentedButton;
import com.ironsource.L6;
import com.ironsource.U3;
import com.mbridge.msdk.MBridgeConstans;
import com.yandex.div.core.DivActionHandler;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.bases.BaseFragment;
import fast.dic.dict.databinding.FragmentHistoryBinding;
import fast.dic.dict.domain.entity.WordSortEnum;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.models.database.PagingListModel;
import fast.dic.dict.presentation.common.SyncUIState;
import fast.dic.dict.presentation.common.SyncViewModel;
import fast.dic.dict.presentation.favorite_folders_screen.RecyclerViewBinder;
import fast.dic.dict.presentation.sort_screen.SortDialog;
import fast.dic.dict.presentation.sort_screen.SortDialogArgs;
import fast.dic.dict.presentation.word_result_screen.WordResultFragmentArgs;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.NavControllerExtensionKt;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: HistoryFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0012\u0010!\u001a\u00020\u001e2\b\u0010\"\u001a\u0004\u0018\u00010 H\u0016J$\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010\"\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020$2\b\u0010\"\u001a\u0004\u0018\u00010 H\u0016J\"\u0010+\u001a\u00020\u001e2\u0006\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/2\u0006\u00100\u001a\u00020\u0006H\u0002J\b\u00101\u001a\u00020\u001eH\u0002J\b\u00102\u001a\u00020\u001eH\u0002J\b\u00103\u001a\u00020\u001eH\u0016J\b\u00104\u001a\u00020\u001eH\u0002J\u0018\u00105\u001a\u00020\u001e2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209H\u0016J\u0010\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R#\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\r¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0012\u001a\u00020\u00138BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001a\u0010\u001bÊ\u0001\u0002\b?¨\u0006>"}, d2 = {"Lfast/dic/dict/presentation/history_screen/HistoryFragment;", "Lfast/dic/dict/bases/BaseFragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "currentSegmentIndex", "", L6.G1, "Lfast/dic/dict/presentation/history_screen/HistoryAdapter;", "getAdapter", "()Lfast/dic/dict/presentation/history_screen/HistoryAdapter;", "setAdapter", "(Lfast/dic/dict/presentation/history_screen/HistoryAdapter;)V", "Ljavax/inject/Inject;", "binding", "Lfast/dic/dict/databinding/FragmentHistoryBinding;", "pagingListModel", "Lfast/dic/dict/models/database/PagingListModel;", "syncViewModel", "Lfast/dic/dict/presentation/common/SyncViewModel;", "getSyncViewModel", "()Lfast/dic/dict/presentation/common/SyncViewModel;", "syncViewModel$delegate", "Lkotlin/Lazy;", "viewModel", "Lfast/dic/dict/presentation/history_screen/HistoryViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/history_screen/HistoryViewModel;", "viewModel$delegate", "onSaveInstanceState", "", "outState", "Landroid/os/Bundle;", "onViewStateRestored", "savedInstanceState", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onViewCreated", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "showDeleteSingleItemConfirmationAlert", "listModel", "Lfast/dic/dict/models/database/ListModel;", "docId", "", U3.i.L, "initialSegmentView", "syncCouchBaseData", "onDestroy", "showDeleteAllAlert", "onCreateMenu", DivActionHandler.DivActionReason.MENU, "Landroid/view/Menu;", "menuInflater", "Landroid/view/MenuInflater;", "onMenuItemSelected", "", "menuItem", "Landroid/view/MenuItem;", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class HistoryFragment extends Hilt_HistoryFragment implements MenuProvider {

    @Inject
    public HistoryAdapter adapter;
    private FragmentHistoryBinding binding;
    private int currentSegmentIndex;
    private PagingListModel pagingListModel;

    /* JADX INFO: renamed from: syncViewModel$delegate, reason: from kotlin metadata */
    private final Lazy syncViewModel;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: Access modifiers changed from: private */
    public static final List initialSegmentView$lambda$0$0(List list, SegmentedButton initWithItems) {
        Intrinsics.checkNotNullParameter(initWithItems, "$this$initWithItems");
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDeleteAllAlert$lambda$0$0$1(DialogInterface dialogInterface, int i) {
    }

    public HistoryFragment() {
        final HistoryFragment historyFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return historyFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.syncViewModel = FragmentViewModelLazyKt.createViewModelLazy(historyFragment, Reflection.getOrCreateKotlinClass(SyncViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = historyFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
        final Function0<Fragment> function2 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$special$$inlined$viewModels$default$6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return historyFragment;
            }
        };
        final Lazy lazy2 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$special$$inlined$viewModels$default$7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function2.invoke();
            }
        });
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(historyFragment, Reflection.getOrCreateKotlinClass(HistoryViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$special$$inlined$viewModels$default$8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$special$$inlined$viewModels$default$9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function3 = function1;
                if (function3 != null && (creationExtras = (CreationExtras) function3.invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$special$$inlined$viewModels$default$10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = historyFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    public final HistoryAdapter getAdapter() {
        HistoryAdapter historyAdapter = this.adapter;
        if (historyAdapter != null) {
            return historyAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException(L6.G1);
        return null;
    }

    public final void setAdapter(HistoryAdapter historyAdapter) {
        Intrinsics.checkNotNullParameter(historyAdapter, "<set-?>");
        this.adapter = historyAdapter;
    }

    private final SyncViewModel getSyncViewModel() {
        return (SyncViewModel) this.syncViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HistoryViewModel getViewModel() {
        return (HistoryViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: onSaveInstanceState */
    public void m1368xe384e1ce(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        Bundle bundleSaveState = FragmentKt.findNavController(this).saveState();
        if (bundleSaveState != null) {
            outState.putAll(bundleSaveState);
            outState.putInt("selected_tab", this.currentSegmentIndex);
            outState.putParcelable("data_paging", this.pagingListModel);
        }
        super.m1368xe384e1ce(outState);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: onViewStateRestored */
    public void m1374lambda$restoreViewState$0$androidxfragmentappFragment(Bundle savedInstanceState) {
        super.m1374lambda$restoreViewState$0$androidxfragmentappFragment(savedInstanceState);
        if (savedInstanceState == null || savedInstanceState.isEmpty()) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            PagingListModel pagingListModel = (PagingListModel) savedInstanceState.getParcelable("data_paging", PagingListModel.class);
            if (pagingListModel != null) {
                this.pagingListModel = pagingListModel;
                getViewModel().restorePaging(pagingListModel);
                return;
            }
            return;
        }
        Parcelable parcelable = savedInstanceState.getParcelable("data_paging");
        PagingListModel pagingListModel2 = parcelable instanceof PagingListModel ? (PagingListModel) parcelable : null;
        if (pagingListModel2 != null) {
            this.pagingListModel = pagingListModel2;
            getViewModel().restorePaging(pagingListModel2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        SavedStateHandle savedStateHandle;
        MutableLiveData liveData;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentHistoryBinding fragmentHistoryBindingInflate = FragmentHistoryBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentHistoryBindingInflate, "inflate(...)");
        this.binding = fragmentHistoryBindingInflate;
        FragmentHistoryBinding fragmentHistoryBinding = null;
        if (fragmentHistoryBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentHistoryBindingInflate = null;
        }
        fragmentHistoryBindingInflate.setAdapter(getAdapter());
        FragmentHistoryBinding fragmentHistoryBinding2 = this.binding;
        if (fragmentHistoryBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentHistoryBinding2 = null;
        }
        fragmentHistoryBinding2.setLifecycleOwner(this);
        getAdapter().setOnSelectedAction(new Function2() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return HistoryFragment.onCreateView$lambda$0(this.f$0, (ListModel) obj, ((Integer) obj2).intValue());
            }
        });
        RecyclerViewBinder recyclerViewBinder = RecyclerViewBinder.INSTANCE;
        FragmentHistoryBinding fragmentHistoryBinding3 = this.binding;
        if (fragmentHistoryBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentHistoryBinding3 = null;
        }
        RecyclerView historyRv = fragmentHistoryBinding3.historyRv;
        Intrinsics.checkNotNullExpressionValue(historyRv, "historyRv");
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        recyclerViewBinder.bind(historyRv, contextRequireContext, new Function1() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HistoryFragment.onCreateView$lambda$1(this.f$0, ((Integer) obj).intValue());
            }
        }, new Function0() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return HistoryFragment.onCreateView$lambda$2(this.f$0);
            }
        });
        this.currentSegmentIndex = savedInstanceState != null ? savedInstanceState.getInt("selected_tab") : 0;
        initialSegmentView();
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(this).getCurrentBackStackEntry();
        if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null && (liveData = savedStateHandle.getLiveData(SortDialog.DIALOG_STATUS_KEY)) != null) {
            liveData.observe(getViewLifecycleOwner(), new HistoryFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return HistoryFragment.onCreateView$lambda$3(this.f$0, (String) obj);
                }
            }));
        }
        FragmentHistoryBinding fragmentHistoryBinding4 = this.binding;
        if (fragmentHistoryBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentHistoryBinding = fragmentHistoryBinding4;
        }
        View root = fragmentHistoryBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final Unit onCreateView$lambda$0(HistoryFragment historyFragment, ListModel model, int i) {
        Intrinsics.checkNotNullParameter(model, "model");
        historyFragment.getViewModel().onItemSelected(model);
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$1(final HistoryFragment historyFragment, final int i) {
        List<ListModel> currentList = historyFragment.getAdapter().getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        if (((ListModel) CollectionsKt.getOrNull(currentList, i)) == null) {
            return Unit.INSTANCE;
        }
        FragmentHistoryBinding fragmentHistoryBinding = historyFragment.binding;
        if (fragmentHistoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentHistoryBinding = null;
        }
        fragmentHistoryBinding.historyRv.post(new Runnable() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                HistoryFragment.onCreateView$lambda$1$0(this.f$0, i);
            }
        });
        historyFragment.getViewModel().onItemDeleteRequested(i);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$1$0(HistoryFragment historyFragment, int i) {
        historyFragment.getAdapter().notifyItemChanged(i);
    }

    static final Unit onCreateView$lambda$2(HistoryFragment historyFragment) {
        historyFragment.getViewModel().loadMore();
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$3(HistoryFragment historyFragment, String str) {
        SavedStateHandle savedStateHandle;
        String str2 = str;
        if (str2 == null || StringsKt.isBlank(str2)) {
            return Unit.INSTANCE;
        }
        String[] stringArray = historyFragment.getResources().getStringArray(R.array.sort_items);
        Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
        String[] strArr = stringArray;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                i = -1;
                break;
            }
            if (Intrinsics.areEqual(strArr[i], str)) {
                break;
            }
            i++;
        }
        WordSortEnum wordSortEnumFromValue = WordSortEnum.INSTANCE.fromValue(i);
        historyFragment.getSyncViewModel().updateSelectedSort(wordSortEnumFromValue);
        historyFragment.getViewModel().updateSort(wordSortEnumFromValue);
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(historyFragment).getCurrentBackStackEntry();
        if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null) {
            savedStateHandle.set(SortDialog.DIALOG_STATUS_KEY, "");
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        ContextExtKt.requestForNewMenu(this);
        syncCouchBaseData();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new AnonymousClass1(null), 3, null);
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner2, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner2), null, null, new AnonymousClass2(null), 3, null);
        getViewModel().loadInitial(this.currentSegmentIndex);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$1, reason: invalid class name */
    /* JADX INFO: compiled from: HistoryFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$1", f = "HistoryFragment.kt", i = {}, l = {149}, m = "invokeSuspend", n = {}, nl = {158}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HistoryFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: HistoryFragment.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$1$1", f = "HistoryFragment.kt", i = {0, 0}, l = {314}, m = "invokeSuspend", n = {"$this$collectLatest$iv", "action$iv"}, nl = {315}, s = {"L$0", "L$1"}, v = 2)
        static final class C14191 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            Object L$0;
            Object L$1;
            int label;
            final /* synthetic */ HistoryFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14191(HistoryFragment historyFragment, Continuation<? super C14191> continuation) {
                super(2, continuation);
                this.this$0 = historyFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C14191(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C14191) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: renamed from: fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$1$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: HistoryFragment.kt */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "state", "Lfast/dic/dict/presentation/history_screen/HistoryUiState;"}, k = 3, mv = {2, 4, 0}, xi = 48)
            @DebugMetadata(c = "fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$1$1$1", f = "HistoryFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
            static final class C14201 extends SuspendLambda implements Function2<HistoryUiState, Continuation<? super Unit>, Object> {
                /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ HistoryFragment this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C14201(HistoryFragment historyFragment, Continuation<? super C14201> continuation) {
                    super(2, continuation);
                    this.this$0 = historyFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C14201 c14201 = new C14201(this.this$0, continuation);
                    c14201.L$0 = obj;
                    return c14201;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(HistoryUiState historyUiState, Continuation<? super Unit> continuation) {
                    return ((C14201) create(historyUiState, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    HistoryUiState historyUiState = (HistoryUiState) this.L$0;
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    HistoryFragment historyFragment = this.this$0;
                    historyFragment.pagingListModel = historyFragment.getViewModel().getCurrentPaging();
                    this.this$0.getAdapter().submitList(CollectionsKt.toList(historyUiState.getItems()));
                    FragmentHistoryBinding fragmentHistoryBinding = this.this$0.binding;
                    if (fragmentHistoryBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentHistoryBinding = null;
                    }
                    fragmentHistoryBinding.placeholderLabel.setVisibility(historyUiState.isEmpty() ? 0 : 8);
                    ContextExtKt.requestForNewMenu(this.this$0);
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    StateFlow<HistoryUiState> uiState = this.this$0.getViewModel().getUiState();
                    C14201 c14201 = new C14201(this.this$0, null);
                    Intrinsics.checkNotNull(uiState, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.FlowKt__CollectKt.collectLatest>");
                    this.L$0 = SpillingKt.nullOutSpilledVariable(uiState);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(c14201);
                    this.label = 1;
                    if (FlowKt.collectLatest((Flow) uiState, (Function2) c14201, (Continuation<? super Unit>) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                throw new IllegalStateException("SharedFlow never completes, this call should never return.");
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                LifecycleOwner viewLifecycleOwner = HistoryFragment.this.getViewLifecycleOwner();
                Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(viewLifecycleOwner, Lifecycle.State.STARTED, new C14191(HistoryFragment.this, null), this) == coroutine_suspended) {
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

    /* JADX INFO: renamed from: fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$2, reason: invalid class name */
    /* JADX INFO: compiled from: HistoryFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$2", f = "HistoryFragment.kt", i = {}, l = {162}, m = "invokeSuspend", n = {}, nl = {180}, s = {}, v = 2)
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HistoryFragment.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: HistoryFragment.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$2$1", f = "HistoryFragment.kt", i = {0, 0}, l = {314}, m = "invokeSuspend", n = {"$this$collectLatest$iv", "action$iv"}, nl = {315}, s = {"L$0", "L$1"}, v = 2)
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            Object L$0;
            Object L$1;
            int label;
            final /* synthetic */ HistoryFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(HistoryFragment historyFragment, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = historyFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: renamed from: fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$2$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: HistoryFragment.kt */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "event", "Lfast/dic/dict/presentation/history_screen/HistoryViewModel$HistoryEvent;"}, k = 3, mv = {2, 4, 0}, xi = 48)
            @DebugMetadata(c = "fast.dic.dict.presentation.history_screen.HistoryFragment$onViewCreated$2$1$1", f = "HistoryFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
            static final class C14211 extends SuspendLambda implements Function2<HistoryViewModel.HistoryEvent, Continuation<? super Unit>, Object> {
                /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ HistoryFragment this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C14211(HistoryFragment historyFragment, Continuation<? super C14211> continuation) {
                    super(2, continuation);
                    this.this$0 = historyFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C14211 c14211 = new C14211(this.this$0, continuation);
                    c14211.L$0 = obj;
                    return c14211;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(HistoryViewModel.HistoryEvent historyEvent, Continuation<? super Unit> continuation) {
                    return ((C14211) create(historyEvent, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    HistoryViewModel.HistoryEvent historyEvent = (HistoryViewModel.HistoryEvent) this.L$0;
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    if (historyEvent instanceof HistoryViewModel.HistoryEvent.OpenWordResult) {
                        NavControllerExtensionKt.openModal(FragmentKt.findNavController(this.this$0), R.id.wordResultModal, new WordResultFragmentArgs(((HistoryViewModel.HistoryEvent.OpenWordResult) historyEvent).getItem(), false, false, 6, null).toBundle());
                    } else {
                        if (!(historyEvent instanceof HistoryViewModel.HistoryEvent.ConfirmDelete)) {
                            throw new NoWhenBranchMatchedException();
                        }
                        HistoryViewModel.HistoryEvent.ConfirmDelete confirmDelete = (HistoryViewModel.HistoryEvent.ConfirmDelete) historyEvent;
                        this.this$0.showDeleteSingleItemConfirmationAlert(confirmDelete.getItem(), confirmDelete.getDocumentId(), confirmDelete.getPosition());
                    }
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    SharedFlow<HistoryViewModel.HistoryEvent> events = this.this$0.getViewModel().getEvents();
                    C14211 c14211 = new C14211(this.this$0, null);
                    Intrinsics.checkNotNull(events, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.FlowKt__CollectKt.collectLatest>");
                    this.L$0 = SpillingKt.nullOutSpilledVariable(events);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(c14211);
                    this.label = 1;
                    if (FlowKt.collectLatest((Flow) events, (Function2) c14211, (Continuation<? super Unit>) this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                throw new IllegalStateException("SharedFlow never completes, this call should never return.");
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                LifecycleOwner viewLifecycleOwner = HistoryFragment.this.getViewLifecycleOwner();
                Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(viewLifecycleOwner, Lifecycle.State.STARTED, new AnonymousClass1(HistoryFragment.this, null), this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public final void showDeleteSingleItemConfirmationAlert(ListModel listModel, final String docId, int position) {
        Context contextRequireContext = requireContext();
        FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        AlertDialog.Builder builder = new AlertDialog.Builder(contextRequireContext, fDAlertManger.getAlertTheme(contextRequireContext2));
        builder.setTitle(builder.getContext().getResources().getString(R.string.history_actionbar_title));
        builder.setMessage(builder.getContext().getResources().getString(R.string.confirm_remove_single_word, listModel.getWord()));
        builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                HistoryFragment.showDeleteSingleItemConfirmationAlert$lambda$0$0(docId, this, dialogInterface, i);
            }
        });
        builder.setNegativeButton(R.string.no, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                HistoryFragment.showDeleteSingleItemConfirmationAlert$lambda$0$1(this.f$0, dialogInterface, i);
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDeleteSingleItemConfirmationAlert$lambda$0$0(String str, HistoryFragment historyFragment, DialogInterface dialogInterface, int i) {
        if (str != null) {
            historyFragment.getViewModel().deleteByDocumentId(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDeleteSingleItemConfirmationAlert$lambda$0$1(HistoryFragment historyFragment, DialogInterface dialogInterface, int i) {
        historyFragment.getViewModel().restoreCurrentList();
    }

    private final void initialSegmentView() {
        FragmentHistoryBinding fragmentHistoryBinding = this.binding;
        if (fragmentHistoryBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentHistoryBinding = null;
        }
        fragmentHistoryBinding.historySegmentedView.invoke(new Function1() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HistoryFragment.initialSegmentView$lambda$0(this.f$0, (SegmentedButton) obj);
            }
        });
    }

    static final Unit initialSegmentView$lambda$0(final HistoryFragment historyFragment, SegmentedButton invoke) {
        String string;
        String string2;
        Resources resources;
        String string3;
        Resources resources2;
        Resources resources3;
        Intrinsics.checkNotNullParameter(invoke, "$this$invoke");
        String[] strArr = new String[3];
        Context context = invoke.getContext();
        String str = "";
        if (context == null || (resources3 = context.getResources()) == null || (string = resources3.getString(R.string.all)) == null) {
            string = "";
        }
        strArr[0] = string;
        Context context2 = invoke.getContext();
        if (context2 == null || (resources2 = context2.getResources()) == null || (string2 = resources2.getString(R.string.persian)) == null) {
            string2 = "";
        }
        strArr[1] = string2;
        Context context3 = invoke.getContext();
        if (context3 != null && (resources = context3.getResources()) != null && (string3 = resources.getString(R.string.english)) != null) {
            str = string3;
        }
        strArr[2] = str;
        final List listListOf = CollectionsKt.listOf((Object[]) strArr);
        invoke.setInitialCheckedIndex(Integer.valueOf(historyFragment.currentSegmentIndex));
        invoke.initWithItems(new Function1() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HistoryFragment.initialSegmentView$lambda$0$0(listListOf, (SegmentedButton) obj);
            }
        });
        invoke.onSegmentChecked(new Function2() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return HistoryFragment.initialSegmentView$lambda$0$1(listListOf, historyFragment, (SegmentedButton) obj, (RadioButton) obj2);
            }
        });
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initialSegmentView$lambda$0$1(List list, HistoryFragment historyFragment, SegmentedButton onSegmentChecked, RadioButton segment) {
        Intrinsics.checkNotNullParameter(onSegmentChecked, "$this$onSegmentChecked");
        Intrinsics.checkNotNullParameter(segment, "segment");
        historyFragment.currentSegmentIndex = CollectionsKt.indexOf((List<? extends CharSequence>) list, segment.getText());
        historyFragment.getViewModel().updateCategory(historyFragment.currentSegmentIndex);
        return Unit.INSTANCE;
    }

    private final void syncCouchBaseData() {
        getSyncViewModel().sync();
        getSyncViewModel().getSyncState().observe(getViewLifecycleOwner(), new HistoryFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return HistoryFragment.syncCouchBaseData$lambda$0(this.f$0, (SyncUIState) obj);
            }
        }));
    }

    static final Unit syncCouchBaseData$lambda$0(HistoryFragment historyFragment, SyncUIState syncUIState) {
        if (!syncUIState.isSuccess()) {
            return Unit.INSTANCE;
        }
        historyFragment.getViewModel().onSynced();
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getSyncViewModel().onDestroy();
        super.onDestroy();
    }

    private final void showDeleteAllAlert() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            FragmentActivity fragmentActivity = activity;
            AlertDialog.Builder builder = new AlertDialog.Builder(fragmentActivity, FDAlertManger.INSTANCE.getAlertTheme(fragmentActivity));
            Resources resources = builder.getContext().getResources();
            builder.setTitle(resources != null ? resources.getString(R.string.history_actionbar_title) : null);
            Resources resources2 = builder.getContext().getResources();
            builder.setMessage(resources2 != null ? resources2.getString(R.string.confirm_remove_all_words) : null);
            builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    HistoryFragment.showDeleteAllAlert$lambda$0$0$0(this.f$0, dialogInterface, i);
                }
            });
            builder.setNegativeButton(R.string.no, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.history_screen.HistoryFragment$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    HistoryFragment.showDeleteAllAlert$lambda$0$0$1(dialogInterface, i);
                }
            });
            builder.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showDeleteAllAlert$lambda$0$0$0(HistoryFragment historyFragment, DialogInterface dialogInterface, int i) {
        historyFragment.getHistory().deleteAll();
        historyFragment.getViewModel().clear();
    }

    @Override // androidx.core.view.MenuProvider
    public void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        ArrayList<ListModel> listModel;
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(menuInflater, "menuInflater");
        PagingListModel pagingListModel = this.pagingListModel;
        boolean zIsEmpty = (pagingListModel == null || (listModel = pagingListModel.getListModel()) == null) ? true : listModel.isEmpty();
        menu.clear();
        menuInflater.inflate(R.menu.history_menu, menu);
        menu.findItem(R.id.shareItem).setEnabled(!zIsEmpty);
        menu.findItem(R.id.sortItem).setEnabled(!zIsEmpty);
        menu.findItem(R.id.deleteItem).setEnabled(!zIsEmpty);
    }

    @Override // androidx.core.view.MenuProvider
    public boolean onMenuItemSelected(MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.shareItem) {
            BaseFragment.createPdfFileFromWordLists$default(this, null, getViewModel().get_currentSort(), 1, null);
            return true;
        }
        if (itemId == R.id.sortItem) {
            String[] stringArray = getResources().getStringArray(R.array.sort_items);
            Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
            NavControllerExtensionKt.openModal(FragmentKt.findNavController(this), R.id.sortDialog, new SortDialogArgs(stringArray, null, getViewModel().get_currentSort().getValue(), 2, null).toBundle());
            return true;
        }
        if (itemId != R.id.deleteItem) {
            return false;
        }
        showDeleteAllAlert();
        return true;
    }
}
