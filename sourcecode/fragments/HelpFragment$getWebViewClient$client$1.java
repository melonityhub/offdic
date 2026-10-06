package fast.dic.dict.fragments;

import android.media.MediaPlayer;
import android.net.Uri;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mbridge.msdk.MBridgeConstans;
import fast.dic.dict.databinding.FragmentHelpBinding;
import fast.dic.dict.p000const.ConfigConstKt;
import fast.dic.dict.utils.FDAudioPlayerManager;
import fast.dic.dict.utils.Logger;
import io.sentry.SentryBaseEvent;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HelpFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0016J*\u0010\r\u001a\u00020\u000e2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0017b\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011¨\u0006\u0012"}, d2 = {"fast/dic/dict/fragments/HelpFragment$getWebViewClient$client$1", "Landroid/webkit/WebViewClient;", "onPageFinished", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/webkit/WebView;", "url", "", "onReceivedError", SentryBaseEvent.JsonKeys.REQUEST, "Landroid/webkit/WebResourceRequest;", "error", "Landroid/webkit/WebResourceError;", "shouldOverrideUrlLoading", "", "Lkotlin/Deprecated;", "message", "Deprecated in Java", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class HelpFragment$getWebViewClient$client$1 extends WebViewClient {
    final /* synthetic */ HelpFragment this$0;

    HelpFragment$getWebViewClient$client$1(HelpFragment helpFragment) {
        this.this$0 = helpFragment;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        super.onPageFinished(view, url);
        FragmentHelpBinding fragmentHelpBinding = this.this$0.binding;
        if (fragmentHelpBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentHelpBinding = null;
        }
        fragmentHelpBinding.loadingSpinner.setVisibility(8);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        super.onReceivedError(view, request, error);
        FragmentHelpBinding fragmentHelpBinding = this.this$0.binding;
        if (fragmentHelpBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentHelpBinding = null;
        }
        fragmentHelpBinding.loadingSpinner.setVisibility(8);
    }

    @Override // android.webkit.WebViewClient
    @Deprecated(message = "Deprecated in Java")
    public boolean shouldOverrideUrlLoading(WebView view, String url) {
        if (!this.this$0.canRedirect && url != null) {
            Uri uri = Uri.parse(url);
            Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
            if (uri != null) {
                FDAudioPlayerManager.INSTANCE.getGet().audioPlayerAsync(ConfigConstKt.AUDIO_HELP_FILE_BASE_URL + (uri.getHost() + uri.getPath()) + ".mp3", this.this$0.getContext(), new MediaPlayer.OnCompletionListener() { // from class: fast.dic.dict.fragments.HelpFragment$getWebViewClient$client$1$$ExternalSyntheticLambda0
                    @Override // android.media.MediaPlayer.OnCompletionListener
                    public final void onCompletion(MediaPlayer mediaPlayer) {
                        Logger.INSTANCE.getLogger1().debug("Play phonetic pronunciation is completed.", new Object[0]);
                    }
                });
                return true;
            }
        }
        return false;
    }
}
