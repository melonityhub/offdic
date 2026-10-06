package fast.dic.dict.presentation.result_order_modal;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.NavArgsLazy;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.ironsource.L6;
import com.mbridge.msdk.MBridgeConstans;
import com.parse.ParseException;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentResultOrderModalBinding;
import fast.dic.dict.p000const.ConfigConstKt;
import fast.dic.dict.utils.IntExtKt;
import java.util.List;
import javax.inject.Inject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: ResultOrderModalFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0012\u0010!\u001a\u00020\"2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001a2\b\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\b\u0010&\u001a\u00020$H\u0002R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\n¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016Ê\u0001\u0002\b(¨\u0006'"}, d2 = {"Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "<init>", "()V", L6.G1, "Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;", "getAdapter", "()Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;", "setAdapter", "(Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;)V", "Ljavax/inject/Inject;", "args", "Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;", "getArgs", "()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "Lfast/dic/dict/databinding/FragmentResultOrderModalBinding;", "viewModel", "Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;", "getViewModel", "()Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalViewModel;", "viewModel$delegate", "Lkotlin/Lazy;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onCreateDialog", "Landroid/app/Dialog;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "dismissWithChangedValue", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class ResultOrderModalFragment extends Hilt_ResultOrderModalFragment {

    @Inject
    public ResultOrderAdapter adapter;

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;
    private FragmentResultOrderModalBinding binding;

    /* JADX INFO: renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;

    public ResultOrderModalFragment() {
        final ResultOrderModalFragment resultOrderModalFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(ResultOrderModalFragmentArgs.class), new Function0<Bundle>() { // from class: fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment$special$$inlined$navArgs$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = resultOrderModalFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + resultOrderModalFragment + " has null arguments");
            }
        });
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment$special$$inlined$viewModels$default$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Fragment invoke() {
                return resultOrderModalFragment;
            }
        };
        final Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<ViewModelStoreOwner>() { // from class: fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment$special$$inlined$viewModels$default$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStoreOwner invoke() {
                return (ViewModelStoreOwner) function0.invoke();
            }
        });
        final Function0 function1 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(resultOrderModalFragment, Reflection.getOrCreateKotlinClass(ResultOrderModalViewModel.class), new Function0<ViewModelStore>() { // from class: fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment$special$$inlined$viewModels$default$3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                return FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy).getViewModelStore();
            }
        }, new Function0<CreationExtras>() { // from class: fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment$special$$inlined$viewModels$default$4
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
        }, new Function0<ViewModelProvider.Factory>() { // from class: fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                ViewModelProvider.Factory defaultViewModelProviderFactory;
                ViewModelStoreOwner viewModelStoreOwnerM1393viewModels$lambda1 = FragmentViewModelLazyKt.m1393viewModels$lambda1(lazy);
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwnerM1393viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwnerM1393viewModels$lambda1 : null;
                if (hasDefaultViewModelProviderFactory != null && (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) != null) {
                    return defaultViewModelProviderFactory;
                }
                ViewModelProvider.Factory defaultViewModelProviderFactory2 = resultOrderModalFragment.getDefaultViewModelProviderFactory();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory2, "<get-defaultViewModelProviderFactory>(...)");
                return defaultViewModelProviderFactory2;
            }
        });
    }

    public final ResultOrderAdapter getAdapter() {
        ResultOrderAdapter resultOrderAdapter = this.adapter;
        if (resultOrderAdapter != null) {
            return resultOrderAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException(L6.G1);
        return null;
    }

    public final void setAdapter(ResultOrderAdapter resultOrderAdapter) {
        Intrinsics.checkNotNullParameter(resultOrderAdapter, "<set-?>");
        this.adapter = resultOrderAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final ResultOrderModalFragmentArgs getArgs() {
        return (ResultOrderModalFragmentArgs) this.args.getValue();
    }

    private final ResultOrderModalViewModel getViewModel() {
        return (ResultOrderModalViewModel) this.viewModel.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentResultOrderModalBinding fragmentResultOrderModalBindingInflate = FragmentResultOrderModalBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentResultOrderModalBindingInflate, "inflate(...)");
        this.binding = fragmentResultOrderModalBindingInflate;
        getAdapter().setEnglishWord(getArgs().getForEnglish());
        FragmentResultOrderModalBinding fragmentResultOrderModalBinding = this.binding;
        FragmentResultOrderModalBinding fragmentResultOrderModalBinding2 = null;
        if (fragmentResultOrderModalBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentResultOrderModalBinding = null;
        }
        fragmentResultOrderModalBinding.setAdapter(getAdapter());
        FragmentResultOrderModalBinding fragmentResultOrderModalBinding3 = this.binding;
        if (fragmentResultOrderModalBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentResultOrderModalBinding3 = null;
        }
        fragmentResultOrderModalBinding3.setLifecycleOwner(this);
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new ItemTouchHelperCallback(getAdapter()));
        FragmentResultOrderModalBinding fragmentResultOrderModalBinding4 = this.binding;
        if (fragmentResultOrderModalBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentResultOrderModalBinding4 = null;
        }
        itemTouchHelper.attachToRecyclerView(fragmentResultOrderModalBinding4.orderRv);
        FragmentResultOrderModalBinding fragmentResultOrderModalBinding5 = this.binding;
        if (fragmentResultOrderModalBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentResultOrderModalBinding5 = null;
        }
        fragmentResultOrderModalBinding5.setDismissClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        FragmentResultOrderModalBinding fragmentResultOrderModalBinding6 = this.binding;
        if (fragmentResultOrderModalBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentResultOrderModalBinding6 = null;
        }
        fragmentResultOrderModalBinding6.setRestoreClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws ParseException {
                ResultOrderModalFragment.onCreateView$lambda$1(this.f$0, view);
            }
        });
        FragmentResultOrderModalBinding fragmentResultOrderModalBinding7 = this.binding;
        if (fragmentResultOrderModalBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentResultOrderModalBinding7 = null;
        }
        fragmentResultOrderModalBinding7.setSaveClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws ParseException {
                ResultOrderModalFragment.onCreateView$lambda$2(this.f$0, view);
            }
        });
        FragmentResultOrderModalBinding fragmentResultOrderModalBinding8 = this.binding;
        if (fragmentResultOrderModalBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentResultOrderModalBinding2 = fragmentResultOrderModalBinding8;
        }
        View root = fragmentResultOrderModalBinding2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final void onCreateView$lambda$1(ResultOrderModalFragment resultOrderModalFragment, View view) throws ParseException {
        if (resultOrderModalFragment.getArgs().getForEnglish()) {
            resultOrderModalFragment.getViewModel().updateOrder(ConfigConstKt.getDEFAULT_ENGLISH_RESULT_ORDER_BY(), resultOrderModalFragment.getArgs().getForEnglish());
        } else {
            resultOrderModalFragment.getViewModel().updateOrder(ConfigConstKt.getDEFAULT_PERSIAN_RESULT_ORDER_BY(), resultOrderModalFragment.getArgs().getForEnglish());
        }
        resultOrderModalFragment.dismissWithChangedValue();
    }

    static final void onCreateView$lambda$2(ResultOrderModalFragment resultOrderModalFragment, View view) throws ParseException {
        ResultOrderModalViewModel viewModel = resultOrderModalFragment.getViewModel();
        List<String> currentList = resultOrderModalFragment.getAdapter().getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        viewModel.updateOrder(currentList, resultOrderModalFragment.getArgs().getForEnglish());
        resultOrderModalFragment.dismissWithChangedValue();
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        Intrinsics.checkNotNullExpressionValue(dialogOnCreateDialog, "onCreateDialog(...)");
        dialogOnCreateDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragment$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                ResultOrderModalFragment.onCreateDialog$lambda$0(this.f$0, dialogInterface);
            }
        });
        return dialogOnCreateDialog;
    }

    static final void onCreateDialog$lambda$0(ResultOrderModalFragment resultOrderModalFragment, DialogInterface dialogInterface) {
        BottomSheetBehavior<FrameLayout> behavior;
        BottomSheetBehavior<FrameLayout> behavior2;
        BottomSheetBehavior<FrameLayout> behavior3;
        BottomSheetDialog bottomSheetDialog = dialogInterface instanceof BottomSheetDialog ? (BottomSheetDialog) dialogInterface : null;
        if (resultOrderModalFragment.getArgs().getForEnglish()) {
            if (bottomSheetDialog != null && (behavior3 = bottomSheetDialog.getBehavior()) != null) {
                Context contextRequireContext = resultOrderModalFragment.requireContext();
                Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
                behavior3.setPeekHeight(IntExtKt.toDimensionUnit$default(620.0f, contextRequireContext, 0, 2, null));
            }
        } else if (bottomSheetDialog != null && (behavior = bottomSheetDialog.getBehavior()) != null) {
            Context contextRequireContext2 = resultOrderModalFragment.requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
            behavior.setPeekHeight(IntExtKt.toDimensionUnit$default(380.0f, contextRequireContext2, 0, 2, null));
        }
        if (bottomSheetDialog == null || (behavior2 = bottomSheetDialog.getBehavior()) == null) {
            return;
        }
        behavior2.setFitToContents(true);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Window window;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        getAdapter().submitList(CollectionsKt.toList(getViewModel().getOrderResult(getArgs().getForEnglish())));
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        window.setWindowAnimations(R.style.DialogTheme);
    }

    private final void dismissWithChangedValue() {
        try {
            FragmentKt.findNavController(this).getBackStackEntry(R.id.wordResultScreen).getSavedStateHandle().set("orderChanged", true);
        } catch (Exception e) {
            e.printStackTrace();
            getParentFragmentManager().setFragmentResult("bottom_sheet_result", BundleKt.bundleOf(TuplesKt.to("orderChanged", true)));
        }
        dismiss();
    }
}
