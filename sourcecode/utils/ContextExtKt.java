package fast.dic.dict.utils;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.util.TypedValue;
import androidx.browser.customtabs.CustomTabColorSchemeParams;
import androidx.browser.customtabs.CustomTabsIntent;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleDestroyedException;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.WithLifecycleStateKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import com.google.firebase.crashlytics.FirebaseCrashlytics;
import fast.dic.dict.R;
import fast.dic.dict.activities.MainActivity;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: compiled from: ContextExt.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000f\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a&\u0010\u0003\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0007b\u0010\b\u0006\u0012\f\b\u0007\u0012\b\b\fJ\u0004\b\b(\b\u001a\u0012\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0005\u001a\n\u0010\r\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u000e\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u000f\u001a\u00020\u0010*\u00020\u0002\u001a\u0014\u0010\u0011\u001a\u00020\n*\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u001a\n\u0010\u0014\u001a\u00020\n*\u00020\u0012\u001a\n\u0010\u0015\u001a\u00020\u0001*\u00020\u0002\u001a\u000e\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0018\u001a\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005\u001a\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005\u001a2\u0010\u001b\u001a\u00020\u0001*\u00020\u00022\f\b\u0001\u0010\u001c\u001a\u00020\u0001:\u0002\b\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010 \u001a\u00020\u0010H\u0007b\u0002\b!\u001a\u0018\u0010\"\u001a\u00020#*\u00020$2\f\b\u0001\u0010%\u001a\u00020\u0001:\u0002\b&\u001a\u0012\u0010'\u001a\u00020\n*\u00020\u00022\u0006\u0010(\u001a\u00020)¨\u0006*"}, d2 = {"getWindowHeight", "", "Landroid/content/Context;", "getDrawableByStringName", "resourceName", "", "Landroid/annotation/SuppressLint;", "value", "DiscouragedApi", "openChromeTab", "", "Landroid/app/Activity;", "url", "getWindowHalfHeight", "getWindowWidth", "isDarkThemeOn", "", "setToolbarTitle", "Landroidx/fragment/app/Fragment;", "title", "requestForNewMenu", "getAlertTheme", "dismissAllDialogs", "manager", "Landroidx/fragment/app/FragmentManager;", "getAndroidVersion", "getAndroidDeviceName", "getColorFromAttr", "attrColor", "Landroidx/annotation/AttrRes;", "typedValue", "Landroid/util/TypedValue;", "resolveRefs", "Landroidx/annotation/ColorInt;", "getRawDimensionInDp", "", "Landroid/content/res/Resources;", "dimenResId", "Landroidx/annotation/DimenRes;", "startActivityWithIntent", "intent", "Landroid/content/Intent;", "app"}, k = 2, mv = {2, 4, 0}, xi = 48)
public final class ContextExtKt {
    public static final int getWindowHeight(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static final int getDrawableByStringName(Context context, String resourceName) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(resourceName, "resourceName");
        return context.getResources().getIdentifier(resourceName, "drawable", context.getPackageName());
    }

    public static final void openChromeTab(Activity activity, String url) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        CustomTabsIntent.Builder builder = new CustomTabsIntent.Builder();
        Activity activity2 = activity;
        CustomTabColorSchemeParams customTabColorSchemeParamsBuild = new CustomTabColorSchemeParams.Builder().setToolbarColor(getColorFromAttr$default(activity2, R.attr.header, null, false, 6, null)).build();
        Intrinsics.checkNotNullExpressionValue(customTabColorSchemeParamsBuild, "build(...)");
        builder.setStartAnimations(activity2, R.anim.slide_in_right, R.anim.slide_out_left);
        builder.setExitAnimations(activity2, R.anim.slide_in_left, R.anim.slide_out_right);
        builder.setDefaultColorSchemeParams(customTabColorSchemeParamsBuild);
        builder.setCloseButtonIcon(BitmapFactory.decodeResource(activity.getResources(), R.drawable.back_icon));
        try {
            Uri uri = Uri.parse(url);
            Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
            builder.build().launchUrl(activity, uri);
        } catch (ActivityNotFoundException e) {
            e.printStackTrace();
            FirebaseCrashlytics.getInstance().log("openChromeTab: no activity to handle VIEW for " + url);
        }
    }

    public static final int getWindowHalfHeight(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return context.getResources().getDisplayMetrics().heightPixels / 2;
    }

    public static final int getWindowWidth(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static final boolean isDarkThemeOn(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    /* JADX INFO: renamed from: fast.dic.dict.utils.ContextExtKt$setToolbarTitle$1, reason: invalid class name */
    /* JADX INFO: compiled from: ContextExt.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.utils.ContextExtKt$setToolbarTitle$1", f = "ContextExt.kt", i = {0, 0, 0, 0, 0}, l = {188}, m = "invokeSuspend", n = {"$this$withStarted$iv", "$this$withStateAtLeastUnchecked$iv$iv", "state$iv$iv", "lifecycleDispatcher$iv$iv", "dispatchNeeded$iv$iv"}, nl = {180}, s = {"L$0", "L$1", "L$2", "L$3", "Z$0"}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Fragment $this_setToolbarTitle;
        final /* synthetic */ String $title;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Fragment fragment, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$this_setToolbarTitle = fragment;
            this.$title = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$this_setToolbarTitle, this.$title, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:33:0x009e  */
        /* JADX WARN: Code duplicated, block: B:35:0x00d1 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            SavedStateHandle savedStateHandle;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                LifecycleOwner viewLifecycleOwner = this.$this_setToolbarTitle.getViewLifecycleOwner();
                Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
                final Fragment fragment = this.$this_setToolbarTitle;
                final String str = this.$title;
                Lifecycle lifecycle = viewLifecycleOwner.get$lifecycle();
                Lifecycle.State state = Lifecycle.State.STARTED;
                MainCoroutineDispatcher immediate = Dispatchers.getMain().getImmediate();
                boolean zIsDispatchNeeded = immediate.isDispatchNeeded(getContext());
                if (!zIsDispatchNeeded) {
                    if (lifecycle.getState() == Lifecycle.State.DESTROYED) {
                        throw new LifecycleDestroyedException();
                    }
                    if (lifecycle.getState().compareTo(state) >= 0) {
                        try {
                            NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(fragment).getCurrentBackStackEntry();
                            if (currentBackStackEntry != null && (savedStateHandle = currentBackStackEntry.getSavedStateHandle()) != null) {
                                savedStateHandle.set("toolbarTitle", str == null ? "" : str);
                            }
                        } catch (Exception unused) {
                            FragmentActivity activity = fragment.getActivity();
                            MainActivity mainActivity = activity instanceof MainActivity ? (MainActivity) activity : null;
                            if (mainActivity != null) {
                                mainActivity.updateTitle(str);
                            }
                        }
                        Unit unit = Unit.INSTANCE;
                    } else {
                        this.L$0 = SpillingKt.nullOutSpilledVariable(viewLifecycleOwner);
                        this.L$1 = SpillingKt.nullOutSpilledVariable(lifecycle);
                        this.L$2 = SpillingKt.nullOutSpilledVariable(state);
                        this.L$3 = SpillingKt.nullOutSpilledVariable(immediate);
                        this.Z$0 = zIsDispatchNeeded;
                        this.label = 1;
                        if (WithLifecycleStateKt.suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, immediate, new Function0<Unit>() { // from class: fast.dic.dict.utils.ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1
                            @Override // kotlin.jvm.functions.Function0
                            public final Unit invoke() {
                                SavedStateHandle savedStateHandle2;
                                try {
                                    NavBackStackEntry currentBackStackEntry2 = FragmentKt.findNavController(fragment).getCurrentBackStackEntry();
                                    if (currentBackStackEntry2 != null && (savedStateHandle2 = currentBackStackEntry2.getSavedStateHandle()) != null) {
                                        String str2 = str;
                                        if (str2 == null) {
                                            str2 = "";
                                        }
                                        savedStateHandle2.set("toolbarTitle", str2);
                                    }
                                } catch (Exception unused2) {
                                    FragmentActivity activity2 = fragment.getActivity();
                                    MainActivity mainActivity2 = activity2 instanceof MainActivity ? (MainActivity) activity2 : null;
                                    if (mainActivity2 != null) {
                                        mainActivity2.updateTitle(str);
                                    }
                                }
                                return Unit.INSTANCE;
                            }
                        }, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                } else {
                    this.L$0 = SpillingKt.nullOutSpilledVariable(viewLifecycleOwner);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(lifecycle);
                    this.L$2 = SpillingKt.nullOutSpilledVariable(state);
                    this.L$3 = SpillingKt.nullOutSpilledVariable(immediate);
                    this.Z$0 = zIsDispatchNeeded;
                    this.label = 1;
                    if (WithLifecycleStateKt.suspendWithStateAtLeastUnchecked(lifecycle, state, zIsDispatchNeeded, immediate, new Function0<Unit>() { // from class: fast.dic.dict.utils.ContextExtKt$setToolbarTitle$1$invokeSuspend$$inlined$withStarted$1
                        @Override // kotlin.jvm.functions.Function0
                        public final Unit invoke() {
                            SavedStateHandle savedStateHandle2;
                            try {
                                NavBackStackEntry currentBackStackEntry2 = FragmentKt.findNavController(fragment).getCurrentBackStackEntry();
                                if (currentBackStackEntry2 != null && (savedStateHandle2 = currentBackStackEntry2.getSavedStateHandle()) != null) {
                                    String str2 = str;
                                    if (str2 == null) {
                                        str2 = "";
                                    }
                                    savedStateHandle2.set("toolbarTitle", str2);
                                }
                            } catch (Exception unused2) {
                                FragmentActivity activity2 = fragment.getActivity();
                                MainActivity mainActivity2 = activity2 instanceof MainActivity ? (MainActivity) activity2 : null;
                                if (mainActivity2 != null) {
                                    mainActivity2.updateTitle(str);
                                }
                            }
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public static final void setToolbarTitle(Fragment fragment, String str) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        LifecycleOwner viewLifecycleOwner = fragment.getViewLifecycleOwner();
        Intrinsics.checkNotNullExpressionValue(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(viewLifecycleOwner), null, null, new AnonymousClass1(fragment, str, null), 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void requestForNewMenu(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        if (fragment instanceof MenuProvider) {
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            FragmentActivity fragmentActivity = fragmentActivityRequireActivity;
            fragmentActivity.invalidateMenu();
            MenuProvider menuProvider = (MenuProvider) fragment;
            fragmentActivity.removeMenuProvider(menuProvider);
            fragmentActivity.addMenuProvider(menuProvider, fragment.getViewLifecycleOwner());
        }
    }

    public static final int getAlertTheme(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        return isDarkThemeOn(context) ? android.R.style.Theme.DeviceDefault.Dialog.NoActionBar : android.R.style.Theme.DeviceDefault.Light.Dialog.NoActionBar;
    }

    public static final void dismissAllDialogs(FragmentManager manager) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        List<Fragment> fragments = manager.getFragments();
        Intrinsics.checkNotNullExpressionValue(fragments, "getFragments(...)");
        for (Fragment fragment : fragments) {
            if (fragment instanceof DialogFragment) {
                ((DialogFragment) fragment).dismiss();
            }
        }
    }

    public static final String getAndroidVersion() {
        try {
            return Build.VERSION.RELEASE;
        } catch (ActivityNotFoundException unused) {
            return "";
        }
    }

    public static final String getAndroidDeviceName() {
        try {
            return Build.MODEL;
        } catch (ActivityNotFoundException unused) {
            return "";
        }
    }

    public static /* synthetic */ int getColorFromAttr$default(Context context, int i, TypedValue typedValue, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            typedValue = new TypedValue();
        }
        if ((i2 & 4) != 0) {
            z = true;
        }
        return getColorFromAttr(context, i, typedValue, z);
    }

    public static final int getColorFromAttr(Context context, int i, TypedValue typedValue, boolean z) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(typedValue, "typedValue");
        context.getTheme().resolveAttribute(i, typedValue, z);
        return typedValue.data;
    }

    public static final float getRawDimensionInDp(Resources resources, int i) {
        Intrinsics.checkNotNullParameter(resources, "<this>");
        TypedValue typedValue = new TypedValue();
        resources.getValue(i, typedValue, true);
        return TypedValue.complexToFloat(typedValue.data);
    }

    public static final void startActivityWithIntent(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            context.startActivity(intent);
        } catch (Exception unused) {
            FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
            String string = context.getString(R.string.application_not_found);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            fDAlertManger.showErrorMessageAlert(string, context);
        }
    }
}
