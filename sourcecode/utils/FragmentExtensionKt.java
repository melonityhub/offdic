package fast.dic.dict.utils;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.core.app.ShareCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.navigation.ActivityKt;
import androidx.navigation.NavController;
import androidx.navigation.fragment.FragmentKt;
import androidx.navigation.fragment.NavHostFragment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.webkit.internal.AssetHelper;
import com.amazon.device.ads.DtbConstants;
import com.parse.ParseException;
import com.parse.ParseUser;
import com.vungle.ads.internal.protos.Sdk;
import fast.dic.dict.R;
import fast.dic.dict.activities.MainActivity;
import fast.dic.dict.fragments.HelpFragmentArgs;
import fast.dic.dict.fragments.HomeFragment;
import fast.dic.dict.fragments.SearchFragment;
import fast.dic.dict.p000const.ConstKt;
import fast.dic.dict.presentation.ai_screen.AIFragment;
import fast.dic.dict.presentation.fullscreen_modal.FullscreenModal;
import fast.dic.dict.presentation.result_order_modal.ResultOrderModalFragmentArgs;
import fast.dic.dict.presentation.word_result_screen.WordResultFragment;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.views.SearchBarView;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: FragmentExtension.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\\\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aG\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042#\b\u0002\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\u00010\b\u001a\n\u0010\r\u001a\u00020\u000e*\u00020\u0002\u001a\f\u0010\u000f\u001a\u0004\u0018\u00010\u0002*\u00020\u0010\u001a\f\u0010\u000f\u001a\u0004\u0018\u00010\u0002*\u00020\u0002\u001a\u0014\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u001a\u001c\u0010\u0013\u001a\u00020\u0001*\u0004\u0018\u00010\u00142\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004\u001a\u0012\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0004\u001a9\u0010\u0018\u001a\u00020\u0001*\u00020\u00022\f\b\u0001\u0010\u0019\u001a\u00020\u001a:\u0002\b\u001b2\u000e\b\u0003\u0010\u001c\u001a\u0004\u0018\u00010\u001a:\u0002\b\u001b2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e¢\u0006\u0002\u0010\u001f\u001a\u0014\u0010 \u001a\u00020\u0001*\u00020\u00022\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u001a\u001a\u0010!\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00042\b\u0010\"\u001a\u0004\u0018\u00010#H\u0002\u001a\u0014\u0010$\u001a\u00020\t*\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\u0004¨\u0006'"}, d2 = {"showBeforeLoginScreen", "", "Landroidx/fragment/app/Fragment;", "title", "", "description", "ctaTitle", "dismissed", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cta", "getScrollListenerImp", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "getCurrentFragment", "Landroidx/fragment/app/FragmentManager;", "openResultOrderModal", "word", "shareString", "Landroid/app/Activity;", "meaning", "openAiScreen", "documentId", "openTab", "itemId", "", "Landroidx/annotation/IdRes;", "fragmentId", "data", "Landroid/os/Bundle;", "(Landroidx/fragment/app/Fragment;ILjava/lang/Integer;Landroid/os/Bundle;)V", "openSuggestionScreen", "navigateToAiScreen", "mainActivity", "Lfast/dic/dict/activities/MainActivity;", "search", "Landroidx/fragment/app/FragmentActivity;", "content", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class FragmentExtensionKt {
    public static /* synthetic */ void showBeforeLoginScreen$default(final Fragment fragment, String str, String str2, String str3, Function1 function1, int i, Object obj) {
        if ((i & 8) != 0) {
            function1 = new Function1() { // from class: fast.dic.dict.utils.FragmentExtensionKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj2) {
                    return FragmentExtensionKt.showBeforeLoginScreen$lambda$0(fragment, ((Boolean) obj2).booleanValue());
                }
            };
        }
        showBeforeLoginScreen(fragment, str, str2, str3, function1);
    }

    static final Unit showBeforeLoginScreen$lambda$0(Fragment fragment, boolean z) {
        if (z) {
            NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(fragment), R.id.newPricingFragment, null, 2, null);
        }
        return Unit.INSTANCE;
    }

    public static final void showBeforeLoginScreen(Fragment fragment, String title, String description, String ctaTitle, Function1<? super Boolean, Unit> dismissed) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(ctaTitle, "ctaTitle");
        Intrinsics.checkNotNullParameter(dismissed, "dismissed");
        FragmentManager supportFragmentManager = fragment.requireActivity().getSupportFragmentManager();
        Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
        FullscreenModal fullscreenModal = new FullscreenModal(true, title, description, ctaTitle, ConstKt.FD_PRICING_SCREEN, null, null, null, null, DtbConstants.DEFAULT_PLAYER_HEIGHT, null);
        fullscreenModal.show(supportFragmentManager, "");
        fullscreenModal.setOnDismissed(dismissed);
    }

    public static final RecyclerView.OnScrollListener getScrollListenerImp(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        FragmentActivity activity = fragment.getActivity();
        return new AnonymousClass1(activity instanceof MainActivity ? (MainActivity) activity : null);
    }

    /* JADX INFO: renamed from: fast.dic.dict.utils.FragmentExtensionKt$getScrollListenerImp$1, reason: invalid class name */
    /* JADX INFO: compiled from: FragmentExtension.kt */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016¨\u0006\u000b"}, d2 = {"fast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1", "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;", "onScrollStateChanged", "", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "newState", "", "onScrolled", "dx", "dy", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class AnonymousClass1 extends RecyclerView.OnScrollListener {
        final /* synthetic */ MainActivity $mainActivity;

        AnonymousClass1(MainActivity mainActivity) {
            this.$mainActivity = mainActivity;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
            String str;
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 0) {
                str = "SCROLL_STATE_IDLE";
            } else if (newState == 1) {
                str = "SCROLL_STATE_DRAGGING";
            } else {
                str = "SCROLL_STATE_SETTLING";
            }
            LoggerKt.getLogger().debug("onScrollStateChanged called ---> newState = ".concat(str), new Object[0]);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            super.onScrolled(recyclerView, dx, dy);
            LoggerKt.getLogger().debug("onScrolled called ---> dx = " + dx + " and dy = " + dy, new Object[0]);
            if (recyclerView.getScrollState() == 1) {
                AnyDebounce anyDebounce = AnyDebounce.INSTANCE;
                Integer numValueOf = Integer.valueOf(dy);
                final MainActivity mainActivity = this.$mainActivity;
                anyDebounce.debounce(numValueOf, 50L, new Function1() { // from class: fast.dic.dict.utils.FragmentExtensionKt$getScrollListenerImp$1$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return FragmentExtensionKt.AnonymousClass1.onScrolled$lambda$0(mainActivity, ((Integer) obj).intValue());
                    }
                });
            }
        }

        static final Unit onScrolled$lambda$0(MainActivity mainActivity, int i) {
            if (mainActivity != null) {
                mainActivity.changeFloatingButtonVisibility(i < 0);
            }
            return Unit.INSTANCE;
        }
    }

    public static final Fragment getCurrentFragment(FragmentManager fragmentManager) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        List<Fragment> fragments = fragmentManager.getFragments();
        Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
        if (CollectionsKt.last((List) fragments) instanceof NavHostFragment) {
            Object objLast = CollectionsKt.last((List<? extends Object>) fragments);
            Intrinsics.checkNotNull(objLast, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment");
            fragments = ((NavHostFragment) objLast).getChildFragmentManager().getFragments();
            Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
        }
        for (Fragment fragment : fragments) {
            if (fragment instanceof NavHostFragment) {
                List<Fragment> fragments2 = ((NavHostFragment) fragment).getChildFragmentManager().getFragments();
                Intrinsics.checkNotNullExpressionValue(fragments2, "getFragments(...)");
                return (Fragment) CollectionsKt.last((List) fragments2);
            }
            if (fragment instanceof Fragment) {
                return fragment;
            }
        }
        return null;
    }

    public static final Fragment getCurrentFragment(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        if (!(fragment instanceof NavHostFragment)) {
            return fragment;
        }
        List<Fragment> fragments = ((NavHostFragment) fragment).getChildFragmentManager().getFragments();
        Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
        return (Fragment) CollectionsKt.last((List) fragments);
    }

    public static final void openResultOrderModal(Fragment fragment, String str) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(fragment), R.id.resultOrderModalFragment, new ResultOrderModalFragmentArgs(FDLanguageWord.INSTANCE.isEnglish(str)).toBundle());
    }

    public static final void shareString(Activity activity, String word, String meaning) {
        Intrinsics.checkNotNullParameter(word, "word");
        Intrinsics.checkNotNullParameter(meaning, "meaning");
        if (activity != null) {
            Activity activity2 = activity;
            Intent intent = new ShareCompat.IntentBuilder(activity2).setType(AssetHelper.DEFAULT_MIME_TYPE).setText(meaning).setSubject(word).getIntent();
            Intrinsics.checkNotNullExpressionValue(intent, "getIntent(...)");
            PackageManager packageManager = activity.getPackageManager();
            if ((packageManager != null ? intent.resolveActivity(packageManager) : null) != null) {
                ContextExtKt.startActivityWithIntent(activity2, intent);
            }
        }
    }

    public static final void openAiScreen(Fragment fragment, final String documentId) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        if (StringsKt.trim((CharSequence) documentId).toString().length() == 0) {
            return;
        }
        FragmentActivity activity = fragment.getActivity();
        final MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        if (mainActivity != null) {
            mainActivity.selectAiTab();
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: fast.dic.dict.utils.FragmentExtensionKt$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FragmentExtensionKt.navigateToAiScreen(documentId, mainActivity);
            }
        }, 200L);
    }

    public static /* synthetic */ void openTab$default(Fragment fragment, int i, Integer num, Bundle bundle, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            num = null;
        }
        if ((i2 & 4) != 0) {
            bundle = null;
        }
        openTab(fragment, i, num, bundle);
    }

    public static final void openTab(Fragment fragment, int i, final Integer num, final Bundle bundle) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        FragmentActivity activity = fragment.getActivity();
        final MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
        if (mainActivity != null) {
            mainActivity.selectTab(i);
        }
        if (num != null) {
            num.intValue();
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: fast.dic.dict.utils.FragmentExtensionKt$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    FragmentExtensionKt.openTab$lambda$0(mainActivity, num, bundle);
                }
            }, 200L);
        }
    }

    static final void openTab$lambda$0(MainActivity mainActivity, Integer num, Bundle bundle) {
        NavController navControllerFindNavController;
        if (mainActivity == null || (navControllerFindNavController = ActivityKt.findNavController(mainActivity, R.id.nav_fragment)) == null) {
            return;
        }
        NavControllerExtensionKt.navigateWithSlideAnimation(navControllerFindNavController, num.intValue(), bundle);
    }

    public static final void openSuggestionScreen(Fragment fragment, String str) throws ParseException {
        String str2;
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        String str3 = "Device: " + ContextExtKt.getAndroidDeviceName() + ", Android Version: " + ContextExtKt.getAndroidVersion() + ", App Version: 5.7.4(444)";
        ParseUser currentUser = ParseUser.getCurrentUser();
        if ((currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null) != null) {
            str2 = "&userEmail=" + ParseUser.getCurrentUser().getEmail();
        } else {
            str2 = "";
        }
        NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(fragment), R.id.helpFragment, new HelpFragmentArgs("https://fastdic.com/suggestion-form?word=" + str + "&detail=" + str3 + "&disableSections=true" + str2, "", true).toBundle());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean navigateToAiScreen(String str, MainActivity mainActivity) {
        FragmentManager supportFragmentManager;
        Fragment fragmentFindFragmentById;
        Fragment currentFragment = (mainActivity == null || (supportFragmentManager = mainActivity.getSupportFragmentManager()) == null || (fragmentFindFragmentById = supportFragmentManager.findFragmentById(R.id.nav_fragment)) == null) ? null : getCurrentFragment(fragmentFindFragmentById);
        if (!(currentFragment instanceof AIFragment)) {
            return false;
        }
        ((AIFragment) currentFragment).updateUrlFromFavoriteScreen(str);
        return true;
    }

    public static final boolean search(FragmentActivity fragmentActivity, String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        MainActivity mainActivity = fragmentActivity instanceof MainActivity ? (MainActivity) fragmentActivity : null;
        if (mainActivity == null) {
            return false;
        }
        Fragment fragmentFindFragmentById = mainActivity.getSupportFragmentManager().findFragmentById(R.id.nav_fragment);
        Fragment currentFragment = fragmentFindFragmentById != null ? getCurrentFragment(fragmentFindFragmentById) : null;
        boolean z = currentFragment instanceof HomeFragment;
        if ((!z && !(currentFragment instanceof SearchFragment) && !(currentFragment instanceof WordResultFragment)) || !currentFragment.isVisible()) {
            return false;
        }
        if (z) {
            HomeFragment homeFragment = (HomeFragment) currentFragment;
            SearchBarView searchBarView = homeFragment.getBinding().searchBarView;
            Intrinsics.checkNotNullExpressionValue(searchBarView, "searchBarView");
            SearchBarView.setText$default(searchBarView, content, false, 2, null);
            homeFragment.getBinding().searchBarView.requestForFocus();
            return true;
        }
        if (currentFragment instanceof SearchFragment) {
            SearchFragment searchFragment = (SearchFragment) currentFragment;
            SearchBarView searchBarView2 = searchFragment.getBinding().searchBarView;
            Intrinsics.checkNotNullExpressionValue(searchBarView2, "searchBarView");
            SearchBarView.setText$default(searchBarView2, content, false, 2, null);
            searchFragment.getBinding().searchBarView.requestForFocus();
            return true;
        }
        if (!(currentFragment instanceof WordResultFragment)) {
            return true;
        }
        FragmentKt.findNavController(currentFragment).navigateUp();
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new AnonymousClass3(fragmentActivity, content, null), 3, null);
        return true;
    }

    /* JADX INFO: renamed from: fast.dic.dict.utils.FragmentExtensionKt$search$3, reason: invalid class name */
    /* JADX INFO: compiled from: FragmentExtension.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.utils.FragmentExtensionKt$search$3", f = "FragmentExtension.kt", i = {}, l = {Sdk.SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE}, m = "invokeSuspend", n = {}, nl = {Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE}, s = {}, v = 2)
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $content;
        final /* synthetic */ FragmentActivity $this_search;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(FragmentActivity fragmentActivity, String str, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$this_search = fragmentActivity;
            this.$content = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$this_search, this.$content, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DelayKt.delay(500L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new AnonymousClass1(this.$this_search, this.$content, null), 3, null);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: fast.dic.dict.utils.FragmentExtensionKt$search$3$1, reason: invalid class name */
        /* JADX INFO: compiled from: FragmentExtension.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.utils.FragmentExtensionKt$search$3$1", f = "FragmentExtension.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $content;
            final /* synthetic */ FragmentActivity $this_search;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(FragmentActivity fragmentActivity, String str, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$this_search = fragmentActivity;
                this.$content = str;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.$this_search, this.$content, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                FragmentExtensionKt.search(this.$this_search, this.$content);
                return Unit.INSTANCE;
            }
        }
    }
}
