package fast.dic.dict.presentation.word_result_screen;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.core.view.MenuHost;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavController;
import androidx.navigation.fragment.FragmentKt;
import com.mbridge.msdk.MBridgeConstans;
import com.parse.ParseException;
import fast.dic.dict.R;
import fast.dic.dict.fragments.onboardings.ProPlanRequiredFragment;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.p000const.ConstKt;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.FDCategory;
import fast.dic.dict.utils.FragmentExtensionKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: WordResultFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0017b\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\nJ&\u0010\u000b\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\u0010"}, d2 = {"fast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1", "Landroid/webkit/WebViewClient;", "shouldOverrideUrlLoading", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/webkit/WebView;", "url", "", "Lkotlin/Deprecated;", "message", "Deprecated in Java", "onPageStarted", "", "favicon", "Landroid/graphics/Bitmap;", "onPageFinished", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class WordResultFragment$lazyWebClient$2$1 extends WebViewClient {
    final /* synthetic */ WordResultFragment this$0;

    WordResultFragment$lazyWebClient$2$1(WordResultFragment wordResultFragment) {
        this.this$0 = wordResultFragment;
    }

    @Override // android.webkit.WebViewClient
    @Deprecated(message = "Deprecated in Java")
    public boolean shouldOverrideUrlLoading(WebView view, String url) throws ParseException {
        if (url == null) {
            return false;
        }
        String str = url;
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.REQUEST_PREFIX_FD_USER_SUGGESTION, false, 2, (Object) null)) {
            WordResultFragment wordResultFragment = this.this$0;
            WordResultFragment wordResultFragment2 = wordResultFragment;
            ListModel listModel = wordResultFragment.getArgs().getListModel();
            Intrinsics.checkNotNull(listModel);
            FragmentExtensionKt.openSuggestionScreen(wordResultFragment2, listModel.getWord());
            return true;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.FD_BR_SOUND_DEEPLINK, false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.FD_AM_SOUND_DEEPLINK, false, 2, (Object) null)) {
            this.this$0.handleWordPronunciation(url);
            return true;
        }
        if (this.this$0.isSentencePronunciation(url)) {
            this.this$0.handleSentencePronunciation(url);
            return true;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.REQUEST_PREFIX_FD_IMAGE, false, 2, (Object) null)) {
            String strReplace$default = StringsKt.replace$default(url, ConstKt.REQUEST_PREFIX_FD_IMAGE, "", false, 4, (Object) null);
            FragmentActivity activity = this.this$0.getActivity();
            if (activity != null) {
                ContextExtKt.openChromeTab(activity, "https://fastdic.com/word/" + strReplace$default + "&ref=android");
            }
            return true;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.FD_FAV_DEEPLINK, false, 2, (Object) null)) {
            WordResultViewModel viewModel = this.this$0.getViewModel();
            ListModel listModel2 = this.this$0.getArgs().getListModel();
            Intrinsics.checkNotNull(listModel2);
            viewModel.insertOrDeleteFavorite(listModel2);
            return true;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.FD_WORD_DEEPLINK, false, 2, (Object) null)) {
            if (this.this$0.getArgs().getFromShare()) {
                return true;
            }
            try {
                String strDecode = URLDecoder.decode(StringsKt.replace$default(url, ConstKt.FD_WORD_DEEPLINK, "", false, 4, (Object) null), "UTF-8");
                System.out.println((Object) ("--------- result " + strDecode));
                ListModel listModel3 = new ListModel(false, false, null, 0, null, null, null, null, null, null, false, null, null, false, null, null, null, null, null, null, 0, 2097151, null);
                listModel3.setWord(strDecode);
                FDCategory fDCategory = new FDCategory();
                Intrinsics.checkNotNull(strDecode);
                listModel3.setCategory(fDCategory.findLanguage(strDecode));
                final WordResultFragmentArgs wordResultFragmentArgs = new WordResultFragmentArgs(listModel3, false, false, 6, null);
                if (this.this$0.isModal()) {
                    final WeakReference weakReference = new WeakReference(FragmentKt.findNavController(this.this$0));
                    this.this$0.dismiss();
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: fast.dic.dict.presentation.word_result_screen.WordResultFragment$lazyWebClient$2$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            WordResultFragment$lazyWebClient$2$1.shouldOverrideUrlLoading$lambda$0(weakReference, wordResultFragmentArgs);
                        }
                    });
                } else {
                    FragmentActivity activity2 = this.this$0.getActivity();
                    FragmentActivity fragmentActivity = activity2 instanceof MenuHost ? activity2 : null;
                    if (fragmentActivity != null) {
                        fragmentActivity.invalidateMenu();
                    }
                    FragmentActivity activity3 = this.this$0.getActivity();
                    FragmentActivity fragmentActivity2 = activity3 instanceof MenuHost ? activity3 : null;
                    if (fragmentActivity2 != null) {
                        fragmentActivity2.removeMenuProvider(this.this$0);
                    }
                    NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(this.this$0), R.id.wordResultScreen, wordResultFragmentArgs.toBundle());
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            return true;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.REQUEST_PREFIX_FDCOPY, false, 2, (Object) null)) {
            this.this$0.copyTranslation();
            return true;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.FD_OFFLINE_TRANSLATOR_DEEPLINK_ENABLED, false, 2, (Object) null)) {
            FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
            String string = this.this$0.getString(R.string.caution);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = this.this$0.getString(R.string.enable_offline_translator_caution_alert_message);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = this.this$0.getString(R.string.ok);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            fDAlertManger.showAlertWithOutForeCloseApp(string, string2, string3, this.this$0.requireContext());
            this.this$0.getViewModel().setOfflineTranslator(true);
            this.this$0.getResult();
            return true;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.FD_OFFLINE_TRANSLATOR_DEEPLINK_DISABLED, false, 2, (Object) null)) {
            this.this$0.getViewModel().setOfflineTranslator(false);
            this.this$0.getResult();
            return true;
        }
        if (StringsKt.contains$default((CharSequence) str, (CharSequence) ConstKt.FD_OFFLINE_TRANSLATOR_DEEPLINK_CLICKED, false, 2, (Object) null)) {
            ProPlanRequiredFragment.Companion companion = ProPlanRequiredFragment.INSTANCE;
            FragmentActivity fragmentActivityRequireActivity = this.this$0.requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            companion.openModal(fragmentActivityRequireActivity);
        }
        return true;
    }

    static final void shouldOverrideUrlLoading$lambda$0(WeakReference weakReference, WordResultFragmentArgs wordResultFragmentArgs) {
        NavController navController = (NavController) weakReference.get();
        if (navController != null) {
            NavControllerExtensionKt.navigateWithSlideAnimation(navController, R.id.wordResultModal, wordResultFragmentArgs.toBundle());
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        super.onPageStarted(view, url, favicon);
        this.this$0.getBinding().setLoading(true);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView view, String url) {
        super.onPageFinished(view, url);
        this.this$0.getBinding().setLoading(false);
    }
}
