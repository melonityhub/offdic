package fast.dic.dict.fragments;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import fast.dic.dict.R;
import fast.dic.dict.bases.BaseBottomSheetDialogFragment;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FullscreenBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\r\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0006\u0010\u001f\u001a\u00020\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\u0005R\u001a\u0010\n\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\u0005R5\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0006\u0012\u0004\u0012\u00020\u00110\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006 "}, d2 = {"Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;", "Lfast/dic/dict/bases/BaseBottomSheetDialogFragment;", "isDismissible", "", "<init>", "(Z)V", "done", "getDone", "()Z", "setDone", "fullscreen", "getFullscreen", "setFullscreen", "onDismiss", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "", "getOnDismiss", "()Lkotlin/jvm/functions/Function1;", "setOnDismiss", "(Lkotlin/jvm/functions/Function1;)V", "onCreateDialog", "Landroid/app/Dialog;", "savedInstanceState", "Landroid/os/Bundle;", "dialog", "Landroid/content/DialogInterface;", "setupFullHeight", "bottomSheet", "Landroid/view/View;", "doneDismiss", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public class FullscreenBottomSheetFragment extends BaseBottomSheetDialogFragment {
    private boolean done;
    private final boolean isDismissible;
    private boolean fullscreen = true;
    private Function1<? super Boolean, Unit> onDismiss = new Function1() { // from class: fast.dic.dict.fragments.FullscreenBottomSheetFragment$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            ((Boolean) obj).booleanValue();
            return Unit.INSTANCE;
        }
    };

    public FullscreenBottomSheetFragment(boolean z) {
        this.isDismissible = z;
    }

    public final boolean getDone() {
        return this.done;
    }

    public final void setDone(boolean z) {
        this.done = z;
    }

    public final boolean getFullscreen() {
        return this.fullscreen;
    }

    public final void setFullscreen(boolean z) {
        this.fullscreen = z;
    }

    public final Function1<Boolean, Unit> getOnDismiss() {
        return this.onDismiss;
    }

    public final void setOnDismiss(Function1<? super Boolean, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onDismiss = function1;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetDialogFragment, androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(savedInstanceState);
        BottomSheetDialog bottomSheetDialog = dialogOnCreateDialog instanceof BottomSheetDialog ? (BottomSheetDialog) dialogOnCreateDialog : null;
        if (!this.fullscreen) {
            Dialog dialogOnCreateDialog2 = super.onCreateDialog(savedInstanceState);
            Intrinsics.checkNotNullExpressionValue(dialogOnCreateDialog2, "onCreateDialog(...)");
            return dialogOnCreateDialog2;
        }
        if (bottomSheetDialog != null) {
            bottomSheetDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: fast.dic.dict.fragments.FullscreenBottomSheetFragment$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    FullscreenBottomSheetFragment.onCreateDialog$lambda$0(this.f$0, dialogInterface);
                }
            });
        }
        if (bottomSheetDialog != null) {
            return bottomSheetDialog;
        }
        Dialog dialogOnCreateDialog3 = super.onCreateDialog(savedInstanceState);
        Intrinsics.checkNotNullExpressionValue(dialogOnCreateDialog3, "onCreateDialog(...)");
        return dialogOnCreateDialog3;
    }

    static final void onCreateDialog$lambda$0(FullscreenBottomSheetFragment fullscreenBottomSheetFragment, DialogInterface dialogInterface) {
        BottomSheetDialog bottomSheetDialog = dialogInterface instanceof BottomSheetDialog ? (BottomSheetDialog) dialogInterface : null;
        View viewFindViewById = bottomSheetDialog != null ? bottomSheetDialog.findViewById(R.id.design_bottom_sheet) : null;
        FrameLayout frameLayout = viewFindViewById instanceof FrameLayout ? (FrameLayout) viewFindViewById : null;
        if (frameLayout == null) {
            return;
        }
        FrameLayout frameLayout2 = frameLayout;
        BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(frameLayout2);
        Intrinsics.checkNotNullExpressionValue(bottomSheetBehaviorFrom, "from(...)");
        fullscreenBottomSheetFragment.setupFullHeight(frameLayout2);
        bottomSheetBehaviorFrom.setState(3);
        if (fullscreenBottomSheetFragment.isDismissible) {
            return;
        }
        bottomSheetBehaviorFrom.setDraggable(false);
        bottomSheetBehaviorFrom.setHideable(false);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        this.onDismiss.invoke(Boolean.valueOf(this.done));
    }

    private final void setupFullHeight(View bottomSheet) {
        ViewGroup.LayoutParams layoutParams = bottomSheet.getLayoutParams();
        layoutParams.height = -1;
        bottomSheet.setLayoutParams(layoutParams);
        bottomSheet.requestLayout();
    }

    public final void doneDismiss() {
        this.done = true;
        dismiss();
    }
}
