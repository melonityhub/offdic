package fast.dic.dict.presentation.sort_screen;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.SavedStateHandle;
import androidx.navigation.NavArgsLazy;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import com.ironsource.L6;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.databinding.FragmentSortDialogBinding;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: SortDialog.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\b\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\n¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b ¨\u0006\u001f"}, d2 = {"Lfast/dic/dict/presentation/sort_screen/SortDialog;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "<init>", "()V", L6.G1, "Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;", "getAdapter", "()Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;", "setAdapter", "(Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;)V", "Ljavax/inject/Inject;", "args", "Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;", "getArgs", "()Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "Lfast/dic/dict/databinding/FragmentSortDialogBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Companion", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class SortDialog extends Hilt_SortDialog {
    public static final String DIALOG_STATUS_KEY = "sort_result";

    @Inject
    public SortDialogAdapter adapter;

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;
    private FragmentSortDialogBinding binding;

    public SortDialog() {
        final SortDialog sortDialog = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(SortDialogArgs.class), new Function0<Bundle>() { // from class: fast.dic.dict.presentation.sort_screen.SortDialog$special$$inlined$navArgs$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = sortDialog.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + sortDialog + " has null arguments");
            }
        });
    }

    public final SortDialogAdapter getAdapter() {
        SortDialogAdapter sortDialogAdapter = this.adapter;
        if (sortDialogAdapter != null) {
            return sortDialogAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException(L6.G1);
        return null;
    }

    public final void setAdapter(SortDialogAdapter sortDialogAdapter) {
        Intrinsics.checkNotNullParameter(sortDialogAdapter, "<set-?>");
        this.adapter = sortDialogAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final SortDialogArgs getArgs() {
        return (SortDialogArgs) this.args.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentSortDialogBinding fragmentSortDialogBindingInflate = FragmentSortDialogBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentSortDialogBindingInflate, "inflate(...)");
        this.binding = fragmentSortDialogBindingInflate;
        FragmentSortDialogBinding fragmentSortDialogBinding = null;
        if (fragmentSortDialogBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSortDialogBindingInflate = null;
        }
        fragmentSortDialogBindingInflate.setAdapter(getAdapter());
        FragmentSortDialogBinding fragmentSortDialogBinding2 = this.binding;
        if (fragmentSortDialogBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSortDialogBinding2 = null;
        }
        fragmentSortDialogBinding2.setLifecycleOwner(this);
        FragmentSortDialogBinding fragmentSortDialogBinding3 = this.binding;
        if (fragmentSortDialogBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentSortDialogBinding = fragmentSortDialogBinding3;
        }
        View root = fragmentSortDialogBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        SortFragmentUIState sortFragmentUIState;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        int selectedIndex = getArgs().getSelectedIndex();
        String[] items = getArgs().getItems();
        ArrayList arrayList = new ArrayList(items.length);
        int length = items.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            String str = items[i];
            int i3 = i2 + 1;
            if (getArgs().getSelectedIndex() > -1) {
                sortFragmentUIState = new SortFragmentUIState(str, selectedIndex == i2);
            } else if (getArgs().getSelectedItem() != null) {
                sortFragmentUIState = new SortFragmentUIState(str, StringsKt.contentEquals(getArgs().getSelectedItem(), str, true));
            } else {
                sortFragmentUIState = new SortFragmentUIState(str, false);
            }
            arrayList.add(sortFragmentUIState);
            i++;
            i2 = i3;
        }
        getAdapter().submitList(arrayList);
        getAdapter().setSelectedItemListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.sort_screen.SortDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SortDialog.onViewCreated$lambda$1(this.f$0, view2);
            }
        });
        FragmentSortDialogBinding fragmentSortDialogBinding = this.binding;
        if (fragmentSortDialogBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentSortDialogBinding = null;
        }
        fragmentSortDialogBinding.setDoneClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.sort_screen.SortDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.dismiss();
            }
        });
    }

    static final void onViewCreated$lambda$1(SortDialog sortDialog, View view) {
        Object next;
        String title;
        NavBackStackEntry previousBackStackEntry;
        SavedStateHandle savedStateHandle;
        List<SortFragmentUIState> currentList = sortDialog.getAdapter().getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "getCurrentList(...)");
        Iterator<T> it = currentList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((SortFragmentUIState) next).getSelected());
        SortFragmentUIState sortFragmentUIState = (SortFragmentUIState) next;
        if (sortFragmentUIState == null || (title = sortFragmentUIState.getTitle()) == null || (previousBackStackEntry = FragmentKt.findNavController(sortDialog).getPreviousBackStackEntry()) == null || (savedStateHandle = previousBackStackEntry.getSavedStateHandle()) == null) {
            return;
        }
        savedStateHandle.set(DIALOG_STATUS_KEY, title);
    }
}
