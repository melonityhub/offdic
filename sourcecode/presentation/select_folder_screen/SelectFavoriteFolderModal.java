package fast.dic.dict.presentation.select_folder_screen;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.mlkit.nl.translate.TranslateLanguage;
import com.ironsource.L6;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.SelectDirectoryBottomSheetLayoutBinding;
import fast.dic.dict.fragments.modals.CreateNewDirectoryBottomSheetModal;
import fast.dic.dict.helpers.ItemTouchHelperCallback;
import fast.dic.dict.models.database.FolderModel;
import fast.dic.dict.presentation.favorite_screen.FavoritesUIState;
import fast.dic.dict.presentation.favorite_screen.FavoritesViewModel;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
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

/* JADX INFO: compiled from: SelectFavoriteFolderModal.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*2\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u001a\u0010-\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020&2\b\u0010+\u001a\u0004\u0018\u00010,H\u0016J\u0010\u0010/\u001a\u00020\u000f2\u0006\u00100\u001a\u000201H\u0016J\b\u00102\u001a\u00020\u000fH\u0016J\u0012\u00103\u001a\u00020\u000f2\b\u00104\u001a\u0004\u0018\u000105H\u0002J\u0010\u00106\u001a\u00020\u000f2\u0006\u00107\u001a\u00020&H\u0002J\b\u00108\u001a\u00020\u000fH\u0002J\u0010\u00109\u001a\u00020\u000f2\u0006\u00104\u001a\u000205H\u0002J\u0010\u0010:\u001a\u00020\u000f2\u0006\u00104\u001a\u000205H\u0002R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR!\u0010\r\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u0018\u0010\u0019R#\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\"¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u000e\u0010#\u001a\u00020$X\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b<¨\u0006;"}, d2 = {"Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "<init>", "()V", "wordId", "", "getWordId", "()Ljava/lang/String;", "setWordId", "(Ljava/lang/String;)V", "folderId", "getFolderId", "setFolderId", "dismissed", "Lkotlin/Function1;", "", "getDismissed", "()Lkotlin/jvm/functions/Function1;", "isEditEnabled", "", "mItemTouchHelper", "Landroidx/recyclerview/widget/ItemTouchHelper;", "viewModel", "Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/favorite_screen/FavoritesViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", L6.G1, "Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;", "getAdapter", "()Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;", "setAdapter", "(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;)V", "Ljavax/inject/Inject;", "binding", "Lfast/dic/dict/databinding/SelectDirectoryBottomSheetLayoutBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onDismiss", "dialog", "Landroid/content/DialogInterface;", "onStart", "selectFavoriteFolder", "model", "Lfast/dic/dict/models/database/FolderModel;", "updateEditMode", TranslateLanguage.ITALIAN, "createNewDirectory", "onDeleteConfirmationDialog", "editFolderConfirmation", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class SelectFavoriteFolderModal extends Hilt_SelectFavoriteFolderModal {

    @Inject
    public SelectFavoriteFoldersAdapter adapter;
    private SelectDirectoryBottomSheetLayoutBinding binding;
    private final Function1<String, Unit> dismissed;
    private String folderId;
    private boolean isEditEnabled;
    private ItemTouchHelper mItemTouchHelper;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;
    private String wordId;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onDeleteConfirmationDialog$lambda$0$1(DialogInterface dialogInterface, int i) {
    }

    public SelectFavoriteFolderModal() {
        final SelectFavoriteFolderModal selectFavoriteFolderModal = this;
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return selectFavoriteFolderModal;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(selectFavoriteFolderModal, Reflection.getOrCreateKotlinClass(FavoritesViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = selectFavoriteFolderModal.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    public final String getWordId() {
        return this.wordId;
    }

    public final void setWordId(String str) {
        this.wordId = str;
    }

    public final String getFolderId() {
        return this.folderId;
    }

    public final void setFolderId(String str) {
        this.folderId = str;
    }

    public final Function1<String, Unit> getDismissed() {
        return this.dismissed;
    }

    private final FavoritesViewModel getViewModel() {
        return (FavoritesViewModel) this.viewModel.getValue();
    }

    public final SelectFavoriteFoldersAdapter getAdapter() {
        SelectFavoriteFoldersAdapter selectFavoriteFoldersAdapter = this.adapter;
        if (selectFavoriteFoldersAdapter != null) {
            return selectFavoriteFoldersAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException(L6.G1);
        return null;
    }

    public final void setAdapter(SelectFavoriteFoldersAdapter selectFavoriteFoldersAdapter) {
        Intrinsics.checkNotNullParameter(selectFavoriteFoldersAdapter, "<set-?>");
        this.adapter = selectFavoriteFoldersAdapter;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBindingInflate = SelectDirectoryBottomSheetLayoutBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(selectDirectoryBottomSheetLayoutBindingInflate, "inflate(...)");
        this.binding = selectDirectoryBottomSheetLayoutBindingInflate;
        SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBinding = null;
        if (selectDirectoryBottomSheetLayoutBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            selectDirectoryBottomSheetLayoutBindingInflate = null;
        }
        selectDirectoryBottomSheetLayoutBindingInflate.setAdapter(getAdapter());
        getAdapter().setSelectedId(this.folderId);
        SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBinding2 = this.binding;
        if (selectDirectoryBottomSheetLayoutBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            selectDirectoryBottomSheetLayoutBinding2 = null;
        }
        selectDirectoryBottomSheetLayoutBinding2.setLifecycleOwner(getViewLifecycleOwner());
        SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBinding3 = this.binding;
        if (selectDirectoryBottomSheetLayoutBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            selectDirectoryBottomSheetLayoutBinding3 = null;
        }
        selectDirectoryBottomSheetLayoutBinding3.closeButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBinding4 = this.binding;
        if (selectDirectoryBottomSheetLayoutBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            selectDirectoryBottomSheetLayoutBinding4 = null;
        }
        selectDirectoryBottomSheetLayoutBinding4.editButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SelectFavoriteFolderModal.onCreateView$lambda$1(this.f$0, view);
            }
        });
        SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBinding5 = this.binding;
        if (selectDirectoryBottomSheetLayoutBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            selectDirectoryBottomSheetLayoutBinding5 = null;
        }
        selectDirectoryBottomSheetLayoutBinding5.addDirectoryFab.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$$ExternalSyntheticLambda11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.createNewDirectory();
            }
        });
        SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBinding6 = this.binding;
        if (selectDirectoryBottomSheetLayoutBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            selectDirectoryBottomSheetLayoutBinding = selectDirectoryBottomSheetLayoutBinding6;
        }
        View root = selectDirectoryBottomSheetLayoutBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final void onCreateView$lambda$1(SelectFavoriteFolderModal selectFavoriteFolderModal, View view) {
        Intrinsics.checkNotNull(view);
        selectFavoriteFolderModal.updateEditMode(view);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getAdapter().setOnEditListener(new Function1() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectFavoriteFolderModal.onViewCreated$lambda$0(this.f$0, (FolderModel) obj);
            }
        });
        getAdapter().setOnDeleteListener(new Function1() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectFavoriteFolderModal.onViewCreated$lambda$1(this.f$0, (FolderModel) obj);
            }
        });
        getAdapter().setOnSelectedListener(new Function1() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectFavoriteFolderModal.onViewCreated$lambda$2(this.f$0, (FolderModel) obj);
            }
        });
        getViewModel().getState().observe(getViewLifecycleOwner(), new SelectFavoriteFolderModal$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectFavoriteFolderModal.onViewCreated$lambda$3(this.f$0, (FavoritesUIState) obj);
            }
        }));
        getViewModel().getOnlyFavoriteFolders();
    }

    static final Unit onViewCreated$lambda$0(SelectFavoriteFolderModal selectFavoriteFolderModal, FolderModel it) {
        Intrinsics.checkNotNullParameter(it, "it");
        selectFavoriteFolderModal.editFolderConfirmation(it);
        return Unit.INSTANCE;
    }

    static final Unit onViewCreated$lambda$1(SelectFavoriteFolderModal selectFavoriteFolderModal, FolderModel it) {
        Intrinsics.checkNotNullParameter(it, "it");
        selectFavoriteFolderModal.onDeleteConfirmationDialog(it);
        return Unit.INSTANCE;
    }

    static final Unit onViewCreated$lambda$2(SelectFavoriteFolderModal selectFavoriteFolderModal, FolderModel folderModel) {
        selectFavoriteFolderModal.selectFavoriteFolder(folderModel);
        return Unit.INSTANCE;
    }

    static final Unit onViewCreated$lambda$3(SelectFavoriteFolderModal selectFavoriteFolderModal, FavoritesUIState favoritesUIState) {
        if (favoritesUIState instanceof FavoritesUIState.Loading) {
            SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBinding = selectFavoriteFolderModal.binding;
            if (selectDirectoryBottomSheetLayoutBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                selectDirectoryBottomSheetLayoutBinding = null;
            }
            CustomProgressbar loadingSpinner = selectDirectoryBottomSheetLayoutBinding.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner, "loadingSpinner");
            ViewExtKt.showMe$default(loadingSpinner, 0L, 1, null);
        } else {
            if (!(favoritesUIState instanceof FavoritesUIState.Data)) {
                throw new NoWhenBranchMatchedException();
            }
            SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBinding2 = selectFavoriteFolderModal.binding;
            if (selectDirectoryBottomSheetLayoutBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                selectDirectoryBottomSheetLayoutBinding2 = null;
            }
            CustomProgressbar loadingSpinner2 = selectDirectoryBottomSheetLayoutBinding2.loadingSpinner;
            Intrinsics.checkNotNullExpressionValue(loadingSpinner2, "loadingSpinner");
            ViewExtKt.hideMe$default(loadingSpinner2, 0L, 1, null);
            FavoritesUIState.Data data = (FavoritesUIState.Data) favoritesUIState;
            if (data.getModels().isEmpty()) {
                SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBinding3 = selectFavoriteFolderModal.binding;
                if (selectDirectoryBottomSheetLayoutBinding3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    selectDirectoryBottomSheetLayoutBinding3 = null;
                }
                TextView placeholderLabel = selectDirectoryBottomSheetLayoutBinding3.placeholderLabel;
                Intrinsics.checkNotNullExpressionValue(placeholderLabel, "placeholderLabel");
                ViewExtKt.showMe$default(placeholderLabel, 0L, 1, null);
            } else {
                SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBinding4 = selectFavoriteFolderModal.binding;
                if (selectDirectoryBottomSheetLayoutBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    selectDirectoryBottomSheetLayoutBinding4 = null;
                }
                TextView placeholderLabel2 = selectDirectoryBottomSheetLayoutBinding4.placeholderLabel;
                Intrinsics.checkNotNullExpressionValue(placeholderLabel2, "placeholderLabel");
                ViewExtKt.hideMe$default(placeholderLabel2, 0L, 1, null);
            }
            selectFavoriteFolderModal.getAdapter().submitList(data.getModels());
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        Function1<String, Unit> function1 = this.dismissed;
        if (function1 != null) {
            function1.invoke(this.folderId);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        ViewParent parent = requireView().getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        FragmentActivity activity = getActivity();
        layoutParams.height = activity != null ? ContextExtKt.getWindowHeight(activity) : 0;
        Object parent2 = requireView().getParent();
        Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.View");
        BottomSheetBehavior.from((View) parent2).setState(3);
    }

    private final void selectFavoriteFolder(FolderModel model) {
        String documentId = model != null ? model.getDocumentId() : null;
        this.folderId = documentId;
        if (documentId == null || this.wordId == null) {
            return;
        }
        FavoritesViewModel viewModel = getViewModel();
        String str = this.wordId;
        Intrinsics.checkNotNull(str);
        String str2 = this.folderId;
        Intrinsics.checkNotNull(str2);
        viewModel.updateFolder(str, str2);
    }

    private final void updateEditMode(View it) {
        Resources resources;
        Resources resources2;
        this.isEditEnabled = !this.isEditEnabled;
        Intrinsics.checkNotNull(it, "null cannot be cast to non-null type android.widget.Button");
        Button button = (Button) it;
        SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBinding = null;
        if (this.isEditEnabled) {
            getAdapter().enableEditMode();
            Context context = getContext();
            button.setText((context == null || (resources2 = context.getResources()) == null) ? null : resources2.getString(R.string.ok));
        } else {
            Context context2 = getContext();
            button.setText((context2 == null || (resources = context2.getResources()) == null) ? null : resources.getString(R.string.edit));
            getAdapter().disableEditMode();
            List<FolderModel> newReorderedList = getAdapter().getNewReorderedList();
            if (!newReorderedList.isEmpty()) {
                getViewModel().updateFolderOrder(newReorderedList);
                getAdapter().submitList(newReorderedList);
            } else {
                SelectFavoriteFoldersAdapter adapter = getAdapter();
                List<FolderModel> currentList = getAdapter().getCurrentList();
                Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
                adapter.submitList(CollectionsKt.toList(currentList));
            }
        }
        ItemTouchHelper itemTouchHelper = this.mItemTouchHelper;
        if (itemTouchHelper != null) {
            itemTouchHelper.attachToRecyclerView(null);
        }
        if (this.isEditEnabled) {
            ItemTouchHelper itemTouchHelper2 = new ItemTouchHelper(new ItemTouchHelperCallback(getAdapter(), true, true, false, false, 24, null));
            this.mItemTouchHelper = itemTouchHelper2;
            Intrinsics.checkNotNull(itemTouchHelper2);
            SelectDirectoryBottomSheetLayoutBinding selectDirectoryBottomSheetLayoutBinding2 = this.binding;
            if (selectDirectoryBottomSheetLayoutBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                selectDirectoryBottomSheetLayoutBinding = selectDirectoryBottomSheetLayoutBinding2;
            }
            itemTouchHelper2.attachToRecyclerView(selectDirectoryBottomSheetLayoutBinding.recyclerViewBottomSheet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void createNewDirectory() {
        FragmentActivity activity = getActivity();
        FragmentManager supportFragmentManager = activity != null ? activity.getSupportFragmentManager() : null;
        CreateNewDirectoryBottomSheetModal createNewDirectoryBottomSheetModal = new CreateNewDirectoryBottomSheetModal(new Function1() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectFavoriteFolderModal.createNewDirectory$lambda$0(this.f$0, (String) obj);
            }
        }, null, null, 6, null);
        if (supportFragmentManager != null) {
            createNewDirectoryBottomSheetModal.show(supportFragmentManager, "");
        }
    }

    static final Unit createNewDirectory$lambda$0(SelectFavoriteFolderModal selectFavoriteFolderModal, String str) {
        selectFavoriteFolderModal.getViewModel().getOnlyFavoriteFolders();
        return Unit.INSTANCE;
    }

    private final void onDeleteConfirmationDialog(final FolderModel model) {
        Context contextRequireContext = requireContext();
        FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        AlertDialog.Builder builder = new AlertDialog.Builder(contextRequireContext, fDAlertManger.getAlertTheme(contextRequireContext2));
        builder.setTitle(builder.getContext().getResources().getString(R.string.remove_directory_title));
        builder.setMessage(builder.getContext().getResources().getString(R.string.confirm_remove_directory, model.getName()));
        builder.setPositiveButton(R.string.yes, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                SelectFavoriteFolderModal.onDeleteConfirmationDialog$lambda$0$0(this.f$0, model, dialogInterface, i);
            }
        });
        builder.setNegativeButton(R.string.no, new DialogInterface.OnClickListener() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                SelectFavoriteFolderModal.onDeleteConfirmationDialog$lambda$0$1(dialogInterface, i);
            }
        });
        builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onDeleteConfirmationDialog$lambda$0$0(final SelectFavoriteFolderModal selectFavoriteFolderModal, FolderModel folderModel, DialogInterface dialogInterface, int i) {
        selectFavoriteFolderModal.getViewModel().deleteFolder(folderModel, new Function0() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SelectFavoriteFolderModal.onDeleteConfirmationDialog$lambda$0$0$0(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onDeleteConfirmationDialog$lambda$0$0$0(SelectFavoriteFolderModal selectFavoriteFolderModal) {
        selectFavoriteFolderModal.getViewModel().getOnlyFavoriteFolders();
        return Unit.INSTANCE;
    }

    private final void editFolderConfirmation(FolderModel model) {
        FragmentActivity activity = getActivity();
        FragmentManager supportFragmentManager = activity != null ? activity.getSupportFragmentManager() : null;
        CreateNewDirectoryBottomSheetModal createNewDirectoryBottomSheetModal = new CreateNewDirectoryBottomSheetModal(new Function1() { // from class: fast.dic.dict.presentation.select_folder_screen.SelectFavoriteFolderModal$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SelectFavoriteFolderModal.editFolderConfirmation$lambda$0(this.f$0, (String) obj);
            }
        }, model.getName(), model.getDocumentId());
        if (supportFragmentManager != null) {
            createNewDirectoryBottomSheetModal.show(supportFragmentManager, "");
        }
    }

    static final Unit editFolderConfirmation$lambda$0(SelectFavoriteFolderModal selectFavoriteFolderModal, String str) {
        selectFavoriteFolderModal.getViewModel().getOnlyFavoriteFolders();
        return Unit.INSTANCE;
    }
}
