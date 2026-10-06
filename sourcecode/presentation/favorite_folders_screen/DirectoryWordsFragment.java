package fast.dic.dict.presentation.favorite_folders_screen;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AlertDialog;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavArgsLazy;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.L6;
import com.mbridge.msdk.MBridgeConstans;
import com.parse.ParseException;
import com.yandex.div.core.DivActionHandler;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentDirectoryWordsBinding;
import fast.dic.dict.domain.entity.WordSortEnum;
import fast.dic.dict.models.database.FolderModel;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.presentation.common.SyncUIState;
import fast.dic.dict.presentation.common.SyncViewModel;
import fast.dic.dict.presentation.sort_screen.SortDialog;
import fast.dic.dict.presentation.sort_screen.SortDialogArgs;
import fast.dic.dict.presentation.word_result_screen.WordResultFragment;
import fast.dic.dict.presentation.word_result_screen.WordResultFragmentArgs;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.FragmentExtensionKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
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

/* JADX INFO: compiled from: DirectoryWordsFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020*H\u0016J$\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u0001002\b\u00101\u001a\u0004\u0018\u00010*H\u0016J\u0010\u00102\u001a\u00020(2\u0006\u00103\u001a\u00020!H\u0002J\u001a\u00104\u001a\u00020(2\u0006\u00105\u001a\u00020,2\b\u00101\u001a\u0004\u0018\u00010*H\u0016J\b\u00106\u001a\u00020(H\u0002J\b\u00107\u001a\u00020(H\u0002J\b\u00108\u001a\u00020(H\u0002J\b\u00109\u001a\u00020(H\u0002J\b\u0010:\u001a\u00020(H\u0016J\b\u0010;\u001a\u00020(H\u0002J\b\u0010<\u001a\u00020(H\u0002J\b\u0010=\u001a\u00020(H\u0016J\u0018\u0010>\u001a\u00020(2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020FH\u0016J\u0018\u0010G\u001a\u00020(2\u0006\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020KH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0011\u0010\u0012R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001a\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001c\u0010\u001dR#\u0010 \u001a\u00020!8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b&¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%Ê\u0001\u0002\bM¨\u0006L"}, d2 = {"Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;", "Lfast/dic/dict/bases/BaseFragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "currentFolder", "Lfast/dic/dict/models/database/FolderModel;", "mItemTouchHelper", "Landroidx/recyclerview/widget/ItemTouchHelper;", "binding", "Lfast/dic/dict/databinding/FragmentDirectoryWordsBinding;", "getBinding", "()Lfast/dic/dict/databinding/FragmentDirectoryWordsBinding;", "setBinding", "(Lfast/dic/dict/databinding/FragmentDirectoryWordsBinding;)V", "syncViewModel", "Lfast/dic/dict/presentation/common/SyncViewModel;", "getSyncViewModel", "()Lfast/dic/dict/presentation/common/SyncViewModel;", "syncViewModel$delegate", "Lkotlin/Lazy;", "viewModel", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel;", "viewModel$delegate", "args", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;", "getArgs", "()Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", L6.G1, "Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;", "getAdapter", "()Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;", "setAdapter", "(Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;)V", "Ljavax/inject/Inject;", "onSaveInstanceState", "", "outState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "configureAdapter", "a", "onViewCreated", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "observeOnWordResultDismissed", "observeUiState", "setupEventsObserver", "setupSortObserver", "onDestroyView", "initializeRecyclerView", "syncCouchBaseData", "onDestroy", "onCreateMenu", DivActionHandler.DivActionReason.MENU, "Landroid/view/Menu;", "menuInflater", "Landroid/view/MenuInflater;", "onMenuItemSelected", "", "menuItem", "Landroid/view/MenuItem;", "showDeleteConfirmationWithRestore", "item", "Lfast/dic/dict/models/database/ListModel;", "pos", "", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class DirectoryWordsFragment extends Hilt_DirectoryWordsFragment implements MenuProvider {

    @Inject
    public FavoriteWordAdapter adapter;

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;
    public FragmentDirectoryWordsBinding binding;
    private FolderModel currentFolder = new FolderModel(null, null, null, null, null, false, false, null, 255, null);
    private ItemTouchHelper mItemTouchHelper;

    /* JADX INFO: renamed from: syncViewModel$delegate, reason: from kotlin metadata */
    private final Lazy syncViewModel;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public DirectoryWordsFragment() {
        final Function0 function0 = null;
        final DirectoryWordsFragment directoryWordsFragment = this;
        final Function0<Fragment> function1 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return directoryWordsFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function1.invoke();
            }
        });
        this.syncViewModel = FragmentViewModelLazyKt.createViewModelLazy(directoryWordsFragment, Reflection.getOrCreateKotlinClass(SyncViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function0;
                if (function2 != null && (creationExtras = (CreationExtras) function2.invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = directoryWordsFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
        final Function0<Fragment> function2 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$special$$inlined$viewModels$default$6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return directoryWordsFragment;
            }
        };
        final Lazy lazy2 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$special$$inlined$viewModels$default$7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function2.invoke();
            }
        });
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(directoryWordsFragment, Reflection.getOrCreateKotlinClass(DirectoryWordsViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$special$$inlined$viewModels$default$8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$special$$inlined$viewModels$default$9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function3 = function0;
                if (function3 != null && (creationExtras = (CreationExtras) function3.invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$special$$inlined$viewModels$default$10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = directoryWordsFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(DirectoryWordsFragmentArgs.class), new Function0<Bundle>() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$special$$inlined$navArgs$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = directoryWordsFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + directoryWordsFragment + " has null arguments");
            }
        });
    }

    public final FragmentDirectoryWordsBinding getBinding() {
        FragmentDirectoryWordsBinding fragmentDirectoryWordsBinding = this.binding;
        if (fragmentDirectoryWordsBinding != null) {
            return fragmentDirectoryWordsBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding(FragmentDirectoryWordsBinding fragmentDirectoryWordsBinding) {
        Intrinsics.checkNotNullParameter(fragmentDirectoryWordsBinding, "<set-?>");
        this.binding = fragmentDirectoryWordsBinding;
    }

    private final SyncViewModel getSyncViewModel() {
        return (SyncViewModel) this.syncViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DirectoryWordsViewModel getViewModel() {
        return (DirectoryWordsViewModel) this.viewModel.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final DirectoryWordsFragmentArgs getArgs() {
        return (DirectoryWordsFragmentArgs) this.args.getValue();
    }

    public final FavoriteWordAdapter getAdapter() {
        FavoriteWordAdapter favoriteWordAdapter = this.adapter;
        if (favoriteWordAdapter != null) {
            return favoriteWordAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException(L6.G1);
        return null;
    }

    public final void setAdapter(FavoriteWordAdapter favoriteWordAdapter) {
        Intrinsics.checkNotNullParameter(favoriteWordAdapter, "<set-?>");
        this.adapter = favoriteWordAdapter;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: onSaveInstanceState */
    public void m1368xe384e1ce(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        Bundle bundleSaveState = FragmentKt.findNavController(this).saveState();
        if (bundleSaveState != null) {
            outState.putAll(bundleSaveState);
        }
        super.m1368xe384e1ce(outState);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        this.currentFolder.setName(getArgs().getDocumentName());
        this.currentFolder.setDocumentId(getArgs().getDocumentId());
        FragmentDirectoryWordsBinding fragmentDirectoryWordsBindingInflate = FragmentDirectoryWordsBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentDirectoryWordsBindingInflate, "inflate(...)");
        setBinding(fragmentDirectoryWordsBindingInflate);
        getBinding().setLifecycleOwner(getViewLifecycleOwner());
        getBinding().setAdapter(getAdapter());
        configureAdapter(getAdapter());
        initializeRecyclerView();
        View root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    private final void configureAdapter(FavoriteWordAdapter a2) {
        a2.setOnSelectedAction(new Function2() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return DirectoryWordsFragment.configureAdapter$lambda$0(this.f$0, (ListModel) obj, ((Integer) obj2).intValue());
            }
        });
        a2.setOnDeletedAction(new Function2() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return DirectoryWordsFragment.configureAdapter$lambda$1(this.f$0, (ListModel) obj, ((Integer) obj2).intValue());
            }
        });
    }

    static final Unit configureAdapter$lambda$0(DirectoryWordsFragment directoryWordsFragment, ListModel item, int i) {
        Intrinsics.checkNotNullParameter(item, "item");
        directoryWordsFragment.getViewModel().onItemSelected(item);
        return Unit.INSTANCE;
    }

    static final Unit configureAdapter$lambda$1(DirectoryWordsFragment directoryWordsFragment, ListModel item, int i) {
        Intrinsics.checkNotNullParameter(item, "item");
        directoryWordsFragment.getViewModel().onItemDeleteRequested(item, i);
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        DirectoryWordsFragment directoryWordsFragment = this;
        ContextExtKt.requestForNewMenu(directoryWordsFragment);
        ContextExtKt.setToolbarTitle(directoryWordsFragment, this.currentFolder.getName());
        getViewModel().init(this.currentFolder.getDocumentId(), getSyncViewModel().getSelectedSort());
        observeUiState();
        setupSortObserver();
        observeOnWordResultDismissed();
        setupEventsObserver();
        syncCouchBaseData();
    }

    private final void observeOnWordResultDismissed() {
        final SavedStateHandle savedStateHandle;
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(this).getCurrentBackStackEntry();
        if (currentBackStackEntry == null || (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) == null) {
            return;
        }
        savedStateHandle.getLiveData(WordResultFragment.DISMISS_KEY).observe(getViewLifecycleOwner(), new DirectoryWordsFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DirectoryWordsFragment.observeOnWordResultDismissed$lambda$0(this.f$0, savedStateHandle, (Boolean) obj);
            }
        }));
    }

    static final Unit observeOnWordResultDismissed$lambda$0(DirectoryWordsFragment directoryWordsFragment, SavedStateHandle savedStateHandle, Boolean bool) {
        if (!Intrinsics.areEqual((Object) bool, (Object) true)) {
            return Unit.INSTANCE;
        }
        ContextExtKt.setToolbarTitle(directoryWordsFragment, directoryWordsFragment.currentFolder.getName());
        savedStateHandle.set(WordResultFragment.DISMISS_KEY, false);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$observeUiState$1, reason: invalid class name */
    /* JADX INFO: compiled from: DirectoryWordsFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$observeUiState$1", f = "DirectoryWordsFragment.kt", i = {}, l = {128}, m = "invokeSuspend", n = {}, nl = {135}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DirectoryWordsFragment.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$observeUiState$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: DirectoryWordsFragment.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$observeUiState$1$1", f = "DirectoryWordsFragment.kt", i = {0, 0}, l = {294}, m = "invokeSuspend", n = {"$this$collectLatest$iv", "action$iv"}, nl = {295}, s = {"L$0", "L$1"}, v = 2)
        static final class C14131 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            Object L$0;
            Object L$1;
            int label;
            final /* synthetic */ DirectoryWordsFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14131(DirectoryWordsFragment directoryWordsFragment, Continuation<? super C14131> continuation) {
                super(2, continuation);
                this.this$0 = directoryWordsFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C14131(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C14131) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$observeUiState$1$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: DirectoryWordsFragment.kt */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "state", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsUiState;"}, k = 3, mv = {2, 4, 0}, xi = 48)
            @DebugMetadata(c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$observeUiState$1$1$1", f = "DirectoryWordsFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
            static final class C14141 extends SuspendLambda implements Function2<DirectoryWordsUiState, Continuation<? super Unit>, Object> {
                /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ DirectoryWordsFragment this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C14141(DirectoryWordsFragment directoryWordsFragment, Continuation<? super C14141> continuation) {
                    super(2, continuation);
                    this.this$0 = directoryWordsFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C14141 c14141 = new C14141(this.this$0, continuation);
                    c14141.L$0 = obj;
                    return c14141;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(DirectoryWordsUiState directoryWordsUiState, Continuation<? super Unit> continuation) {
                    return ((C14141) create(directoryWordsUiState, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    DirectoryWordsUiState directoryWordsUiState = (DirectoryWordsUiState) this.L$0;
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    this.this$0.getAdapter().submitList(CollectionsKt.toList(directoryWordsUiState.getItems()));
                    this.this$0.getBinding().placeholderLabel.setVisibility(directoryWordsUiState.isEmpty() ? 0 : 8);
                    return Unit.INSTANCE;
                }
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    StateFlow<DirectoryWordsUiState> uiState = this.this$0.getViewModel().getUiState();
                    C14141 c14141 = new C14141(this.this$0, null);
                    Intrinsics.checkNotNull(uiState, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.FlowKt__CollectKt.collectLatest>");
                    this.L$0 = SpillingKt.nullOutSpilledVariable(uiState);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(c14141);
                    this.label = 1;
                    if (FlowKt.collectLatest((Flow) uiState, (Function2) c14141, (Continuation<? super Unit>) this) == coroutine_suspended) {
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
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(DirectoryWordsFragment.this.getViewLifecycleOwner().get$lifecycle(), Lifecycle.State.STARTED, new C14131(DirectoryWordsFragment.this, null), this) == coroutine_suspended) {
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

    private final void observeUiState() {
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new AnonymousClass1(null), 3, null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$setupEventsObserver$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: DirectoryWordsFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$setupEventsObserver$1", f = "DirectoryWordsFragment.kt", i = {}, l = {ParseException.EXCEEDED_QUOTA}, m = "invokeSuspend", n = {}, nl = {158}, s = {}, v = 2)
    static final class C45161 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C45161(Continuation<? super C45161> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DirectoryWordsFragment.this.new C45161(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C45161) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$setupEventsObserver$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: DirectoryWordsFragment.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$setupEventsObserver$1$1", f = "DirectoryWordsFragment.kt", i = {0, 0}, l = {294}, m = "invokeSuspend", n = {"$this$collectLatest$iv", "action$iv"}, nl = {295}, s = {"L$0", "L$1"}, v = 2)
        static final class C14151 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            Object L$0;
            Object L$1;
            int label;
            final /* synthetic */ DirectoryWordsFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14151(DirectoryWordsFragment directoryWordsFragment, Continuation<? super C14151> continuation) {
                super(2, continuation);
                this.this$0 = directoryWordsFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C14151(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C14151) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$setupEventsObserver$1$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: DirectoryWordsFragment.kt */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "event", "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsViewModel$DirectoryEvent;"}, k = 3, mv = {2, 4, 0}, xi = 48)
            @DebugMetadata(c = "fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$setupEventsObserver$1$1$1", f = "DirectoryWordsFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
            static final class C14161 extends SuspendLambda implements Function2<DirectoryWordsViewModel.DirectoryEvent, Continuation<? super Unit>, Object> {
                /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ DirectoryWordsFragment this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C14161(DirectoryWordsFragment directoryWordsFragment, Continuation<? super C14161> continuation) {
                    super(2, continuation);
                    this.this$0 = directoryWordsFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C14161 c14161 = new C14161(this.this$0, continuation);
                    c14161.L$0 = obj;
                    return c14161;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(DirectoryWordsViewModel.DirectoryEvent directoryEvent, Continuation<? super Unit> continuation) {
                    return ((C14161) create(directoryEvent, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    DirectoryWordsViewModel.DirectoryEvent directoryEvent = (DirectoryWordsViewModel.DirectoryEvent) this.L$0;
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    if (directoryEvent instanceof DirectoryWordsViewModel.DirectoryEvent.OpenAi) {
                        FragmentExtensionKt.openAiScreen(this.this$0, ((DirectoryWordsViewModel.DirectoryEvent.OpenAi) directoryEvent).getDocumentId());
                    } else if (directoryEvent instanceof DirectoryWordsViewModel.DirectoryEvent.OpenWordResult) {
                        NavControllerExtensionKt.openModal(FragmentKt.findNavController(this.this$0), R.id.wordResultModal, new WordResultFragmentArgs(((DirectoryWordsViewModel.DirectoryEvent.OpenWordResult) directoryEvent).getItem(), false, false, 6, null).toBundle());
                    } else if (directoryEvent instanceof DirectoryWordsViewModel.DirectoryEvent.ConfirmDelete) {
                        DirectoryWordsViewModel.DirectoryEvent.ConfirmDelete confirmDelete = (DirectoryWordsViewModel.DirectoryEvent.ConfirmDelete) directoryEvent;
                        this.this$0.showDeleteConfirmationWithRestore(confirmDelete.getItem(), confirmDelete.getPosition());
                    } else {
                        throw new NoWhenBranchMatchedException();
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
                    SharedFlow<DirectoryWordsViewModel.DirectoryEvent> events = this.this$0.getViewModel().getEvents();
                    C14161 c14161 = new C14161(this.this$0, null);
                    Intrinsics.checkNotNull(events, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.FlowKt__CollectKt.collectLatest>");
                    this.L$0 = SpillingKt.nullOutSpilledVariable(events);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(c14161);
                    this.label = 1;
                    if (FlowKt.collectLatest((Flow) events, (Function2) c14161, (Continuation<? super Unit>) this) == coroutine_suspended) {
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
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(DirectoryWordsFragment.this.getViewLifecycleOwner().get$lifecycle(), Lifecycle.State.STARTED, new C14151(DirectoryWordsFragment.this, null), this) == coroutine_suspended) {
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

    private final void setupEventsObserver() {
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new C45161(null), 3, null);
    }

    private final void setupSortObserver() {
        final SavedStateHandle savedStateHandle;
        NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(this).getCurrentBackStackEntry();
        if (currentBackStackEntry == null || (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) == null) {
            return;
        }
        savedStateHandle.getLiveData(SortDialog.DIALOG_STATUS_KEY).observe(getViewLifecycleOwner(), new DirectoryWordsFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DirectoryWordsFragment.setupSortObserver$lambda$0(this.f$0, savedStateHandle, (String) obj);
            }
        }));
    }

    static final Unit setupSortObserver$lambda$0(DirectoryWordsFragment directoryWordsFragment, SavedStateHandle savedStateHandle, String str) {
        String str2 = str;
        if (str2 == null || StringsKt.isBlank(str2)) {
            return Unit.INSTANCE;
        }
        String[] stringArray = directoryWordsFragment.getResources().getStringArray(R.array.sort_items);
        Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
        String[] strArr = stringArray;
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            if (Intrinsics.areEqual(strArr[i], str)) {
                WordSortEnum wordSortEnumFromValue = WordSortEnum.INSTANCE.fromValue(i);
                directoryWordsFragment.getSyncViewModel().updateSelectedSort(wordSortEnumFromValue);
                directoryWordsFragment.getViewModel().changeSort(wordSortEnumFromValue);
                savedStateHandle.set(SortDialog.DIALOG_STATUS_KEY, "");
                return Unit.INSTANCE;
            }
            i++;
        }
        i = -1;
        WordSortEnum wordSortEnumFromValue2 = WordSortEnum.INSTANCE.fromValue(i);
        directoryWordsFragment.getSyncViewModel().updateSelectedSort(wordSortEnumFromValue2);
        directoryWordsFragment.getViewModel().changeSort(wordSortEnumFromValue2);
        savedStateHandle.set(SortDialog.DIALOG_STATUS_KEY, "");
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        try {
            ItemTouchHelper itemTouchHelper = this.mItemTouchHelper;
            if (itemTouchHelper != null) {
                itemTouchHelper.attachToRecyclerView(null);
                Unit unit = Unit.INSTANCE;
            }
        } catch (Exception unused) {
            Unit unit2 = Unit.INSTANCE;
        }
        this.mItemTouchHelper = null;
        try {
            getBinding().directoryWordsRecyclerView.setAdapter(null);
        } catch (Exception unused2) {
        }
        super.onDestroyView();
    }

    private final void initializeRecyclerView() {
        RecyclerViewBinder recyclerViewBinder = RecyclerViewBinder.INSTANCE;
        RecyclerView directoryWordsRecyclerView = getBinding().directoryWordsRecyclerView;
        Intrinsics.checkNotNullExpressionValue(directoryWordsRecyclerView, "directoryWordsRecyclerView");
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        this.mItemTouchHelper = recyclerViewBinder.bind(directoryWordsRecyclerView, contextRequireContext, new Function1() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DirectoryWordsFragment.initializeRecyclerView$lambda$0(this.f$0, ((Integer) obj).intValue());
            }
        }, new Function0() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return DirectoryWordsFragment.initializeRecyclerView$lambda$1(this.f$0);
            }
        });
    }

    static final Unit initializeRecyclerView$lambda$0(DirectoryWordsFragment directoryWordsFragment, int i) {
        try {
            RecyclerView.Adapter adapter = directoryWordsFragment.getBinding().directoryWordsRecyclerView.getAdapter();
            if (adapter != null) {
                adapter.notifyItemChanged(i);
            }
        } catch (Exception unused) {
        }
        directoryWordsFragment.getAdapter().onItemDismiss(i);
        return Unit.INSTANCE;
    }

    static final Unit initializeRecyclerView$lambda$1(DirectoryWordsFragment directoryWordsFragment) {
        directoryWordsFragment.getViewModel().loadMore();
        return Unit.INSTANCE;
    }

    private final void syncCouchBaseData() {
        getSyncViewModel().sync();
        getSyncViewModel().getSyncState().observe(getViewLifecycleOwner(), new DirectoryWordsFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return DirectoryWordsFragment.syncCouchBaseData$lambda$0(this.f$0, (SyncUIState) obj);
            }
        }));
    }

    static final Unit syncCouchBaseData$lambda$0(DirectoryWordsFragment directoryWordsFragment, SyncUIState syncUIState) {
        if (!syncUIState.isSuccess() || syncUIState.getLoading()) {
            return Unit.INSTANCE;
        }
        directoryWordsFragment.getViewModel().refreshAfterSync();
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getSyncViewModel().onDestroy();
        super.onDestroy();
    }

    @Override // androidx.core.view.MenuProvider
    public void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(menuInflater, "menuInflater");
        boolean zIsEmpty = getViewModel().getUiState().getValue().getItems().isEmpty();
        menu.clear();
        menuInflater.inflate(R.menu.my_favorite_words_menu, menu);
        menu.findItem(R.id.shareItem).setEnabled(!zIsEmpty);
        menu.findItem(R.id.sortItem).setEnabled(!zIsEmpty);
    }

    @Override // androidx.core.view.MenuProvider
    public boolean onMenuItemSelected(MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.shareItem) {
            setFilename(String.valueOf(this.currentFolder.getName()));
            getViewModel().fetchAllFavoritesForShare(new Function1() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$$ExternalSyntheticLambda7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return DirectoryWordsFragment.onMenuItemSelected$lambda$0(this.f$0, (List) obj);
                }
            });
            return true;
        }
        if (itemId != R.id.sortItem) {
            return false;
        }
        String[] stringArray = getResources().getStringArray(R.array.sort_items);
        Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
        NavControllerExtensionKt.openModal(FragmentKt.findNavController(this), R.id.sortDialog, new SortDialogArgs(stringArray, null, getSyncViewModel().getSelectedSort().getValue(), 2, null).toBundle());
        return true;
    }

    static final Unit onMenuItemSelected$lambda$0(DirectoryWordsFragment directoryWordsFragment, List favorites) {
        Intrinsics.checkNotNullParameter(favorites, "favorites");
        directoryWordsFragment.createPdfFileFromWordLists((List<ListModel>) favorites, directoryWordsFragment.getSyncViewModel().getSelectedSort());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showDeleteConfirmationWithRestore(final ListModel item, final int pos) {
        Context contextRequireContext = requireContext();
        FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        new AlertDialog.Builder(contextRequireContext, fDAlertManger.getAlertTheme(contextRequireContext2)).setTitle(getString(R.string.favorite)).setMessage(getString(R.string.confirm_remove_single_word, item.getWord())).setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.getViewModel().deleteItem(item);
            }
        }).setNegativeButton(R.string.no, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragment$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                DirectoryWordsFragment.showDeleteConfirmationWithRestore$lambda$1(this.f$0, pos, dialogInterface, i);
            }
        }).show();
    }

    static final void showDeleteConfirmationWithRestore$lambda$1(DirectoryWordsFragment directoryWordsFragment, int i, DialogInterface dialogInterface, int i2) {
        try {
            directoryWordsFragment.getAdapter().notifyItemChanged(i);
        } catch (Exception unused) {
            directoryWordsFragment.getAdapter().submitList(CollectionsKt.toList(directoryWordsFragment.getViewModel().getUiState().getValue().getItems()));
        }
    }
}
