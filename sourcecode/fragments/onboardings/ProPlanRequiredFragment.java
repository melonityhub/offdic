package fast.dic.dict.fragments.onboardings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import androidx.fragment.app.FragmentActivity;
import com.yandex.div.core.dagger.Names;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentProPlanRequiredBinding;
import fast.dic.dict.utils.FragmentExtensionKt;
import fast.dic.dict.utils.ViewExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ProPlanRequiredFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u0010¨\u0006\u000f"}, d2 = {"Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;", "Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;", "<init>", "()V", "binding", "Lfast/dic/dict/databinding/FragmentProPlanRequiredBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "Companion", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class ProPlanRequiredFragment extends Hilt_ProPlanRequiredFragment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private FragmentProPlanRequiredBinding binding;

    public ProPlanRequiredFragment() {
        super(true);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentProPlanRequiredBinding fragmentProPlanRequiredBindingInflate = FragmentProPlanRequiredBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentProPlanRequiredBindingInflate, "inflate(...)");
        this.binding = fragmentProPlanRequiredBindingInflate;
        FragmentProPlanRequiredBinding fragmentProPlanRequiredBinding = null;
        if (fragmentProPlanRequiredBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProPlanRequiredBindingInflate = null;
        }
        fragmentProPlanRequiredBindingInflate.secondaryBtn.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.onboardings.ProPlanRequiredFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        FragmentProPlanRequiredBinding fragmentProPlanRequiredBinding2 = this.binding;
        if (fragmentProPlanRequiredBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProPlanRequiredBinding2 = null;
        }
        fragmentProPlanRequiredBinding2.toolbarView.leftToolbarButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.onboardings.ProPlanRequiredFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.dismiss();
            }
        });
        FragmentProPlanRequiredBinding fragmentProPlanRequiredBinding3 = this.binding;
        if (fragmentProPlanRequiredBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProPlanRequiredBinding3 = null;
        }
        ImageButton rightToolbarButton = fragmentProPlanRequiredBinding3.toolbarView.rightToolbarButton;
        Intrinsics.checkNotNullExpressionValue(rightToolbarButton, "rightToolbarButton");
        ViewExtKt.hideMeNow(rightToolbarButton);
        FragmentProPlanRequiredBinding fragmentProPlanRequiredBinding4 = this.binding;
        if (fragmentProPlanRequiredBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentProPlanRequiredBinding4 = null;
        }
        fragmentProPlanRequiredBinding4.primaryBtn.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.onboardings.ProPlanRequiredFragment$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ProPlanRequiredFragment.onCreateView$lambda$2(this.f$0, view);
            }
        });
        FragmentProPlanRequiredBinding fragmentProPlanRequiredBinding5 = this.binding;
        if (fragmentProPlanRequiredBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentProPlanRequiredBinding = fragmentProPlanRequiredBinding5;
        }
        RelativeLayout root = fragmentProPlanRequiredBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final void onCreateView$lambda$2(ProPlanRequiredFragment proPlanRequiredFragment, View view) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("fromOnBoarding", true);
        FragmentExtensionKt.openTab(proPlanRequiredFragment, R.id.moreFragment, Integer.valueOf(R.id.newPricingFragment), bundle);
        proPlanRequiredFragment.dismiss();
    }

    /* JADX INFO: compiled from: ProPlanRequiredFragment.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$Companion;", "", "<init>", "()V", "openModal", "Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;", Names.CONTEXT, "Landroidx/fragment/app/FragmentActivity;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ProPlanRequiredFragment openModal(FragmentActivity context) {
            Intrinsics.checkNotNullParameter(context, "context");
            ProPlanRequiredFragment proPlanRequiredFragment = new ProPlanRequiredFragment();
            proPlanRequiredFragment.show(context.getSupportFragmentManager(), "");
            return proPlanRequiredFragment;
        }
    }
}
