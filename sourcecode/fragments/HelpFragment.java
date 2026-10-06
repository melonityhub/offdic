package fast.dic.dict.fragments;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import androidx.navigation.NavArgsLazy;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.databinding.FragmentHelpBinding;
import fast.dic.dict.utils.ContextExtKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: HelpFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u001b¨\u0006\u001a"}, d2 = {"Lfast/dic/dict/fragments/HelpFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "urlParam", "", "canRedirect", "", "args", "Lfast/dic/dict/fragments/HelpFragmentArgs;", "getArgs", "()Lfast/dic/dict/fragments/HelpFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "binding", "Lfast/dic/dict/databinding/FragmentHelpBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "getWebViewClient", "Landroid/webkit/WebViewClient;", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class HelpFragment extends Hilt_HelpFragment {

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;
    private FragmentHelpBinding binding;
    private boolean canRedirect;
    private String urlParam;

    public HelpFragment() {
        final HelpFragment helpFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(HelpFragmentArgs.class), new Function0<Bundle>() { // from class: fast.dic.dict.fragments.HelpFragment$special$$inlined$navArgs$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = helpFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + helpFragment + " has null arguments");
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final HelpFragmentArgs getArgs() {
        return (HelpFragmentArgs) this.args.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentHelpBinding fragmentHelpBindingInflate = FragmentHelpBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentHelpBindingInflate, "inflate(...)");
        this.binding = fragmentHelpBindingInflate;
        this.urlParam = getArgs().getUrl();
        this.canRedirect = getArgs().getCanRedirect();
        ContextExtKt.setToolbarTitle(this, getArgs().getPageTitle());
        FragmentHelpBinding fragmentHelpBinding = this.binding;
        FragmentHelpBinding fragmentHelpBinding2 = null;
        if (fragmentHelpBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentHelpBinding = null;
        }
        fragmentHelpBinding.loadingSpinner.setVisibility(0);
        FragmentHelpBinding fragmentHelpBinding3 = this.binding;
        if (fragmentHelpBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentHelpBinding3 = null;
        }
        fragmentHelpBinding3.helpWebView.setWebViewClient(getWebViewClient());
        String str = this.urlParam;
        if (str != null) {
            FragmentHelpBinding fragmentHelpBinding4 = this.binding;
            if (fragmentHelpBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentHelpBinding4 = null;
            }
            fragmentHelpBinding4.helpWebView.loadUrl(str);
        }
        FragmentHelpBinding fragmentHelpBinding5 = this.binding;
        if (fragmentHelpBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentHelpBinding2 = fragmentHelpBinding5;
        }
        FrameLayout root = fragmentHelpBinding2.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    private final WebViewClient getWebViewClient() {
        return new HelpFragment$getWebViewClient$client$1(this);
    }
}
