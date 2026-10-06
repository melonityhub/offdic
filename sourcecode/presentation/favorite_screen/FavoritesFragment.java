package fast.dic.dict.presentation.favorite_screen;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AlertDialog;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.couchbase.lite.internal.core.C4Constants;
import com.ironsource.L6;
import com.mbridge.msdk.MBridgeConstans;
import com.parse.ParseException;
import com.parse.ParseUser;
import com.yandex.div.core.DivActionHandler;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.activities.MainActivity;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentFavoritesBinding;
import fast.dic.dict.fragments.modals.CreateNewDirectoryBottomSheetModal;
import fast.dic.dict.helpers.FDConnectivityHelper;
import fast.dic.dict.helpers.FDInternetHelper;
import fast.dic.dict.helpers.ItemTouchHelperCallback;
import fast.dic.dict.models.database.FolderModel;
import fast.dic.dict.presentation.common.SyncUIState;
import fast.dic.dict.presentation.common.SyncViewModel;
import fast.dic.dict.presentation.favorite_folders_screen.DirectoryWordsFragmentArgs;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.DateExtKt;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.ImageViewExtensionKt;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.PersianDate;
import fast.dic.dict.utils.PersianDateFormat;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
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
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: compiled from: FavoritesFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J$\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u001a\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020$2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\b\u0010.\u001a\u00020,H\u0002J\u0012\u0010/\u001a\u00020,2\b\u00100\u001a\u0004\u0018\u000101H\u0002J\b\u00102\u001a\u00020,H\u0016J\b\u00103\u001a\u00020,H\u0002J\b\u00104\u001a\u00020,H\u0002J\u0010\u00105\u001a\u00020,2\u0006\u00106\u001a\u000207H\u0002J\u0010\u00108\u001a\u00020,2\u0006\u00106\u001a\u000207H\u0002J\u0010\u00109\u001a\u00020,2\u0006\u00106\u001a\u000207H\u0002J\u0018\u0010:\u001a\u00020,2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0016J\u0010\u0010?\u001a\u00020\u00062\u0006\u0010@\u001a\u00020AH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R#\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\u000f¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR#\u0010\u0010\u001a\u00020\u00118\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\u000f¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001a\u0010\u001bR\u001b\u0010\u001e\u001a\u00020\u001f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001d\u001a\u0004\b \u0010!Ê\u0001\u0002\bC¨\u0006B"}, d2 = {"Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;", "Lfast/dic/dict/bases/BaseFragment;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "isEditEnabled", "", "mItemTouchHelper", "Landroidx/recyclerview/widget/ItemTouchHelper;", L6.G1, "Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;", "getAdapter", "()Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;", "setAdapter", "(Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;)V", "Ljavax/inject/Inject;", "connectivityHelper", "Lfast/dic/dict/helpers/FDConnectivityHelper;", "getConnectivityHelper", "()Lfast/dic/dict/helpers/FDConnectivityHelper;", "setConnectivityHelper", "(Lfast/dic/dict/helpers/FDConnectivityHelper;)V", "binding", "Lfast/dic/dict/databinding/FragmentFavoritesBinding;", "syncViewModel", "Lfast/dic/dict/presentation/common/SyncViewModel;", "getSyncViewModel", "()Lfast/dic/dict/presentation/common/SyncViewModel;", "syncViewModel$delegate", "Lkotlin/Lazy;", "viewModel", "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;", "viewModel$delegate", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "syncCouchBaseData", "showSyncDate", "date", "Ljava/util/Date;", "onDestroy", "updateEditMode", "createNewDirectory", "onDeleteConfirmationDialog", "model", "Lfast/dic/dict/models/database/FolderModel;", "editFolderConfirmation", "navigateToSelectedItem", "onCreateMenu", DivActionHandler.DivActionReason.MENU, "Landroid/view/Menu;", "menuInflater", "Landroid/view/MenuInflater;", "onMenuItemSelected", "menuItem", "Landroid/view/MenuItem;", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class FavoritesFragment extends Hilt_FavoritesFragment implements MenuProvider {

    @Inject
    public FavoriteFoldersAdapter adapter;
    private FragmentFavoritesBinding binding;

    @Inject
    public FDConnectivityHelper connectivityHelper;
    private boolean isEditEnabled;
    private ItemTouchHelper mItemTouchHelper;

    /* JADX INFO: renamed from: syncViewModel$delegate, reason: from kotlin metadata */
    private final Lazy syncViewModel;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onDeleteConfirmationDialog$lambda$0$1(DialogInterface dialogInterface, int i) {
    }

    public FavoritesFragment() {
        final FavoritesFragment favoritesFragment = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return favoritesFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.syncViewModel = FragmentViewModelLazyKt.createViewModelLazy(favoritesFragment, Reflection.getOrCreateKotlinClass(SyncViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).get$viewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory factory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (factory = hasDefaultViewModelProviderFactory.get$defaultFactory()) != null) {
                    return factory;
                }
                ViewModelProvider.Factory factory2 = favoritesFragment.get$defaultFactory();
                Intrinsics.checkNotNullExpressionValue(factory2, "<get-defaultViewModelProviderFactory>(...)");
                return factory2;
            }
        });
        final Function0<Fragment> function2 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$special$$inlined$viewModels$default$6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return favoritesFragment;
            }
        };
        final Lazy lazy2 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$special$$inlined$viewModels$default$7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function2.invoke();
            }
        });
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(favoritesFragment, Reflection.getOrCreateKotlinClass(FavoritesViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$special$$inlined$viewModels$default$8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2).get$viewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$special$$inlined$viewModels$default$9
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$special$$inlined$viewModels$default$10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory factory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy2);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (factory = hasDefaultViewModelProviderFactory.get$defaultFactory()) != null) {
                    return factory;
                }
                ViewModelProvider.Factory factory2 = favoritesFragment.get$defaultFactory();
                Intrinsics.checkNotNullExpressionValue(factory2, "<get-defaultViewModelProviderFactory>(...)");
                return factory2;
            }
        });
    }

    public final FavoriteFoldersAdapter getAdapter() {
        FavoriteFoldersAdapter favoriteFoldersAdapter = this.adapter;
        if (favoriteFoldersAdapter != null) {
            return favoriteFoldersAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException(L6.G1);
        return null;
    }

    public final void setAdapter(FavoriteFoldersAdapter favoriteFoldersAdapter) {
        Intrinsics.checkNotNullParameter(favoriteFoldersAdapter, "<set-?>");
        this.adapter = favoriteFoldersAdapter;
    }

    public final FDConnectivityHelper getConnectivityHelper() {
        FDConnectivityHelper fDConnectivityHelper = this.connectivityHelper;
        if (fDConnectivityHelper != null) {
            return fDConnectivityHelper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("connectivityHelper");
        return null;
    }

    public final void setConnectivityHelper(FDConnectivityHelper fDConnectivityHelper) {
        Intrinsics.checkNotNullParameter(fDConnectivityHelper, "<set-?>");
        this.connectivityHelper = fDConnectivityHelper;
    }

    private final SyncViewModel getSyncViewModel() {
        return (SyncViewModel) this.syncViewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FavoritesViewModel getViewModel() {
        return (FavoritesViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) throws ParseException {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentFavoritesBinding fragmentFavoritesBindingInflate = FragmentFavoritesBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentFavoritesBindingInflate, "inflate(...)");
        this.binding = fragmentFavoritesBindingInflate;
        FragmentFavoritesBinding fragmentFavoritesBinding = null;
        if (fragmentFavoritesBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFavoritesBindingInflate = null;
        }
        fragmentFavoritesBindingInflate.setAdapter(getAdapter());
        FragmentFavoritesBinding fragmentFavoritesBinding2 = this.binding;
        if (fragmentFavoritesBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFavoritesBinding2 = null;
        }
        fragmentFavoritesBinding2.setLifecycleOwner(getViewLifecycleOwner());
        FragmentFavoritesBinding fragmentFavoritesBinding3 = this.binding;
        if (fragmentFavoritesBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFavoritesBinding3 = null;
        }
        fragmentFavoritesBinding3.myWordsDirectoryView.setHasFixedSize(true);
        getViewModel().getState().observe(getViewLifecycleOwner(), new FavoritesFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FavoritesFragment.onCreateView$lambda$0(this.f$0, (FavoritesUIState) obj);
            }
        }));
        if (!getSyncViewModel().isSyncEnabled() || !getConnectivityHelper().isInternetAvailable()) {
            getViewModel().getFolders();
        }
        syncCouchBaseData();
        FragmentFavoritesBinding fragmentFavoritesBinding4 = this.binding;
        if (fragmentFavoritesBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFavoritesBinding4 = null;
        }
        fragmentFavoritesBinding4.addDirectoryFab.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.createNewDirectory();
            }
        });
        boolean zIsAppLanguageIsPersian = getSyncViewModel().isAppLanguageIsPersian();
        FragmentFavoritesBinding fragmentFavoritesBinding5 = this.binding;
        if (zIsAppLanguageIsPersian) {
            if (fragmentFavoritesBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding5 = null;
            }
            Button settingBtn = fragmentFavoritesBinding5.settingBtn;
            Intrinsics.checkNotNullExpressionValue(settingBtn, "settingBtn");
            Button button = settingBtn;
            ViewGroup.LayoutParams layoutParams = button.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            RelativeLayout.LayoutParams layoutParams3 = layoutParams2;
            layoutParams3.removeRule(21);
            layoutParams3.addRule(20);
            button.setLayoutParams(layoutParams2);
            FragmentFavoritesBinding fragmentFavoritesBinding6 = this.binding;
            if (fragmentFavoritesBinding6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding6 = null;
            }
            ImageView syncIv = fragmentFavoritesBinding6.syncIv;
            Intrinsics.checkNotNullExpressionValue(syncIv, "syncIv");
            ImageView imageView = syncIv;
            ViewGroup.LayoutParams layoutParams4 = imageView.getLayoutParams();
            if (layoutParams4 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            }
            RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) layoutParams4;
            RelativeLayout.LayoutParams layoutParams6 = layoutParams5;
            layoutParams6.removeRule(21);
            layoutParams6.addRule(20);
            imageView.setLayoutParams(layoutParams5);
        } else {
            if (fragmentFavoritesBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding5 = null;
            }
            Button settingBtn2 = fragmentFavoritesBinding5.settingBtn;
            Intrinsics.checkNotNullExpressionValue(settingBtn2, "settingBtn");
            Button button2 = settingBtn2;
            ViewGroup.LayoutParams layoutParams7 = button2.getLayoutParams();
            if (layoutParams7 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            }
            RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) layoutParams7;
            RelativeLayout.LayoutParams layoutParams9 = layoutParams8;
            layoutParams9.removeRule(20);
            layoutParams9.addRule(21);
            button2.setLayoutParams(layoutParams8);
            FragmentFavoritesBinding fragmentFavoritesBinding7 = this.binding;
            if (fragmentFavoritesBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding7 = null;
            }
            ImageView syncIv2 = fragmentFavoritesBinding7.syncIv;
            Intrinsics.checkNotNullExpressionValue(syncIv2, "syncIv");
            ImageView imageView2 = syncIv2;
            ViewGroup.LayoutParams layoutParams10 = imageView2.getLayoutParams();
            if (layoutParams10 == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            }
            RelativeLayout.LayoutParams layoutParams11 = (RelativeLayout.LayoutParams) layoutParams10;
            RelativeLayout.LayoutParams layoutParams12 = layoutParams11;
            layoutParams12.removeRule(20);
            layoutParams12.addRule(21);
            imageView2.setLayoutParams(layoutParams11);
        }
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (!getSyncViewModel().isSyncEnabled() || fDParseUser == null || !fDParseUser.hasPlan2Or3()) {
            getSyncViewModel().disableSync();
            FragmentFavoritesBinding fragmentFavoritesBinding8 = this.binding;
            if (fragmentFavoritesBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding8 = null;
            }
            fragmentFavoritesBinding8.swipeRefresh.setEnabled(false);
        } else {
            FragmentFavoritesBinding fragmentFavoritesBinding9 = this.binding;
            if (fragmentFavoritesBinding9 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding9 = null;
            }
            fragmentFavoritesBinding9.swipeRefresh.setEnabled(getSyncViewModel().isSyncEnabled());
        }
        boolean zIsSyncEnabled = getSyncViewModel().isSyncEnabled();
        FragmentFavoritesBinding fragmentFavoritesBinding10 = this.binding;
        if (zIsSyncEnabled) {
            if (fragmentFavoritesBinding10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding10 = null;
            }
            fragmentFavoritesBinding10.settingBtn.setVisibility(8);
            FragmentFavoritesBinding fragmentFavoritesBinding11 = this.binding;
            if (fragmentFavoritesBinding11 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding11 = null;
            }
            fragmentFavoritesBinding11.setStateTitle(getString(R.string.sync_enabled_state_title));
            FragmentFavoritesBinding fragmentFavoritesBinding12 = this.binding;
            if (fragmentFavoritesBinding12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding12 = null;
            }
            fragmentFavoritesBinding12.setStateMessage(getString(R.string.not_synced_yet_message));
        } else {
            if (fragmentFavoritesBinding10 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding10 = null;
            }
            fragmentFavoritesBinding10.settingBtn.setVisibility(0);
            FragmentFavoritesBinding fragmentFavoritesBinding13 = this.binding;
            if (fragmentFavoritesBinding13 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding13 = null;
            }
            fragmentFavoritesBinding13.setStateTitle(getString(R.string.sync_disabled_state_title));
            FragmentFavoritesBinding fragmentFavoritesBinding14 = this.binding;
            if (fragmentFavoritesBinding14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding14 = null;
            }
            fragmentFavoritesBinding14.setStateMessage(getString(R.string.sync_disabled_state_message));
        }
        FragmentFavoritesBinding fragmentFavoritesBinding15 = this.binding;
        if (fragmentFavoritesBinding15 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFavoritesBinding15 = null;
        }
        fragmentFavoritesBinding15.swipeRefresh.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda11
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                FavoritesFragment.onCreateView$lambda$6(this.f$0);
            }
        });
        FragmentFavoritesBinding fragmentFavoritesBinding16 = this.binding;
        if (fragmentFavoritesBinding16 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentFavoritesBinding = fragmentFavoritesBinding16;
        }
        View root = fragmentFavoritesBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final Unit onCreateView$lambda$0(FavoritesFragment favoritesFragment, FavoritesUIState favoritesUIState) {
        if (favoritesUIState instanceof FavoritesUIState.Loading) {
            FragmentFavoritesBinding fragmentFavoritesBinding = favoritesFragment.binding;
            if (fragmentFavoritesBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding = null;
            }
            CustomProgressbar loadingSpinner = fragmentFavoritesBinding.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        } else {
            if (!(favoritesUIState instanceof FavoritesUIState.Data)) {
                throw new NoWhenBranchMatchedException();
            }
            FragmentFavoritesBinding fragmentFavoritesBinding2 = favoritesFragment.binding;
            if (fragmentFavoritesBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding2 = null;
            }
            CustomProgressbar loadingSpinner2 = fragmentFavoritesBinding2.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
            favoritesFragment.getAdapter().submitList(((FavoritesUIState.Data) favoritesUIState).getModels());
            ContextExtKt.requestForNewMenu(favoritesFragment);
        }
        return Unit.INSTANCE;
    }

    static final void onCreateView$lambda$6(FavoritesFragment favoritesFragment) {
        FDInternetHelper fDInternetHelper = FDInternetHelper.INSTANCE;
        Context contextRequireContext = favoritesFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        FragmentFavoritesBinding fragmentFavoritesBinding = null;
        if (!fDInternetHelper.isInternetAvailable(contextRequireContext)) {
            FragmentFavoritesBinding fragmentFavoritesBinding2 = favoritesFragment.binding;
            if (fragmentFavoritesBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding2 = null;
            }
            fragmentFavoritesBinding2.setStateMessage(favoritesFragment.getString(R.string.check_internet_connection));
            FragmentFavoritesBinding fragmentFavoritesBinding3 = favoritesFragment.binding;
            if (fragmentFavoritesBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentFavoritesBinding = fragmentFavoritesBinding3;
            }
            fragmentFavoritesBinding.swipeRefresh.setRefreshing(false);
            return;
        }
        FragmentFavoritesBinding fragmentFavoritesBinding4 = favoritesFragment.binding;
        if (fragmentFavoritesBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFavoritesBinding4 = null;
        }
        fragmentFavoritesBinding4.syncIv.setVisibility(0);
        FragmentFavoritesBinding fragmentFavoritesBinding5 = favoritesFragment.binding;
        if (fragmentFavoritesBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentFavoritesBinding = fragmentFavoritesBinding5;
        }
        fragmentFavoritesBinding.swipeRefresh.setRefreshing(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        ContextExtKt.requestForNewMenu(this);
        FragmentFavoritesBinding fragmentFavoritesBinding = this.binding;
        FragmentFavoritesBinding fragmentFavoritesBinding2 = null;
        if (fragmentFavoritesBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFavoritesBinding = null;
        }
        fragmentFavoritesBinding.settingBtn.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                FavoritesFragment.onViewCreated$lambda$0(this.f$0, view2);
            }
        });
        getAdapter().setOnItemClickListener(new Function1() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FavoritesFragment.onViewCreated$lambda$1(this.f$0, (FolderModel) obj);
            }
        });
        getAdapter().setOnEditListener(new Function1() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FavoritesFragment.onViewCreated$lambda$2(this.f$0, (FolderModel) obj);
            }
        });
        getAdapter().setOnDeleteListener(new Function1() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FavoritesFragment.onViewCreated$lambda$3(this.f$0, (FolderModel) obj);
            }
        });
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new AnonymousClass5(null), 3, null);
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new ItemTouchHelperCallback(getAdapter(), false, false, false, true, 12, null));
        this.mItemTouchHelper = itemTouchHelper;
        FragmentFavoritesBinding fragmentFavoritesBinding3 = this.binding;
        if (fragmentFavoritesBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentFavoritesBinding2 = fragmentFavoritesBinding3;
        }
        itemTouchHelper.attachToRecyclerView(fragmentFavoritesBinding2.myWordsDirectoryView);
    }

    static final void onViewCreated$lambda$0(FavoritesFragment favoritesFragment, View view) {
        FragmentActivity activity = favoritesFragment.getActivity();
        MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        if (mainActivity != null) {
            mainActivity.selectMoreTab();
        }
        FragmentKt.findNavController(favoritesFragment).navigate(R.id.settingFragment);
    }

    static final Unit onViewCreated$lambda$1(FavoritesFragment favoritesFragment, FolderModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        favoritesFragment.getViewModel().onFolderClicked(model);
        return Unit.INSTANCE;
    }

    static final Unit onViewCreated$lambda$2(FavoritesFragment favoritesFragment, FolderModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        favoritesFragment.getViewModel().onEditRequested(model);
        return Unit.INSTANCE;
    }

    static final Unit onViewCreated$lambda$3(FavoritesFragment favoritesFragment, FolderModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        favoritesFragment.getViewModel().onDeleteRequested(model);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$onViewCreated$5, reason: invalid class name */
    /* JADX INFO: compiled from: FavoritesFragment.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.presentation.favorite_screen.FavoritesFragment$onViewCreated$5", f = "FavoritesFragment.kt", i = {}, l = {175}, m = "invokeSuspend", n = {}, nl = {192}, s = {}, v = 2)
    static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass5(Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return FavoritesFragment.this.new AnonymousClass5(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass5) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$onViewCreated$5$1, reason: invalid class name */
        /* JADX INFO: compiled from: FavoritesFragment.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.presentation.favorite_screen.FavoritesFragment$onViewCreated$5$1", f = "FavoritesFragment.kt", i = {0, 0}, l = {C4Constants.HttpError.ENTITY_TOO_LARGE}, m = "invokeSuspend", n = {"$this$collectLatest$iv", "action$iv"}, nl = {414}, s = {"L$0", "L$1"}, v = 2)
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            Object L$0;
            Object L$1;
            int label;
            final /* synthetic */ FavoritesFragment this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(FavoritesFragment favoritesFragment, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = favoritesFragment;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX INFO: renamed from: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$onViewCreated$5$1$1, reason: invalid class name and collision with other inner class name */
            /* JADX INFO: compiled from: FavoritesFragment.kt */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "event", "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel$FavoritesEvent;"}, k = 3, mv = {2, 4, 0}, xi = 48)
            @DebugMetadata(c = "fast.dic.dict.presentation.favorite_screen.FavoritesFragment$onViewCreated$5$1$1", f = "FavoritesFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
            static final class C14181 extends SuspendLambda implements Function2<FavoritesViewModel.FavoritesEvent, Continuation<? super Unit>, Object> {
                /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ FavoritesFragment this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C14181(FavoritesFragment favoritesFragment, Continuation<? super C14181> continuation) {
                    super(2, continuation);
                    this.this$0 = favoritesFragment;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    C14181 c14181 = new C14181(this.this$0, continuation);
                    c14181.L$0 = obj;
                    return c14181;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(FavoritesViewModel.FavoritesEvent favoritesEvent, Continuation<? super Unit> continuation) {
                    return ((C14181) create(favoritesEvent, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FavoritesViewModel.FavoritesEvent favoritesEvent = (FavoritesViewModel.FavoritesEvent) this.L$0;
                    IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    if (this.label != 0) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    if (favoritesEvent instanceof FavoritesViewModel.FavoritesEvent.OpenFolder) {
                        this.this$0.navigateToSelectedItem(((FavoritesViewModel.FavoritesEvent.OpenFolder) favoritesEvent).getFolder());
                    } else if (favoritesEvent instanceof FavoritesViewModel.FavoritesEvent.EditFolder) {
                        this.this$0.editFolderConfirmation(((FavoritesViewModel.FavoritesEvent.EditFolder) favoritesEvent).getFolder());
                    } else if (favoritesEvent instanceof FavoritesViewModel.FavoritesEvent.ConfirmDelete) {
                        this.this$0.onDeleteConfirmationDialog(((FavoritesViewModel.FavoritesEvent.ConfirmDelete) favoritesEvent).getFolder());
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
                    SharedFlow<FavoritesViewModel.FavoritesEvent> events = this.this$0.getViewModel().getEvents();
                    C14181 c14181 = new C14181(this.this$0, null);
                    Intrinsics.checkNotNull(events, "null cannot be cast to non-null type kotlinx.coroutines.flow.Flow<T of kotlinx.coroutines.flow.FlowKt__CollectKt.collectLatest>");
                    this.L$0 = SpillingKt.nullOutSpilledVariable(events);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(c14181);
                    this.label = 1;
                    if (FlowKt.collectLatest((Flow) events, (Function2) c14181, (Continuation<? super Unit>) this) == coroutine_suspended) {
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
                LifecycleOwner viewLifecycleOwner = FavoritesFragment.this.getViewLifecycleOwner();
                Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                this.label = 1;
                if (RepeatOnLifecycleKt.repeatOnLifecycle(viewLifecycleOwner, Lifecycle.State.STARTED, new AnonymousClass1(FavoritesFragment.this, null), this) == coroutine_suspended) {
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

    private final void syncCouchBaseData() {
        if (!getSyncViewModel().isSyncEnabled()) {
            LoggerKt.getLogger().warn("Sync is not enable!", new Object[0]);
            return;
        }
        FDInternetHelper fDInternetHelper = FDInternetHelper.INSTANCE;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        if (!fDInternetHelper.isInternetAvailable(contextRequireContext)) {
            FragmentFavoritesBinding fragmentFavoritesBinding = this.binding;
            if (fragmentFavoritesBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding = null;
            }
            fragmentFavoritesBinding.setStateMessage(getString(R.string.check_internet_connection));
            return;
        }
        getSyncViewModel().sync();
        getSyncViewModel().getSyncState().removeObservers(getViewLifecycleOwner());
        getSyncViewModel().getSyncState().observe(getViewLifecycleOwner(), new FavoritesFragment$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FavoritesFragment.syncCouchBaseData$lambda$0(this.f$0, (SyncUIState) obj);
            }
        }));
        showSyncDate(getSyncViewModel().getLastTimeSynced());
    }

    static final Unit syncCouchBaseData$lambda$0(FavoritesFragment favoritesFragment, SyncUIState syncUIState) {
        Integer errorCode;
        Integer errorCode2;
        LoggerKt.getLogger().warn("--------------> syncState = " + syncUIState.getLoading() + ", " + syncUIState.isSuccess() + ", " + syncUIState, new Object[0]);
        FragmentFavoritesBinding fragmentFavoritesBinding = null;
        if (syncUIState.getLoading()) {
            FragmentFavoritesBinding fragmentFavoritesBinding2 = favoritesFragment.binding;
            if (fragmentFavoritesBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding2 = null;
            }
            ImageView syncIv = fragmentFavoritesBinding2.syncIv;
            Intrinsics.checkNotNullExpressionValue(syncIv, "syncIv");
            ImageViewExtensionKt.rotateImageView$default(syncIv, 0L, 1, null);
            FragmentFavoritesBinding fragmentFavoritesBinding3 = favoritesFragment.binding;
            if (fragmentFavoritesBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentFavoritesBinding = fragmentFavoritesBinding3;
            }
            fragmentFavoritesBinding.syncIv.setVisibility(0);
        } else {
            FragmentFavoritesBinding fragmentFavoritesBinding4 = favoritesFragment.binding;
            if (fragmentFavoritesBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding4 = null;
            }
            fragmentFavoritesBinding4.syncIv.clearAnimation();
            FragmentFavoritesBinding fragmentFavoritesBinding5 = favoritesFragment.binding;
            if (fragmentFavoritesBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding5 = null;
            }
            fragmentFavoritesBinding5.syncIv.setVisibility(8);
            favoritesFragment.getViewModel().getFoldersNoLoading();
            if (!syncUIState.isSuccess()) {
                Integer errorCode3 = syncUIState.getErrorCode();
                if ((errorCode3 != null && errorCode3.intValue() == 61) || (((errorCode = syncUIState.getErrorCode()) != null && errorCode.intValue() == 2) || ((errorCode2 = syncUIState.getErrorCode()) != null && errorCode2.intValue() == 111))) {
                    FragmentFavoritesBinding fragmentFavoritesBinding6 = favoritesFragment.binding;
                    if (fragmentFavoritesBinding6 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentFavoritesBinding = fragmentFavoritesBinding6;
                    }
                    fragmentFavoritesBinding.setStateMessage(favoritesFragment.getString(R.string.server_not_accessible_please_try_again));
                } else {
                    FragmentFavoritesBinding fragmentFavoritesBinding7 = favoritesFragment.binding;
                    if (fragmentFavoritesBinding7 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                    } else {
                        fragmentFavoritesBinding = fragmentFavoritesBinding7;
                    }
                    fragmentFavoritesBinding.setStateMessage(favoritesFragment.getString(R.string.server_has_problem_please_try_again));
                }
                return Unit.INSTANCE;
            }
        }
        favoritesFragment.showSyncDate(favoritesFragment.getSyncViewModel().getLastTimeSynced());
        return Unit.INSTANCE;
    }

    private final void showSyncDate(Date date) {
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        boolean zCurrentLanguageIsPersian = new LocalStorage(contextRequireContext).currentLanguageIsPersian();
        FragmentFavoritesBinding fragmentFavoritesBinding = null;
        if (!getSyncViewModel().isSyncEnabled()) {
            LoggerKt.getLogger().warn("Sync is not enabled!", new Object[0]);
            FragmentFavoritesBinding fragmentFavoritesBinding2 = this.binding;
            if (fragmentFavoritesBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding2 = null;
            }
            fragmentFavoritesBinding2.syncIv.clearAnimation();
            FragmentFavoritesBinding fragmentFavoritesBinding3 = this.binding;
            if (fragmentFavoritesBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding3 = null;
            }
            fragmentFavoritesBinding3.syncIv.setVisibility(8);
            FragmentFavoritesBinding fragmentFavoritesBinding4 = this.binding;
            if (fragmentFavoritesBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentFavoritesBinding = fragmentFavoritesBinding4;
            }
            fragmentFavoritesBinding.settingBtn.setVisibility(0);
            return;
        }
        if (date == null) {
            LoggerKt.getLogger().warn("There is no sync date to show on the view!", new Object[0]);
            return;
        }
        if (zCurrentLanguageIsPersian) {
            String str = new PersianDateFormat("d F Y").format(new PersianDate(date));
            FragmentFavoritesBinding fragmentFavoritesBinding5 = this.binding;
            if (fragmentFavoritesBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentFavoritesBinding = fragmentFavoritesBinding5;
            }
            int i = R.string.last_sync_date_label;
            String strReplaceNumbersToFarsi = FDLanguageWord.INSTANCE.replaceNumbersToFarsi(str);
            FDLanguageWord.Companion companion = FDLanguageWord.INSTANCE;
            String str2 = new SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(date);
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            fragmentFavoritesBinding.setStateMessage(getString(i, strReplaceNumbersToFarsi, companion.replaceNumbersToFarsi(str2)));
            return;
        }
        FragmentFavoritesBinding fragmentFavoritesBinding6 = this.binding;
        if (fragmentFavoritesBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentFavoritesBinding6 = null;
        }
        fragmentFavoritesBinding6.setStateMessage(getString(R.string.last_sync_date_label, DateExtKt.toString$default(date, "dd MMMM yyyy", null, 2, null), new SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(date)));
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        getSyncViewModel().onDestroy();
        super.onDestroy();
    }

    private final void updateEditMode() {
        boolean z = this.isEditEnabled;
        this.isEditEnabled = !z;
        FragmentFavoritesBinding fragmentFavoritesBinding = null;
        if (!z) {
            getAdapter().enableEditMode();
            FragmentFavoritesBinding fragmentFavoritesBinding2 = this.binding;
            if (fragmentFavoritesBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding2 = null;
            }
            fragmentFavoritesBinding2.swipeRefresh.setEnabled(false);
        } else {
            FragmentFavoritesBinding fragmentFavoritesBinding3 = this.binding;
            if (fragmentFavoritesBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentFavoritesBinding3 = null;
            }
            fragmentFavoritesBinding3.swipeRefresh.setEnabled(true);
            getAdapter().disableEditMode();
            List<FolderModel> newReorderedList = getAdapter().getNewReorderedList();
            if (!newReorderedList.isEmpty()) {
                getViewModel().updateFolderOrder(newReorderedList);
                getAdapter().submitList(newReorderedList);
            } else {
                FavoriteFoldersAdapter adapter = getAdapter();
                List<FolderModel> currentList = getAdapter().getCurrentList();
                Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
                adapter.submitList(CollectionsKt.toList(currentList));
            }
        }
        ItemTouchHelper itemTouchHelper = this.mItemTouchHelper;
        if (itemTouchHelper != null) {
            itemTouchHelper.attachToRecyclerView(null);
        }
        ItemTouchHelper itemTouchHelper2 = new ItemTouchHelper(new ItemTouchHelperCallback(getAdapter(), this.isEditEnabled, false, false, true, 12, null));
        this.mItemTouchHelper = itemTouchHelper2;
        Intrinsics.checkNotNull(itemTouchHelper2);
        FragmentFavoritesBinding fragmentFavoritesBinding4 = this.binding;
        if (fragmentFavoritesBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentFavoritesBinding = fragmentFavoritesBinding4;
        }
        itemTouchHelper2.attachToRecyclerView(fragmentFavoritesBinding.myWordsDirectoryView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createNewDirectory() {
        FragmentActivity activity = getActivity();
        FragmentManager supportFragmentManager = activity != null ? activity.getSupportFragmentManager() : null;
        CreateNewDirectoryBottomSheetModal createNewDirectoryBottomSheetModal = new CreateNewDirectoryBottomSheetModal(new Function1() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FavoritesFragment.createNewDirectory$lambda$0(this.f$0, (String) obj);
            }
        }, null, null, 6, null);
        if (supportFragmentManager != null) {
            createNewDirectoryBottomSheetModal.show(supportFragmentManager, "");
        }
    }

    static final Unit createNewDirectory$lambda$0(FavoritesFragment favoritesFragment, String str) {
        favoritesFragment.getViewModel().getFolders();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onDeleteConfirmationDialog(final FolderModel model) {
        Context contextRequireContext = requireContext();
        FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        AlertDialog.Builder builder = new AlertDialog.Builder(contextRequireContext, fDAlertManger.getAlertTheme(contextRequireContext2));
        builder.setTitle(builder.getContext().getResources().getString(R.string.remove_directory_title));
        builder.setMessage(builder.getContext().getResources().getString(R.string.confirm_remove_directory, model.getName()));
        builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                FavoritesFragment.onDeleteConfirmationDialog$lambda$0$0(this.f$0, model, dialogInterface, i);
            }
        });
        builder.setNegativeButton(R.string.no, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda5
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                FavoritesFragment.onDeleteConfirmationDialog$lambda$0$1(dialogInterface, i);
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onDeleteConfirmationDialog$lambda$0$0(final FavoritesFragment favoritesFragment, FolderModel folderModel, DialogInterface dialogInterface, int i) {
        favoritesFragment.getViewModel().deleteFolder(folderModel, new Function0() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FavoritesFragment.onDeleteConfirmationDialog$lambda$0$0$0(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onDeleteConfirmationDialog$lambda$0$0$0(FavoritesFragment favoritesFragment) {
        favoritesFragment.getViewModel().getFolders();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void editFolderConfirmation(FolderModel model) {
        FragmentActivity activity = getActivity();
        FragmentManager supportFragmentManager = activity != null ? activity.getSupportFragmentManager() : null;
        CreateNewDirectoryBottomSheetModal createNewDirectoryBottomSheetModal = new CreateNewDirectoryBottomSheetModal(new Function1() { // from class: fast.dic.dict.presentation.favorite_screen.FavoritesFragment$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return FavoritesFragment.editFolderConfirmation$lambda$0(this.f$0, (String) obj);
            }
        }, model.getName(), model.getDocumentId());
        if (supportFragmentManager != null) {
            createNewDirectoryBottomSheetModal.show(supportFragmentManager, "");
        }
    }

    static final Unit editFolderConfirmation$lambda$0(FavoritesFragment favoritesFragment, String str) {
        favoritesFragment.getViewModel().getFolders();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void navigateToSelectedItem(FolderModel model) {
        if (model.getIsHistory()) {
            try {
                NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(this), R.id.historyFragment, null, 2, null);
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (model.getIsWordCategory()) {
            try {
                NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(this), R.id.categoriesFragment, null, 2, null);
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        String documentId = model.getDocumentId();
        if (documentId == null) {
            documentId = "";
        }
        String name = model.getName();
        try {
            NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(this), R.id.directoryWordsFragment, new DirectoryWordsFragmentArgs(documentId, name != null ? name : "").toBundle());
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // androidx.core.view.MenuProvider
    public void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        Intrinsics.checkNotNullParameter(menu, "menu");
        Intrinsics.checkNotNullParameter(menuInflater, "menuInflater");
        boolean z = getAdapter().getCurrentList().size() == 2;
        menu.clear();
        if (!this.isEditEnabled) {
            menuInflater.inflate(R.menu.my_favorite_folders_menu, menu);
            menu.findItem(R.id.editItem).setEnabled(!z);
        } else {
            menuInflater.inflate(R.menu.my_favorite_words_on_edit_mode_menu, menu);
        }
    }

    @Override // androidx.core.view.MenuProvider
    public boolean onMenuItemSelected(MenuItem menuItem) {
        Intrinsics.checkNotNullParameter(menuItem, "menuItem");
        int itemId = menuItem.getItemId();
        if (itemId == R.id.editItem) {
            updateEditMode();
            ContextExtKt.requestForNewMenu(this);
            return true;
        }
        if (itemId != R.id.okayItem) {
            return false;
        }
        updateEditMode();
        ContextExtKt.requestForNewMenu(this);
        return true;
    }
}
