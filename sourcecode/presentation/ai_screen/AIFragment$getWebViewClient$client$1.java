package fast.dic.dict.presentation.ai_screen;

import android.os.Bundle;
import android.webkit.CookieManager;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.fragment.FragmentKt;
import com.mbridge.msdk.MBridgeConstans;
import fast.dic.dict.R;
import fast.dic.dict.databinding.FragmentAIBinding;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.p000const.ConstKt;
import fast.dic.dict.presentation.fullscreen_modal.FullscreenModal;
import fast.dic.dict.presentation.word_result_screen.WordResultFragmentArgs;
import fast.dic.dict.utils.FragmentExtensionKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.utils.StringExtKt;
import io.sentry.SentryBaseEvent;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: AIFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016JH\u0010\r\u001a\u00020\u000e2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0017b*\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u001c\b\u0012\u0012\u0018\b\u000bB\u0014\b\u0013\u0012\b\b\u0014\u0012\u0004\b\b(\u0015\u0012\u0006\b\u0016\u0012\u0002\b\f¨\u0006\u0017"}, d2 = {"fast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1", "Landroid/webkit/WebViewClient;", "onPageFinished", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/webkit/WebView;", "url", "", "onReceivedError", SentryBaseEvent.JsonKeys.REQUEST, "Landroid/webkit/WebResourceRequest;", "error", "Landroid/webkit/WebResourceError;", "shouldOverrideUrlLoading", "", "Lkotlin/Deprecated;", "message", "Deprecated in Java", "replaceWith", "Lkotlin/ReplaceWith;", "expression", "false", "imports", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class AIFragment$getWebViewClient$client$1 extends WebViewClient {
    final /* synthetic */ AIFragment this$0;

    AIFragment$getWebViewClient$client$1(AIFragment aIFragment) {
        this.this$0 = aIFragment;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        super.onPageFinished(view, url);
        CookieManager.getInstance().setAcceptCookie(true);
        CookieManager.getInstance().acceptCookie();
        CookieManager.getInstance().flush();
        FragmentAIBinding fragmentAIBinding = this.this$0.binding;
        if (fragmentAIBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBinding = null;
        }
        fragmentAIBinding.setLoading(false);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        super.onReceivedError(view, request, error);
        FragmentAIBinding fragmentAIBinding = this.this$0.binding;
        if (fragmentAIBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentAIBinding = null;
        }
        fragmentAIBinding.setLoading(false);
    }

    @Override // android.webkit.WebViewClient
    @Deprecated(message = "Deprecated in Java", replaceWith = @ReplaceWith(expression = "false", imports = {}))
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        if (url == null) {
            return false;
        }
        String str = url;
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.REQUEST_PREFIX_PURCHASE, false, 2, (Object) null)) {
            this.this$0.getViewModel().validRewardedAdsForAiTranslator();
            FragmentManager supportFragmentManager = this.this$0.requireActivity().getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            final FullscreenModal fullscreenModal = new FullscreenModal(true, this.this$0.getString(R.string.ai_title), this.this$0.getString(R.string.ai_translator_limitation_desc), this.this$0.getString(R.string.ai_translator_limitation_cta_title), ConstKt.FD_PRICING_SCREEN, null, null, null, null, 32, null);
            final AIFragment aIFragment = this.this$0;
            fullscreenModal.show(supportFragmentManager, "");
            fullscreenModal.setOnDismissed(new Function1() { // from class: fast.dic.dict.presentation.ai_screen.AIFragment$getWebViewClient$client$1$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return AIFragment$getWebViewClient$client$1.shouldOverrideUrlLoading$lambda$0$0(fullscreenModal, aIFragment, ((Boolean) obj).booleanValue());
                }
            });
            return true;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.REQUEST_PREFIX_SEARCH, false, 2, (Object) null)) {
            String strUrlDecode = StringExtKt.urlDecode(StringsKt.replace$default(url, ConstKt.REQUEST_PREFIX_SEARCH, "", false, 4, (Object) null));
            if (strUrlDecode == null) {
                return false;
            }
            NavControllerExtensionKt.openModal(FragmentKt.findNavController(this.this$0), R.id.wordResultModal, new WordResultFragmentArgs(new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, strUrlDecode, null, 0, 1835007, null), false, false, 6, null).toBundle());
            return true;
        }
        if (!StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.FD_BR_SOUND_DEEPLINK, false, 2, (Object) null) && !StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.FD_AM_SOUND_DEEPLINK, false, 2, (Object) null)) {
            return false;
        }
        this.this$0.audioClickedOffline(url);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit shouldOverrideUrlLoading$lambda$0$0(FullscreenModal fullscreenModal, AIFragment aIFragment, boolean z) {
        if (z) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("fromOnBoarding", true);
            FragmentExtensionKt.openTab(fullscreenModal, R.id.moreFragment, Integer.valueOf(R.id.newPricingFragment), bundle);
        } else {
            AIFragment.loadUrlWithCheck$default(aIFragment, null, 1, null);
        }
        return Unit.INSTANCE;
    }
}
